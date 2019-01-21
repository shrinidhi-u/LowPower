---------------------------
-- The interface of this module is not well defined.
-- No start condition, no done flag, no idle flag.
-- It will sort the same memory forever. The offsets left and right can be changed, and I assume the content of the memory through the memory interface itself.
-- However, it is never clear when the sort is finished. Changing the memory within a sort will cause unexpected behavior (and sort is always done).

-- Only 32 memory cells are available, address (4 downto 0), still the offset given by input left and right are 32bits wide
-- this also leads to that all registers have to be 32bits wide to store these numbers (including the width of the stack cells)
-- the input offset is also treated as a signed number (using signed comparators), note that the high level description also uses signed integers, but does NOT work for signed offsets.
-- (the if condition (within the for loop) setting the pivot will never be valid)

-- Due to this, if ensuring that left and right is in within the range 0-31 things will work as expected (if disregarding that it doesnt have a clear protocol for start/end).
-- However, no synthesis tool will be able to optimize away all the unused hardware (since it is actually active and part of the description ..just not intended)

-- If the data to be sorted is altered (externally) within a sort (difficult to avoid since no idle flag exists) then i and j may become bigger/smaller than h (see hls)
-- may overflow --> left right may overflow --> negative numbers --> undefined pivot value ...etc.. many non-intended behaviors...
-- (the stack memory shold also not be altered externally but this is expected to be the case)

-- The stack size is now 32, a real proof that this is big enough should also be given. Guess it is big enough for the worst case if offsets are in the range 0-31 (max 32 elements to sort)
-------------------------


--------------------------------
-- the verification is for now done with chip enable always on

-- To do: clearify the memory protocol and the stack protocol better using macros.
-- Add address and data_out for the memories to determiniation requirements under relevant enable condition
-- (are determined in the properties just not yet added to the completeness)

-- Completeness fails at 1 point: pivot is undermined after pivot not found
-- (this shows a real issue in the design and is not a problem with the verification)

---------------------------------


constraint always_enable :=
  ap_ce ;
end constraint;


-- For meaningful functioning of the module the following restrictions on the data are placed
constraint width_restrictions :=
 signed(left_reg) >= 0 and signed(right_reg) >= 0 and signed(data_q0) >= 0 -- Both the array extremities are locations with a positive value (so that multiplying them by a positive value increases the value of the product)
 and signed(shift_left(left_reg,1)) > signed(left_reg) and signed(shift_left(right_reg,1)) > signed(right_reg) -- Multiplying 2 to a positive value can make the product negative if there is an overflow
 and signed(shift_left(data_q0,1)) > signed(data_q0) -- Simliar
 and signed(shift_left(s_a_q0,1)) > signed(s_a_q0) -- The stack should not be initialize
and signed(right_reg)-signed(left_reg)< 32
;
end constraint;

constraint no_reset :=
  not ap_rst;
end constraint;

-- ABSTRACT SIGNAL NAMES
macro enable : bit    := ap_ce; end macro;
macro pivot  : unsigned := pivot_fu_24; end macro;
macro stack_count : numeric := s_tos_1_fu_28; end macro;
macro stack_output : unsigned := s_a_q0; end macro;
macro stack_enable : boolean :=  s_a_ce0; end macro;
macro stack_input : unsigned := s_a_d0; end macro;
macro stack_write : boolean :=  s_a_we0; end macro;
macro stack_address : unsigned :=  s_a_address0; end macro;

macro left_reg : unsigned :=
  if (ap_cs_fsm = ap_st_st1_fsm_1 or ap_cs_fsm = ap_st_st2_fsm_2) then
    i_2_fu_20;
  else
    i_4_reg_411;
  end if;
end macro;
macro right_reg : unsigned :=
  j_2_reg_95;
end macro;
macro h : numeric := (indvar8_reg_108 + left_reg)(31 downto 0); end macro;
macro i : numeric := i_reg_457; end macro;
macro j : numeric :=
if (ap_cs_fsm = ap_st_st6_fsm_6 or ap_cs_fsm = ap_st_st8_fsm_8 or ap_cs_fsm = ap_st_st9_fsm_9) then
  j_1_reg_119;
