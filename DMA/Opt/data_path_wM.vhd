--
-- See LICENSE.txt for license details
--
------------------------------------------------------------------------------------
-- Original version modified by Shrinidhi Udupi (udupi@eit.uni-kl.de) 
-- on 17-01-2019
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.dma_types.all;
use work.monitor_pkg.all;
entity data_path is
  generic(
    addr_msb_g:          address_range;                   -- address width - 1
    data_msb_g:          data_range;                      -- data width - 1
    command_addr_g:      std_logic_vector(address_range); -- addr of command word
    src_addr_addr_g:     std_logic_vector(address_range); -- addr of start addr for read
    tgt_addr_addr_g:     std_logic_vector(address_range); -- addr of start addr for write
    transfer_len_addr_g: std_logic_vector(address_range); -- addr of length
    parity_addr_g:       std_logic_vector(address_range);    
    chk_parity_g:        integer);
  port(
    clk:     in std_logic;
    reset_n: in std_logic;

    data_i:      in std_logic_vector(data_msb_g downto 0);
    addr_i:      in std_logic_vector(addr_msb_g downto 0);

    data_o:      out std_logic_vector(data_msb_g downto 0);
    addr_o:      out std_logic_vector(addr_msb_g downto 0);
        
    -- from/to ctrl:
    command_s:        out std_logic_vector(1 downto 0); 
    last_access_s:    out std_logic;
    update_addr_s:    in  std_logic;
    update_data_s:    in  std_logic;
    address_select_s: in  std_logic;
    data_select_s:    in  std_logic;
    reset_command_s:  in  std_logic;
    read_reg_s:       in  std_logic;      -- read request
    write_reg_s:      in  std_logic;       -- write request
    transfer_len: out std_logic_vector(data_msb_g downto 0);
    op_property:        in std_logic_vector(3 downto 0);
    op_timepoint:       in std_logic_vector(1 downto 0)
);
end data_path;

architecture rtl of data_path is

constant	 nop_c 			: std_logic_vector(2 downto 0) :=	 "000";
constant	 check_parity_c 	: std_logic_vector(2 downto 0) :=	 "001";
constant	 read_register_c	: std_logic_vector(2 downto 0) :=	 "010";
constant	 transfer_c		: std_logic_vector(2 downto 0) :=	 "011";
constant	 write_register_c	: std_logic_vector(2 downto 0) :=	 "100";
constant	 zero_c 			: std_logic_vector(1 downto 0) :=	 "00";
constant	 t_read_ack_c		: std_logic_vector(1 downto 0) :=	 "01";
constant	 t_write_req_c		: std_logic_vector(1 downto 0) :=	 "10";



  signal src_addr, tgt_addr,transfer_len_sig:  std_logic_vector(data_msb_g downto 0); 
  signal data, data_s:  std_logic_vector(data_msb_g downto 0);
  signal command:       std_logic_vector(1 downto 0);
  signal data_select_del: std_logic;

  signal parity_result: std_logic_vector(data_msb_g downto 0);


  signal ENABLE_ADDR,ENABLE_CMD0,ENABLE_CMD1,ENABLE_DAT,ENABLE_DATS,ENABLE_PAR,ENABLE_SRC,ENABLE_TRF,ENABLE_TGT,ENABLE_DAT_SEL: std_logic;
signal enable : enable_array;
begin
process(op_property,op_timepoint)
begin

enable<=not(LUT(to_integer(unsigned(op_property)),to_integer(unsigned(op_timepoint))));

