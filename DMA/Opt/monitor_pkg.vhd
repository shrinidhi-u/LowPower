------------------------------------------------------------------------------------
-- Author: Shrinidhi Udupi (udupi@eit.uni-kl.de)
-- Date  : 17-01-2019
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
package monitor_pkg is
type STATE is (ONE,TWO);

type OP_PROP is (
		
		 nop_p,
		check_parity_p0,check_parity_p1,
		read_register_p,
		transfer_p0,transfer_p1,
		write_register_p0,write_register_p1,write_register_p2,write_register_p3,write_register_p4,write_register_n);
--Note: The different versions of write_register_px represent the write to 5 different registers.

type op_tc is 
(
zero,
t_read_ack_tp,
t_write_req_tp

);

type array_tc is array(0 to 2) of op_tc;
type CSM_State is ( idle_s );

function end_property
( pre_op_property: op_prop;
  pre_op_timecode: op_tc;
  wait_complete	 : std_ulogic
)
return std_ulogic;

function next_timecode
( pre_op_property: op_prop;
  pre_op_timecode: op_tc;
  wait_complete	 : std_ulogic
)
return op_tc;

subtype enable_array is std_logic_vector( 0 to 25 );
type LUTType is array(  0 to 11,   0 to 2) of enable_array;
constant LUT : LUTType :=(

	 ( "00111111111111110000001111" ,--nop 0
		"00000000000000000000000000" ,--nop 1
		"00000000000000000000000000" --nop 2
	 ) ,

	 ( "00001001111111110010011111" ,--check_parity0 0
		"00001111111100001101001111" ,--check_parity0 1
		"00000000000000000000000000" --check_parity0 2
	 ) ,

	 ( "00001101111111110000011111" ,--check_parity1 0
		"11001111011101111101011111" ,--check_parity1 1
		"00000000000000000000000000" --check_parity1 2
	 ) ,

	 ( "00111111110011110000001111" ,--read_register 0
		"00000000000000000000000000" ,--read_register 1
		"00000000000000000000000000" --read_register 2
	 ) ,

	 ( "00001101111111111000001111" ,--transfer0 0
		"11000001101001111101001111" ,--transfer0 1
		"11110011111110001101001111" --transfer0 2
	 ) ,

	 ( "00001101111111111000001111" ,--transfer1 0
		"11000001101001111101001111" ,--transfer1 1
		"11110010011111111101001111" --transfer1 2
	 ) ,

	 ( "00111111111110111000001111" ,--write_register0 0
		"00000000000000000000000000" ,--write_register0 1
		"00000000000000000000000000" --write_register0 2
	 ) ,

	 ( "00111111111111011000001111" ,--write_register1 0
		"00000000000000000000000000" ,--write_register1 1
		"00000000000000000000000000" --write_register1 2
	 ) ,

	 ( "00111111111111101100001111" ,--write_register2 0
		"00000000000000000000000000" ,--write_register2 1
		"00000000000000000000000000" --write_register2 2
	 ) ,

	 ( "00111110011111111100001111" ,--write_register3 0
		"00000000000000000000000000" ,--write_register3 1
		"00000000000000000000000000" --write_register3 2
	 ) ,

	 ( "00111111111101111100001111" ,--write_register4 0
		"00000000000000000000000000" ,--write_register4 1
		"00000000000000000000000000" --write_register4 2
	 ) ,

	 ( "00111111111111111100001111" ,--write_register_n 0
		"00000000000000000000000000" ,--write_register_n 1
		"00000000000000000000000000" --write_register_n 2
	 ) 
);



end monitor_pkg;


package body monitor_pkg is

	function end_property
	( pre_op_property: op_prop;
	  pre_op_timecode: op_tc;
	  wait_complete	 : std_ulogic
	)
	return std_ulogic is
	variable pc : op_prop := pre_op_property;
	variable tc : op_tc := pre_op_timecode;
	variable wc : std_ulogic:= wait_complete;
	begin

--	if(wc='0') then
		--return '0';
	--else
	if (  (pc= nop_p) 
	      or ((pc= check_parity_p0 or pc= check_parity_p1 ) and  tc= t_read_ack_tp)
	      or (pc= read_register_p)
	      or ((pc= transfer_p0 or pc = transfer_p1)  and ( tc=t_write_req_tp))
	      or (pc= write_register_p0 ) or (pc= write_register_p1 ) or (pc= write_register_p2 )or (pc= write_register_p3 )or (pc= write_register_p4 )or (pc= write_register_n )
	    ) then
		return '1';
	else
		return '0';
	--	end if;
	end if;

	end end_property;
---------------------------------------------------------------------------------------------

	function next_timecode
	( pre_op_property: op_prop;
	  pre_op_timecode: op_tc;
	  wait_complete	 : std_ulogic
	)
	return op_tc is
	variable pc : op_prop := pre_op_property;
	variable tc : op_tc := pre_op_timecode;
	variable arr: array_tc:=(zero,
				t_read_ack_tp,
				t_write_req_tp);
	begin

	if(wait_complete = '0') then 
		return tc;
	elsif (pc = check_parity_p0 or pc =check_parity_p1 or pc=transfer_p0 or pc=transfer_p1) then
			return arr(op_tc'POS(tc) +1) ;
	else return zero;
	end if;
		
		
	end next_timecode;


---------------------------------------------------------------------------------------------

end monitor_pkg;
