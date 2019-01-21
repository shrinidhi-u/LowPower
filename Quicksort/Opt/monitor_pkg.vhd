------------------------------------------------------------------------------------
-- Author: Shrinidhi Udupi (udupi@eit.uni-kl.de) 
-- Date  : 17-01-2019
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
package monitor_pkg is
  
  type PROPERTY is (reset_p,
			done_p, subarray_done_p,start_subarray_p,
			search_pivot_p,pivot_found_p,w_case_p,
			increment_i_p,store_data_i_p,
			compared_equal_p,swap_p,decrement_j_p,
			pivot_done_p,pivot_overflow_p, undefined_p);
   type timepoint is range  0 to 3;

  type CSM_STATE is (START_STATE, PIVOT_STATE, GET_I_STATE, GET_J_STATE, UNDEFINED_STATE );

  function ending_state (op : PROPERTY) return CSM_STATE;
  function is_operation_end (op : PROPERTY; tp : timepoint) return boolean;
subtype enable_array is std_logic_vector( 0 to 27 );

type LUTType is array(  0 to 13,   0 to 3) of enable_array;
constant LUT : LUTType :=(

	 ( "0000010000000000000000000000" ,--reset 0
		"0000000000000000000000000000" ,--reset 1
		"0000000000000000000000000000" ,--reset 2
		"0000000000000000000000000000" --reset 3
	 ) ,

	 ( "0011111111111111110000001111" ,--done 0
		"0000111011111111010000001111" ,--done 1
		"0000000000000000000000000000" ,--done 2
		"0000000000000000000000000000" --done 3
	 ) ,

	 ( "0000111111111111110000001011" ,--subarray_done 0
		"0000111011111111010000001111" ,--subarray_done 1
		"0000000000000000000000000000" ,--subarray_done 2
		"0000000000000000000000000000" --subarray_done 3
	 ) ,

	 ( "1000101101101111110000001101" ,--start_subarray 0
		"0000000000000000000000000000" ,--start_subarray 1
		"0000000000000000000000000000" ,--start_subarray 2
		"0000000000000000000000000000" --start_subarray 3
	 ) ,

	 ( "0000111111101111110000001111" ,--search_pivot 0
		"0000000000000000000000000000" ,--search_pivot 1
		"0000000000000000000000000000" ,--search_pivot 2
		"0000000000000000000000000000" --search_pivot 3
	 ) ,

	 ( "0011111111111111110000001111" ,--pivot_found 0
		"0011110111111110110000000111" ,--pivot_found 1
		"0001111111011111110000001111" ,--pivot_found 2
		"0000011110110111110000001111" --pivot_found 3
	 ) ,

	 ( "0110111111101111110000001111" ,--w_case 0
		"0000110111111110110000000111" ,--w_case 1
		"0001111111011111110000001111" ,--w_case 2
		"0000011110110111110000001111" --w_case 3
	 ) ,

	 ( "0000111111011111110000001111" ,--increment_i 0
		"0000011110110111110000001111" ,--increment_i 1
		"0000000000000000000000000000" ,--increment_i 2
		"0000000000000000000000000000" --increment_i 3
	 ) ,

	 ( "0111111111111101110000001110" ,--store_data_i 0
		"0000101111111011100000001110" ,--store_data_i 1
		"0000000000000000000000000000" ,--store_data_i 2
		"0000000000000000000000000000" --store_data_i 3
	 ) ,

	 ( "0000110111111110110000001111" ,--compared_equal 0
		"0011111111011111110000001111" ,--compared_equal 1
		"0000111111110111110000001111" ,--compared_equal 2
		"0000000000000000000000000000" --compared_equal 3
	 ) ,

	 ( "0011111111111111110000001111" ,--swap 0
		"0000110111111110110000001111" ,--swap 1
		"0010101111011111110000001111" ,--swap 2
		"0000111111110111110000001111" --swap 3
	 ) ,

	 ( "0011111111111101110000001111" ,--decrement_j 0
		"0000101111111011100000001111" ,--decrement_j 1
		"0000000000000000000000000000" ,--decrement_j 2
		"0000000000000000000000000000" --decrement_j 3
	 ) ,

	 ( "0000101111111111010000001011" ,--pivot_done 0
		"0000000000000000000000000000" ,--pivot_done 1
		"0000000000000000000000000000" ,--pivot_done 2
		"0000000000000000000000000000" --pivot_done 3
	 ) ,

	 ( "0000111111111111110000001111" ,--pivot_overflow 0
		"0000000000000000000000000000" ,--pivot_overflow 1
		"0000000000000000000000000000" ,--pivot_overflow 2
		"0000000000000000000000000000" --pivot_overflow 3
	 ) 
);
end monitor_pkg;



package body monitor_pkg is
  
  function ending_state (op : PROPERTY) return CSM_STATE is
  begin
    case op is
      when reset_p =>                    return START_STATE;
      when done_p  =>		       return START_STATE;
      when subarray_done_p =>	       return START_STATE;
      when start_subarray_p =>	       return PIVOT_STATE;
      when search_pivot_p =>             return PIVOT_STATE;
      when pivot_found_p =>    	       return GET_I_STATE;
      when w_case_p =>               return GET_I_STATE;
      when increment_i_p =>  	       return GET_I_STATE;
      when store_data_i_p=> 	       return GET_J_STATE;
      when compared_equal_p =>	       return GET_I_STATE;
      when swap_p =>      	       return GET_I_STATE;
      when decrement_j_p =>              return GET_J_STATE;
      when pivot_done_p =>               return START_STATE;
      when pivot_overflow_p =>  	       return START_STATE;
      when undefined_p	    =>		return undefined_state;
    end case;
  end ending_state;


  function is_operation_end (op : PROPERTY; tp : timepoint) return boolean is
  begin
    if (op = compared_equal_p and tp = 2 ) 
     or ((op = swap_p or  op= pivot_found_p or op= w_case_p ) and tp=3)
     or ((op = decrement_j_p or op= done_p or op= increment_i_p or op= store_data_i_p or op= subarray_done_p or op= reset_p ) and tp =1)
     or (( op= pivot_done_p or op= pivot_overflow_p or op= search_pivot_p or op= start_subarray_p or op=undefined_p) and tp=0) then
      return true;
    else
      return false;
    end if;
    return false;
  end is_operation_end;



end monitor_pkg;