else
  j_3_reg_484;
end if;
end macro;
macro data_i : unsigned := tmp_11_reg_475; end macro;



macro START_S : boolean :=
  ap_cs_fsm = ap_st_st2_fsm_2;
end macro;

macro PIVOT_S : boolean :=
  ap_cs_fsm = ap_st_st4_fsm_4;
end macro;

macro GET_I_S : boolean :=
  ap_cs_fsm = ap_st_st8_fsm_8;
end macro;

macro GET_J_S : boolean :=
  ap_cs_fsm = ap_st_st10_fsm_10;
end macro;


macro IMPORTANT_S : boolean :=  START_S or PIVOT_S or GET_I_S or GET_J_S; end macro;

assertion mutual_exclusive_abstract_states :=
  if START_S then not PIVOT_S and not GET_I_S and not GET_J_S; end if and
  if PIVOT_S then not START_S and not GET_I_S and not GET_J_S; end if and
  if GET_I_S then not PIVOT_S and not START_S and not GET_J_S; end if and
  if GET_J_S then not PIVOT_S and not GET_I_S and not START_S; end if;
end assertion;


assertion stack_never_overflow :=
  if (ap_cs_fsm > 1) then
    stack_count <= 32;
  end if;
end assertion;





property reset is
dependencies: no_reset, always_enable;
assume:
  reset_sequence;
prove:
  during[t,t+1]: not data_ce0;
  during[t,t+1]: not data_we0;
  during[t,t+1]: not stack_enable;
  during[t,t+1]: not stack_write;
  during[t, t]: not IMPORTANT_S;

  at t+1: left_reg = prev(left_r);
  at t+1: right_reg = prev(right_r);
  at t+1: stack_count = 0;
  at t+1: START_S;

right_hook: t+1;
/*allow_undetermined:
at t: allow_undetermined(det);
at t: allow_undetermined(det1);*/
end property;


property done is
dependencies: no_reset, always_enable;
assume:
  at t: START_S;
  at t: signed(left_reg) >= signed(right_reg);
  at t: stack_count = 0;
  
prove:

  during[t+1, t+1]: not IMPORTANT_S;

  during[t,t+2]: not data_ce0;
  during[t,t+2]: not data_we0;
  during[t,t+2]: not stack_enable;
  during[t,t+2]: not stack_write;
  at t+2: pivot=prev(pivot);
  at t+2: left_reg = prev(left_r);
  at t+2: right_reg = prev(right_r);
  at t+2: stack_count = 0;
  at t+2: START_S;

right_hook: t+2;


end property;


property subarray_done is
dependencies: no_reset, always_enable,h_val;
freeze:
  stack_count_at0 = stack_count @ t,
  stack_output_at1 = stack_output @ t+1,
  right_reg_at0 = right_reg @ t;
assume:
  at t: START_S;
  
  at t: signed(left_reg) >= signed(right_reg);
  at t: stack_count /= 0; 
prove:
  during[t+1, t+1]: not IMPORTANT_S;

  during[t,t+2]: not data_ce0;
  during[t,t+2]: not data_we0;
  during[t,t+2]: not stack_write;
  at t: stack_enable;
  at t: stack_address = stack_count - 1;
  at t+1: not stack_enable;

  at t+2: right_reg = stack_output_at1;
  at t+2: left_reg =  (right_reg_at0 + 1) mod X"1_0000_0000"; --could become a negative number..
  at t+2: stack_count = stack_count_at0 - 1;
  at t+2: START_S;


right_hook: t+2;
end property;





property start_subarray is
dependencies: no_reset, always_enable, stack_never_overflow;
assume:
  at t: START_S;
  at t: signed(left_reg) < signed(right_reg); 
  
prove:
  at t: not data_ce0;
  at t: not data_we0;
  at t: not stack_enable;
  at t: not stack_write;

  at t+1: h = left_reg;
  at t+1: left_reg = prev(left_reg);
  at t+1: right_reg = prev(right_reg);
  at t+1: stack_count = prev(stack_count);
  at t+1: pivot = prev(pivot);
  at t+1: PIVOT_S;


