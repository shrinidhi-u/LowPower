------------------------------------------------------------------------------------
-- Author: Shrinidhi Udupi (udupi@eit.uni-kl.de)
-- Date  : 17-01-2019
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.dma_types.all;
use work.monitor_pkg.all;

entity monitor is
generic (MAX_WAIT_RDY_C_mon: integer := 15;
      addr_msb_g :         address_range := 31;
      data_msb_g :         address_range := 31;
    command_addr_g:      std_logic_vector(address_range); -- addr of command_sig word
    src_addr_addr_g:     std_logic_vector(address_range); -- addr of start addr for read
    tgt_addr_addr_g:     std_logic_vector(address_range); -- addr of start addr for write
    transfer_len_addr_g: std_logic_vector(address_range); -- addr of length
    parity_addr_g:       std_logic_vector(address_range)  );
port( 
	clk, rst : std_logic;
	op_property: out op_prop;
	op_timecode: out op_tc;
	addr_i:         in  std_logic_vector(addr_msb_g downto 0);
	rdy_i,grant_i,read_access_i,write_access_i:std_logic;
	data_path_i_command:std_logic_vector(1 downto 0);
	transfer_len: in std_logic_vector(data_msb_g downto 0)
);	

end monitor;

architecture behav of monitor is
signal pre_op_property		    : OP_PROP ;
signal pre_op_timecode		    : OP_TC;
signal wait_counter		    : natural range 0 to MAX_WAIT_RDY_C_mon;
signal wait_complete		    : std_logic;
signal op_property_sig : op_prop;
signal op_timecode_sig : op_tc;
signal enable_wc: std_logic;
signal enable_pre_op: std_logic_vector(0 to 3);
signal enable_pre_ot:std_logic_vector(0 to 1);
 signal pre_op_timepoint_s : std_logic_vector(1 downto 0);
 signal pre_op_property_s : std_logic_vector(3 downto 0);
 signal op_timepoint_s : std_logic_vector(1 downto 0);
 signal op_property_s : std_logic_vector(3 downto 0);
subtype enable_array is std_logic_vector( 0 to 25 );
signal enable : enable_array;



begin

op_timepoint_s <= std_logic_vector(to_unsigned(op_tc'pos(op_timecode_sig),2));
op_property_s <= std_logic_vector(to_unsigned(op_prop'pos(op_property_sig),4));
    process(op_property_s,op_timepoint_s)
    begin
    --enable <=(others=>'1');
    enable<=not(LUT(to_integer(unsigned(op_property_s)),to_integer(unsigned(op_timepoint_s))));

    end process;
    enable_pre_op(0 to 3)<=enable(16 to 19);
    enable_pre_ot(0 to 1)<=enable(20 to 21);
    enable_wc<=enable(22);
	op_property <= op_property_sig;
	op_timecode <= op_timecode_sig;

	process(rdy_i,wait_counter,rst,pre_op_property)
	begin
		if rst='0' then
			wait_complete<='1';
		elsif(rdy_i='0') then

		     if(wait_counter = MAX_WAIT_RDY_C_mon or (not(pre_op_property=check_parity_p0 or pre_op_property=check_parity_p1 or pre_op_property=transfer_p0 or pre_op_property=transfer_p1))) then
			wait_complete <= '1';
		     else
			wait_complete <= '0';
		     end if;
		else

		  wait_complete <= '1';
		end if;
	end process;

	process(clk,rst)
	begin
	    if rst ='0' then
	      	pre_op_property_s<= (others=>'0');--nop_p;
		pre_op_timepoint_s <=(others=>'0');-- zero;
		wait_counter <= 0;
	    elsif(rising_edge(clk)) then
		if(enable_pre_op(0)='1')then
		    pre_op_property_s(0) <= op_property_s(0);
		end if;
		if(enable_pre_op(1)='1')then
		    pre_op_property_s(1) <= op_property_s(1);
		end if;
		if(enable_pre_op(2)='1')then
		    pre_op_property_s(2) <= op_property_s(2);
		end if;
		if(enable_pre_op(3)='1')then
		    pre_op_property_s(3) <= op_property_s(3);
		end if;
		if(enable_pre_ot(0)='1')then
		    pre_op_timepoint_s(0) <= op_timepoint_s(0);
		end if;
		if(enable_pre_ot(1)='1')then
		    pre_op_timepoint_s(1) <= op_timepoint_s(1);
		end if;

		if(enable_wc='1')then
			if(rdy_i='0' and not(op_timepoint_s= "00")) then
				  wait_counter 	<= wait_counter + 1;
				else
				
				  wait_counter 	<= 0;
			end if;
		end if;
	    end if;
	end process;
pre_op_property <= op_prop'val(to_integer(unsigned(pre_op_property_s)));
pre_op_timecode <= op_tc'val(to_integer(unsigned(pre_op_timepoint_s)));
	process(rst,pre_op_property,pre_op_timecode,wait_complete,read_access_i,write_access_i,grant_i,data_path_i_command)
	begin 
		if(rst='0') then
			op_property_sig<=nop_p;
			op_timecode_sig<= zero;
		else

			if(end_property(pre_op_property,pre_op_timecode,wait_complete)='1') then

				if(read_access_i='1') then
					op_property_sig<=read_register_p;
				elsif(write_access_i='1') then
					if addr_i = src_addr_addr_g then
					    op_property_sig<=write_register_p0;
					elsif addr_i = tgt_addr_addr_g then
					    op_property_sig<=write_register_p1;
					elsif addr_i = transfer_len_addr_g then
					    op_property_sig<=write_register_p2;
					elsif addr_i = command_addr_g then
					    op_property_sig<=write_register_p3;
					elsif addr_i =parity_addr_g then
					    op_property_sig<=write_register_p4;
					else
					    op_property_sig<=write_register_n;
					end if;
					
				elsif(grant_i='1') then
					if(data_path_i_command="10") then
					    if(unsigned(transfer_len) > 1) then
						op_property_sig<= check_parity_p0;
					    else
						op_property_sig<= check_parity_p1;
					    end if;
					elsif(data_path_i_command(0)='1')then
						if(unsigned(transfer_len) > 1) then
						    op_property_sig<= transfer_p0;
						else
						    op_property_sig<= transfer_p1;
						end if;
					else
						op_property_sig<= nop_p;
					end if;
				else
					op_property_sig<= nop_p;
				end if;
				op_timecode_sig <= zero;
			else
				-- New timepoint
				-- Based on property and previous timecode and counter set next timecode
				op_timecode_sig <= next_timecode(pre_op_property, pre_op_timecode, wait_complete);
			end if;
		end if;
	end process;

end architecture;
