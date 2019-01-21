
##############################################################################
# set Constraints          ###################################################
##############################################################################
suppress_message {UID-401}
suppress_message {PSYN-650}
suppress_message {PSYN-651}

##############################################################################
# Assuming standard names for clock and reset = {clk, rst}
##############################################################################

set clk "ap_clk"
set rst "ap_rst"

set clk_period 10
 
# Generate Clocks:
# ----------------
  create_clock -name $clk -period $clk_period [get_ports $clk] 

# 50% high and low phase clk created

########################

  set_clock_uncertainty  [expr $clk_period * 0.010] -setup [get_clocks $clk]
  set_clock_uncertainty  [expr $clk_period * 0.005] -hold [get_clocks $clk]
 
#  set_dont_touch_network clk

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
 set_output_delay [expr $clk_period * 0.25] -clock $clk [filter [all_outputs] {@name != $clk}]

  # Set environment and loads:
  #---------------------------
  set_load 0.042 [filter [all_outputs] {@name != $clk}] 

  set_false_path -from [get_ports $rst] -to [get_clocks $clk]



##############################################################################

  # ADD UPF
# 
set_dont_touch [get_cells "s_a_U"]

