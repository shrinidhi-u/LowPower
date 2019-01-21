
##############################################################################
# set Constraints          ###################################################
##############################################################################

##############################################################################
# Assuming standard names for clock and reset = {clk, rst}
##############################################################################

set clk "clk"
set rst "reset_n"

set clk_period 10
 
# Generate Clocks:
# ----------------
  create_clock -name $clk -period $clk_period [get_ports $clk] 


########################

  set_clock_uncertainty  [expr $clk_period * 0.010] -setup [get_clocks $clk]
  set_clock_uncertainty  [expr $clk_period * 0.005] -hold [get_clocks $clk]
 
  set_fix_hold $clk

  set_clock_latency -max 0.80 [get_clocks $clk] 
  set_clock_latency -min 0.40 [get_clocks $clk] 

  set_clock_transition [expr $clk_period * 0.05] [get_clocks $clk] 

########################

  set_max_transition [expr $clk_period * 0.1] [get_designs ${DESIGN_NAME}] 
 
  set_fix_multiple_port_nets -all
 
  # I/O-Timing:
  # ----------------------
# outputs
 set_input_delay [expr $clk_period * 0.25] -clock $clk [filter [all_inputs] {@name != $clk}]
  # set_input_delay [expr $clk_period * 0.25] -clock clk [filter [all_inputs] {@name != clk}]
 set_output_delay [expr $clk_period * 0.25] -clock $clk [filter [all_outputs] {@name != $clk}]

  # Set environment and loads:
  #---------------------------

  set_false_path -from [get_ports $rst] -to [get_clocks $clk]



##############################################################################
 