right_hook: t+1;
end property;


constraint dat_q:=
data_q0 /= prev(data_q0);
end constraint;



property search_pivot is
dependencies: no_reset, always_enable, stack_never_overflow;
assume:
  at t: PIVOT_S;

  
  at t: (signed(right_reg) - signed(left_reg)) > 1;
  at t: signed(h) < (signed(right_reg)); --tmp_4
  at t: signed((2*h)(31 downto 0)) <  signed(right_reg); --tmp_7 (only at this time)
prove:
 -- at t: not tmp_1_fu_297_p2(0);
  at t: not data_ce0;
  at t: not data_we0;
  at t: not stack_enable;
  at t: not stack_write;

  at t+1: h = ( prev(h) + 1 ) mod X"1_0000_0000";
  at t+1: left_reg = prev(left_reg);
  at t+1: right_reg = prev(right_reg);
  at t+1: stack_count = prev(stack_count);
  at t+1: PIVOT_S;
  at t+1: pivot= prev(pivot);


right_hook: t+1;
end property;




property pivot_found is
dependencies: no_reset, always_enable, stack_never_overflow,h_val;
assume:
  at t: PIVOT_S;

  at t: (signed(right_reg) - signed(left_reg)) > 1;
  at t: signed(h) < (signed(right_reg));
  at t: signed((2*h)(31 downto 0)) >=  signed(right_reg);
prove:
  at t+1 : ap_cs_fsm= ap_ST_st5_fsm_5;
  during[t+1, t+3]: not IMPORTANT_S;

  during[t,t+3]: not data_we0;
  during[t,t+3]: not stack_enable;
  during[t,t+3]: not stack_write;

  at t: data_ce0;
  at t: data_address0 = h(4 downto 0); -- is it possible that h > X"FF" ?, does this cause an error?

  during[t+1,t+2]: not data_ce0;
  at t+3: data_ce0;
  at t+3: data_address0 = prev(left_reg,3)(4 downto 0); --used to read out for next trigger cond.

  at t+4: i = prev(left_reg,4);
  at t+4: j = prev(right_reg,4);
  at t+4: left_reg = prev(left_reg,4);
  at t+4: right_reg = prev(right_reg,4);
  at t+4: stack_count = prev(stack_count,4);
  at t+4: pivot = prev(data_q0,3); --data[h]

  at t+4: GET_I_S;
--at t+3: op_property = subarray_done_p;

right_hook: t+4;
end property;


property w_case is
dependencies: no_reset, always_enable, stack_never_overflow;
assume:
  at t: PIVOT_S;
  at t: (signed(right_reg) - signed(left_reg)) = 1;
prove:
  
  at t+1 : ap_CS_fsm= ap_ST_st12_fsm_12;
  during[t+1, t+3]: not IMPORTANT_S;
  at t: not  data_ce0;
  at t+1: data_ce0;
  at t+1: data_address0 = prev(right_reg)(4 downto 0); --used to read out for next trigger cond.
  at t+2: not data_ce0;
  at t+3: data_ce0;
  at t+3: data_address0 = prev(left_reg,3)(4 downto 0);
  during[t,t+3]: not data_we0;
  during[t,t+3]: not stack_enable;
  during[t,t+3]: not stack_write;

  at t+4: i = prev(left_reg,4);
  at t+4: j = prev(right_reg,4);
  
  at t+4: left_reg = prev(left_reg,4);
  at t+4: right_reg = prev(right_reg,4);
  at t+4: stack_count = prev(stack_count,4);
  at t+4: pivot = prev(data_q0,3); 

  at t+4: GET_I_S;


right_hook: t+4;
end property;


property increment_i is 
dependencies: no_reset, always_enable, stack_never_overflow;
assume:
  at t: GET_I_S;
 at t: signed(data_q0) < signed(pivot); --data[i] < pivot (address is set to i)