end process;

    ENABLE_ADDR <= enable(6);
    ENABLE_DAT  <= enable(9);
    ENABLE_DATS <= enable(10);
    ENABLE_PAR  <= enable(12);
    ENABLE_SRC  <= enable(13);
    ENABLE_TGT  <= enable(14);
    ENABLE_TRF  <= enable(15);
    ENABLE_CMD0 <= enable(7);
    ENABLE_CMD1 <= enable(8);
    ENABLE_DAT_SEL <= enable(11);
  
    transfer_len <=transfer_len_sig;

  -- write   command: from data_i
  process(clk, reset_n)
  begin
      if reset_n = '0' then
          command <= "00";
      elsif clk'event and clk = '1' then
	if ENABLE_CMD0 = '1' then
          if reset_command_s = '1' then
              command(0) <= '0';
          elsif write_reg_s = '1' and (addr_i = command_addr_g(addr_msb_g downto 0)) then
              command(0) <= data_i(0);
          end if;
	end if;
	if ENABLE_CMD1 = '1' then
          if reset_command_s = '1' then
              command(1) <= '0';
          elsif write_reg_s = '1' and (addr_i = command_addr_g(addr_msb_g downto 0)) then
              command(1) <= data_i(1);
          end if;
	end if;
      end if;
  end process;

  command_s <= command;

  -- update src_addr
  process(clk, reset_n)
    variable data_pesrc_addr, offset, num_bit, upper_bound: integer;
    variable offset_long: std_logic_vector(address_range);
  begin
      if reset_n = '0' then
          src_addr <= (others => '0');
      elsif clk'event and clk = '1' then
	if ENABLE_SRC = '1' then
          if update_addr_s ='1' then
              src_addr <= src_addr + 1;
          elsif write_reg_s = '1' and (addr_i = src_addr_addr_g(addr_msb_g downto 0)) then
              src_addr <= data_i;
          end if;
	end if;
      end if;
  end process;

  -- update tgt_addr
  process(clk, reset_n)
    variable data_pesrc_addr, offset, num_bit, upper_bound: integer;
    variable offset_long: std_logic_vector(address_range);
  begin
      if reset_n = '0' then
          tgt_addr <= (others => '0');
      elsif clk'event and clk = '1' then
	if ENABLE_TGT = '1' then
          if update_addr_s ='1' then
              tgt_addr <= tgt_addr + 1;
          elsif write_reg_s = '1' and (addr_i = tgt_addr_addr_g(addr_msb_g downto 0)) then
              tgt_addr <= data_i;
          end if;
	end if;
      end if;
  end process;

  -- select addr_o (read or write)
  process(clk, reset_n)
  begin
      if reset_n = '0' then
          addr_o <= (others => '0');
      elsif clk'event and clk = '1' then
	if ENABLE_ADDR='1' then
          if address_select_s = '0' then
              addr_o <= src_addr(addr_msb_g downto 0);    
          else
              addr_o <= tgt_addr(addr_msb_g downto 0);
          end if;
	end if;
      end if;
  end process;

  -- transfer_len_sig
  process(clk, reset_n)
    variable data_pesrc_addr, offset, num_bit, upper_bound: integer;
    variable offset_long: std_logic_vector(address_range);
  begin
      if reset_n = '0' then
          transfer_len_sig <= (others => '0');
      elsif clk'event and clk = '1' then
	if ENABLE_TRF = '1' then
          if update_addr_s ='1' then
              transfer_len_sig <= transfer_len_sig - 1;
          elsif write_reg_s = '1' and (addr_i = transfer_len_addr_g(addr_msb_g downto 0)) then
              transfer_len_sig <= data_i;
          end if;
	end if;
      end if;
  end process;

  last_access_s <= '1' when transfer_len_sig(data_msb_g downto 1) = 0 else '0'; 

  -- transfer
  process(clk, reset_n)
  begin
      if reset_n = '0' then
          data <= (others => '0');
           data_select_del <= '0';
      elsif clk'event and clk = '1' then
	if ENABLE_DAT = '1' then
          if update_data_s = '1' then
              data <= data_i;
          end if;
	end if;
	if ENABLE_DAT_SEL = '1' then
          data_select_del <= data_select_s;
	end if;
      end if;
  end process;

  data_o <= data_s when data_select_del = '1' else data; --OKAY

  -- read registers: (compute read data: data_s)
  process(clk, reset_n)
  begin
    if reset_n = '0' then 
          data_s <= (others => '0');
    elsif clk'event and clk = '1' then 
	if ENABLE_DATS = '1' then
	    if read_reg_s = '1' then
		if addr_i = command_addr_g(addr_msb_g downto 0) then
		    data_s(data_msb_g downto 2) <= (others => '0');
		    data_s(1 downto 0) <= command;
		elsif addr_i = src_addr_addr_g(addr_msb_g downto 0) then
		    data_s <= src_addr;
		elsif addr_i = tgt_addr_addr_g(addr_msb_g downto 0) then
		    data_s <= tgt_addr;
		elsif addr_i = transfer_len_addr_g(addr_msb_g downto 0) then
		    data_s <= transfer_len_sig;
		elsif chk_parity_g /= 0 and
			addr_i = parity_addr_g(addr_msb_g downto 0) then
		    data_s <= parity_result;
		else
		    data_s <= (others => '0');
		end if;
	    end if;
	end if;
    end if;
  end process;

  -- no extra logic
  gen_nothing: if chk_parity_g <= 0 or chk_parity_g > 2 generate
      parity_result <= (others => '0');
  end generate;

  -- extra logic: checksum
  gen_chksum: if chk_parity_g = 1 generate 
  
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            parity_result <= (others => '0');
        elsif clk'event and clk = '1' then
	   if ENABLE_PAR ='1' then
            if update_data_s = '1' and command(1) = '1' then
                parity_result <= parity_result xor data_i;
            elsif write_reg_s = '1' and (addr_i = parity_addr_g(addr_msb_g downto 0)) then
                parity_result <= data_i;
            end if;
	   end if;
        end if;
    end process;

  end generate;

  -- extra logic: maximum
  gen_max: if chk_parity_g = 2 generate
  
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            parity_result <= (others => '0');
        elsif clk'event and clk = '1' then
	    if ENABLE_PAR='1' then
		if update_data_s = '1' and command(1) = '1' then
		    if parity_result < data_i then
			parity_result <= data_i;
		    end if;
		elsif write_reg_s = '1' and (addr_i = parity_addr_g(addr_msb_g downto 0)) then
		    parity_result <= data_i;
		end if;
	    end if;
        end if;
    end process;

  end generate;



end rtl;
