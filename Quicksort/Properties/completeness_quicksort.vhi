-- @lang=vhi @ts=8
completeness quicksort is

dependencies:
  always_enable,h_val;

inputs: 
  ap_rst,
  ap_ce,
  left_r,
  right_r,
  data_q0,
  stack_output;


determination_requirements:
  determined(data_ce0), end_offset=-1;
  determined(data_we0), end_offset=-1;
  if data_ce0 then 
    determined(data_address0) ;
  end if ,end_offset=-1;
  if data_ce0 and data_we0 then 
    determined(data_d0) ;
  end if ,end_offset=-1;

  determined(stack_enable), end_offset=-1;
  determined(stack_write), end_offset=-1;

-- LOCAL DETERMINATIONS
  if GET_I_S or GET_J_S then 
    determined(pivot),
    determined(i),
    determined(j);
  end if;

  if GET_J_S then
    determined(data_i);
  end if;

  if PIVOT_S then
    determined(h);
  end if;

--det:	determined(prev(op_property));
--det1:	determined(prev(op_timepoint));
local_determination_requirements:
at right_hook :  determined(stack_count);
at right_hook :  determined(left_reg);
at right_hook :  determined(right_reg);



reset_property: reset;

property_graph:

toSTART   := reset, done, subarray_done, pivot_done, pivot_overflow;
fromSTART := done, subarray_done, start_subarray;
toPIVOT   := start_subarray, search_pivot;
fromPIVOT :=  w_case, pivot_found, search_pivot;
toGET_I   :=  w_case,pivot_found, increment_i, compared_equal, swap;
fromGET_I := store_data_i, increment_i;
toGET_J   := store_data_i, decrement_j;
fromGET_J := pivot_done, pivot_overflow, compared_equal, swap, decrement_j;

toSTART -> fromSTART;
toPIVOT -> fromPIVOT;
toGET_I -> fromGET_I;
toGET_J -> fromGET_J;


end completeness;