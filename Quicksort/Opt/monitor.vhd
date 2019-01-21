------------------------------------------------------------------------------------
-- Author: Shrinidhi Udupi (udupi@eit.uni-kl.de) 
-- Date  : 17-01-2019
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.monitor_pkg.ALL;
entity monitor is
port(
	ap_clk : IN STD_LOGIC;
	ap_rst : IN STD_LOGIC;
	tmp_fu_191_p2 , tmp_i_3_fu_197_p2, tmp_left_is_right_minus_1, tmp_4_fu_252_p2,
	tmp_7_fu_264_p2 , tmp_3_fu_320_p2 , tmp_1_fu_297_p2, tmp_6_fu_326_p2 , tmp_9_fu_330_p2 , tmp_i_i_fu_340_p2 : IN STD_LOGIC;
	ap_cs_fsm: std_logic_vector(3 downto 0);
	op_timepoint: BUFFER timepoint;
	op_property : BUFFER PROPERTY
);
end monitor;

architecture behav of monitor is
signal pre_op_property: 		PROPERTY;
signal pre_op_timepoint: 	timepoint;
signal pre_op_property_s,op_property_s : 	std_logic_vector(3 downto 0);
signal pre_op_timepoint_s,op_timepoint_s: 	std_logic_vector(1 downto 0);
signal enable: enable_array;
begin

-- enable <=(others => '1');
enable<=not(LUT(PROPERTY'POS (op_property),timepoint'POS (op_timepoint)));
process(ap_clk,ap_rst)
begin

	


if ap_rst = '1' then
	pre_op_property_s <= "0000";
	pre_op_timepoint_s   <= "00";
elsif (rising_edge(ap_clk)) then
    if(enable(16+2)='1') then
	pre_op_property_s(0) <= op_property_s(0);
    end if;
    if(enable(17+2)='1') then
	pre_op_property_s(1) <= op_property_s(1);
    end if;
    if(enable(18+2)='1') then
	pre_op_property_s(2) <= op_property_s(2);
    end if;
    if(enable(19+2)='1') then
	pre_op_property_s(3) <= op_property_s(3);
    end if;
    if(enable(20+2)='1') then
	pre_op_timepoint_s(0) <= op_timepoint_s(0);
    end if;
    if(enable(21+2)='1') then
	pre_op_timepoint_s(1) <= op_timepoint_s(1);
    end if;	   
end if;
end process;

pre_op_property<= PROPERTY'val(to_integer(unsigned(pre_op_property_s)));
pre_op_timepoint<=timepoint'val(to_integer(unsigned(pre_op_timepoint_s)));
op_property_s <= std_logic_vector(to_unsigned(PROPERTY'POS(op_property),4));
op_timepoint_s<= std_logic_vector(to_unsigned(timepoint'POS(op_timepoint),2));

process(ap_rst,pre_op_property,pre_op_timepoint, ap_cs_fsm, tmp_fu_191_p2 , tmp_1_fu_297_p2,  tmp_i_3_fu_197_p2, tmp_left_is_right_minus_1, tmp_4_fu_252_p2, tmp_7_fu_264_p2 , tmp_3_fu_320_p2 , tmp_6_fu_326_p2 , tmp_9_fu_330_p2 , tmp_i_i_fu_340_p2 )
begin
	if ap_rst= '1' then
		op_property <= reset_p;
		op_timepoint <= 0;
	else
		if(is_operation_end(pre_op_property,pre_op_timepoint)) then
		
				
				if (ap_cs_fsm= "0010") then 
					if    tmp_fu_191_p2 = '0' and  tmp_i_3_fu_197_p2 = '1' then
						op_property <= done_p;
					elsif tmp_fu_191_p2 = '0' and  tmp_i_3_fu_197_p2 = '0' then
						op_property <= subarray_done_p;
					else
						op_property <= start_subarray_p;
					end if;

				elsif (ap_cs_fsm= "0100") then
					   if  tmp_left_is_right_minus_1 = '1' then
						op_property <= w_case_p;
					elsif    tmp_left_is_right_minus_1 = '0' and tmp_4_fu_252_p2 = '1' and tmp_7_fu_264_p2 = '1' then
						op_property <= search_pivot_p;
					elsif tmp_left_is_right_minus_1 = '0' and tmp_4_fu_252_p2 = '1' and tmp_7_fu_264_p2 = '0' then
						op_property <= pivot_found_p;
					else 
						op_property <= undefined_p;
					end if;
				elsif (ap_cs_fsm= "1000") then
					if 	tmp_1_fu_297_p2 = '1' then
						op_property <= increment_i_p;
					else  	op_property <= store_data_i_p;
					end if;
				elsif (ap_cs_fsm= "1010") then
					if      tmp_3_fu_320_p2 = '1' then
						op_property <= decrement_j_p;
					elsif   tmp_6_fu_326_p2 = '1' and tmp_9_fu_330_p2 = '1' then
						op_property <= compared_equal_p;
					elsif    tmp_6_fu_326_p2 = '1' and tmp_9_fu_330_p2 = '0' then
						op_property <= swap_p;
					elsif  tmp_6_fu_326_p2 = '0' and tmp_i_i_fu_340_p2 = '0' then
						op_property <= pivot_done_p;
					elsif tmp_6_fu_326_p2 = '0' and tmp_i_i_fu_340_p2 = '1' then
						op_property <= pivot_overflow_p;
					else
						op_property <= undefined_p;
					end if;

				else
						op_property <= undefined_p;
				end if;
				op_timepoint <= 0;
		else
			    op_timepoint <=  pre_op_timepoint + 1;

		end if;
	end if;
end process;
end architecture;