prove:

  during[t+1, t+1]: not IMPORTANT_S;


  at t: not data_ce0;
  at t+1: data_ce0;
  at t+1: data_address0 = (prev(i) + 1)(4 downto 0); --for next compare data[i+1]..

  during[t,t+1]: not data_we0;
  during[t,t+1]: not stack_enable;
  during[t,t+1]: not stack_write;

  at t+2: i = (prev(i,2) + 1) mod X"1_0000_0000"; --cannot overflow if memory is unchanged since pivot = data[h] ...
  at t+2: j = prev(j,2);
  at t+2: left_reg = prev(left_reg,2);
  at t+2: right_reg = prev(right_reg,2);
  at t+2: stack_count = prev(stack_count,2);
  at t+2: pivot = prev(pivot,2);
  at t+2: GET_I_S;

right_hook: t+2;
end property;


property store_data_i is
dependencies: no_reset, always_enable, stack_never_overflow;
assume:
  at t: GET_I_S;
  at t: signed(data_q0) >= signed(pivot);
prove:
  during[t+1, t+1]: not IMPORTANT_S;

  at t: not data_ce0;
  at t+1: data_ce0;
  at t+1: data_address0 = (prev(j))(4 downto 0);
  during[t,t+1]: not data_we0;
  during[t,t+1]: not stack_enable;
  during[t,t+1]: not stack_write;

  at t+2: data_i = prev(data_q0,2); --at t
  at t+2: i = prev(i,2);
  at t+2: j = prev(j,2);
  at t+2: left_reg = prev(left_reg,2);
  at t+2: right_reg = prev(right_reg,2);
  at t+2: stack_count = prev(stack_count,2);
  at t+2: pivot = prev(pivot,2);
  at t+2: GET_J_S;


right_hook: t+2;
end property;

property decrement_j is
dependencies: no_reset, always_enable, stack_never_overflow;
freeze:
  j_decr = (j-1) mod X"20" @ t;
assume:
  at t: GET_J_S;
  at t: signed(data_q0) > signed(pivot);
  
prove:


  during[t+1, t+1]: not IMPORTANT_S;

  at t+1: data_ce0;
  at t+1: data_address0 = j_decr;

  at t: not data_ce0;
  at t+1: data_ce0;
  during[t,t+1]: not data_we0;
  during[t,t+1]: not stack_enable;
  during[t,t+1]: not stack_write;

  at t+2: data_i = prev(data_i,2);
  at t+2: i = prev(i,2);
  at t+2: j = (prev(j,2) - 1) mod X"1_0000_0000";
  at t+2: left_reg = prev(left_reg,2);
  at t+2: right_reg = prev(right_reg,2);
  at t+2: stack_count = prev(stack_count,2);
  at t+2: pivot = prev(pivot,2);
  at t+2: GET_J_S;



right_hook: t+2;
end property;

property compared_equal is
dependencies: no_reset, always_enable,h_val;
assume:
  at t: GET_J_S;
  
  at t: signed(data_q0) <= signed(pivot);
  at t: signed(i) < signed(j);
  at t: data_i = data_q0; --data[i] == data[j]

prove:


  during[t+1, t+2]: not IMPORTANT_S;

  at t-1: data_ce0;
  at t-1: data_address0 = next(j)(4 downto 0);

  during[t,t+1]: not data_ce0;
  at t+2: data_ce0;
  at t+2: data_address0 = prev(i,2)(4 downto 0);
  during[t,t+2]: not data_we0;
  during[t,t+2]: not stack_enable;
  during[t,t+2]: not stack_write;


  at t+3: i = prev(i,3);
  at t+3: j = (prev(j,3) - 1) mod X"1_0000_0000";
  at t+3: left_reg = prev(left_reg,3);
  at t+3: right_reg = prev(right_reg,3);
  at t+3: stack_count = prev(stack_count,3);
  at t+3: pivot = prev(pivot,3);
  at t+3: GET_I_S;
  

right_hook: t+3;
end property;


property swap is
dependencies: no_reset, always_enable;
assume:
  at t: GET_J_S;
  
  at t: signed(data_q0) <= signed(pivot);
  at t: signed(i) < signed(j);
  at t: data_i /= data_q0;
prove:
  during[t+1, t+3]: not IMPORTANT_S;

  -- data_i used as tmp
  -- data[i] = data[j]
  at t: data_ce0;
  at t: data_we0;
  at t: data_address0 = i(4 downto 0);
  at t: data_d0 = data_q0;

  --data[j] = data_i
  at t+1: data_ce0;
  at t+1: data_we0;
  at t+1: data_address0 = prev(j)(4 downto 0);
  at t+1: data_d0 = prev(data_i);

  during[t+2,t+2]: not data_ce0;
  at t+3: data_ce0;
  at t+3: data_address0 = next(i)(4 downto 0);
  during[t+2,t+3]: not data_we0;

  during[t,t+3]: not stack_enable;
  during[t,t+3]: not stack_write;


  at t+4: i = prev(i,4);
  at t+4: j = prev(j,4);
  at t+4: left_reg = prev(left_reg,4); --takes a long time to prove, wait
  at t+4: right_reg = prev(right_reg,4);
  at t+4: stack_count = prev(stack_count,4);
  at t+4: pivot = prev(pivot,4);
  at t+4: GET_I_S;


right_hook: t+4;
end property;


property pivot_overflow is --if offset (left /right input) is in range 0-31 then this operations never triggers
dependencies: no_reset, always_enable, stack_never_overflow;
assume:
  at t: GET_J_S;

  
  at t: signed(data_q0) <= signed(pivot);
  at t: signed(i) >= signed(j);
  at t: stack_count >= 32; --if offset (left /right input) is in range 0-31 then this never happens
prove:

  at t : tmp_i_i_fu_340_p2 = 1;
  at t-1: data_ce0;
  at t-1: data_address0 = next(j)(4 downto 0);

  at t: not data_ce0;
  during[t,t+1]: not data_we0;
  at t: not stack_enable;
  at t: not stack_write;

  at t+1: left_reg = prev(left_reg);
  at t+1: right_reg = if signed((prev(i)-1)(31 downto 0)) < signed(prev(left_reg)) then prev(left_reg); else (prev(i)-1) mod X"1_0000_0000"; end if; --max of i-1 and left_reg
  at t+1: stack_count = prev(stack_count);
  at t+1: START_S;

right_hook: t+1;
end property;


assertion h_val:=
dependencies: no_reset, always_enable, stack_never_overflow,width_restrictions,right_greater_than_left_in_pivot_s;
if PIVOT_S and signed(right_reg) - signed(left_reg) > 1 then

signed(h)<signed(right_reg);
end if;

end assertion;

assertion right_greater_than_left_in_pivot_s:=
dependencies: no_reset, always_enable, stack_never_overflow;
if PIVOT_S  then

signed(right_reg) - signed(left_reg) >= 1 ;
end if;

end assertion;

property pivot_done is --ended by counting to the end..(instead of the break condition)
dependencies: no_reset, always_enable, stack_never_overflow;
assume:
  at t: GET_J_S;
    at t: signed(data_q0) <= signed(pivot);
  at t: signed(i) >= signed(j);
  at t: stack_count < 32; --if offset (left /right input is in range 0-31 then this is always the case)
prove:
  at t-1: data_ce0;
  at t-1: data_address0 = next(j)(4 downto 0);

  at t: not data_ce0;
  during[t,t+1]: not data_we0;
  at t: stack_enable;
  at t: stack_write;
  at t: stack_address = stack_count;
  at t: stack_input = right_reg;
 
  at t+1: left_reg = prev(left_reg);
  at t+1: right_reg = if signed((prev(i)-1)(31 downto 0)) < signed(prev(left_reg)) then prev(left_reg); else (prev(i)-1) mod X"1_0000_0000"; end if; --max of i-1 and left_reg
  at t+1: stack_count = prev(stack_count) + 1;
  at t+1: START_S;


right_hook: t+1;
end property;









