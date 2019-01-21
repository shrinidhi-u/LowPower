puts "Methodology verified on Synopsys Design Compiler Version F-2011.09-SP3 for suse64"


source dc_setup_st.tcl

#################################################################################
# Design Compiler Reference Methodology Script for Top-Down Flow
# Script: dc.tcl
# Version: B-2008.09-SP1 (Nov. 10, 2008)
# Copyright (C) 2007, 2008 Synopsys All rights reserved.
#################################################################################

#################################################################################
# Additional Variables
#
# Add any additional variables needed for your flow here.
#################################################################################
set power_preserve_rtl_hier_names true

# No additional flow variables are being recommended

#################################################################################
# Setup for Formality verification
#
# SVF should always be written to allow Formality verification
# for advanced optimizations.
#################################################################################

set_svf ${RESULTS_DIR}/${DESIGN_NAME}.mapped.svf

#################################################################################
# Setup SAIF Name Mapping Database
#
# Include an RTL SAIF for better power optimization and analysis.
#
# saif_map should be issued prior to RTL elaboration to create a name mapping
# database for better annotation.
################################################################################

saif_map -start

#################################################################################
# Read in the RTL Design
#
# Read in the RTL source files or read in the elaborated design (DDC).
# Use the -format option to specify: verilog, sverilog, or vhdl as needed.
#################################################################################

analyze  -format vhdl ${RTL_SRC_FILES}
elaborate ${DESIGN_NAME} 
write -hierarchy -format ddc -output ${RESULTS_DIR}/${DESIGN_NAME}.elab.ddc

# rtl2saif -output SAIF/rtl_saif_forward_${DESIGN_NAME}.saif


# OR

# You can read an elaborated design from the same release.
# Using an elaborated design from an older release will not give the best results.

#### read_ddc  ${RESULTS_DIR}/${DESIGN_NAME}.elab.ddc

current_design ${DESIGN_NAME}

link


#################################################################################
# Apply Logical Design Constraints
#################################################################################

source ${DESIGN_NAME}.constraints.tcl

# You can enable analysis and optimization for multiple clocks per register.
# To use this, you must constrain to remove false interactions between mutually exclusive
# clocks.  This is needed to prevent unnecessary analysis that can result in
# a significant runtime increase with this feature enabled.
#
# set_clock_groups -physically_exclusive | -logically_exclusive | -asynchronous \
#                  -group {CLKA, CLKB} -group {CLKC, CLKD} 
#
# set timing_enable_multiple_clocks_per_reg true

#################################################################################
# Apply The Operating Conditions
#################################################################################

# Set operating condition on top level
# Comment out if these are already set in your constraints file.
set_operating_conditions -library NangateOpenCellLibrary typical
###set_operating_conditions -max <max_opcond> -min <min_opcond>

#################################################################################
# Create Default Path Groups
#
# Separating these paths can help improve optimization.
# Remove these path group settings if user path groups have already been defined.
#################################################################################

set ports_clock_root [get_ports [all_fanout -flat -clock_tree -level 0]] 
group_path -name REGOUT -to [all_outputs] 
group_path -name REGIN -from [remove_from_collection [all_inputs] $ports_clock_root] 
group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] $ports_clock_root] -to [all_outputs]

#################################################################################
# Power Optimization Section
#################################################################################


    #############################################################################
    # Apply Power Optimization Constraints
    #############################################################################

    # Include a SAIF file, if possible, for power optimization.  If a SAIF file
    # is not provided, the default toggle rate of 0.1 will be used for propagating
    # switching activity.

    # read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose
    read_saif -auto_map_names -input SAIF/before.saif -instance_name tb_quicksort_tb/DUT -verbose

    # Remove set_max_total_power power optimization constraint from scripts in 2008.09
    # Enable both of the following settings for total power optimization

    #set_max_leakage_power 0
    #set_max_dynamic_power 0




#################################################################################
# Compile the Design
#
# Recommended Options:
#
#     -scan
#     -gate_clock
#     -retime
#     -timing_high_effort_script
#     -area_high_effort_script
#     -congestion
#     -num_cpus
#
# Use compile_ultra as your starting point. For test-ready compile, include
# the -scan option with the first compile and any subsequent compiles.
#
# Use -gate_clock to insert clock-gating logic during optimization.  This
# is now the recommended methodology for clock gating.
#
# Use -retime to enable adapative retiming optimization for further timing
# benefit without any runtime or memory overhead.
#
# The -timing_high_effort_script or the -area_high_effort_script option
# may also be used to try and improve the optimization results at the tradeoff
# of some additional runtime.
#
#################################################################################

# Before running topographical mode synthesis for the first time, run
# "compile_ultra -check_only" to verify that your libraries and design
# will not fail during optimization in topographical mode.

check_design

# compile_ultra -check_only
# quit
set_cost_priority -delay
ungroup -all


compile_ultra -gate_clock 

###
read_saif -auto_map_names -input $SAIF_DIR -instance_name $TB_DUT -verbose

set_max_leakage_power 0
set_max_dynamic_power 0

compile_ultra -incremental 

uniquify


#################################################################################
# Save Design after First Compile
#################################################################################

write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.compile_ultra.ddc


#################################################################################
# Write Out Final Design and Reports
#
#        .ddc:   Recommended binary format used for subsequent Design Compiler sessions
#    Milkyway:   Recommended binary format for IC Compiler
#        .v  :   Verilog netlist for ASCII flow (Formality, PrimeTime, VCS)
#       .spef:   Topographical mode parasitics for PrimeTime
#        .sdf:   SDF backannotated topographical mode timing for PrimeTime
#        .sdc:   SDC constraints for ASCII flow
#
#################################################################################

change_names -rules vhdl -hierarchy

#################################################################################
# Write out Design
#################################################################################

# Write and close SVF file and make it available for immediate use
set_svf -off

write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.ddc
write -f verilog -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.v
write -f vhdl -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}.mapped.vhd

#################################################################################
# Generate Final Reports 1/2
#################################################################################

report_qor > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.qor.rpt
report_timing -transition_time -nets -attributes -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.timing.rpt

if {[shell_is_in_topographical_mode]} {
report_area -physical -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.area.rpt
} else {
report_area -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.area.rpt
}

#################################################################################
# Write out Design Data
#################################################################################


write_sdc -nosplit ${RESULTS_DIR}/${DESIGN_NAME}.mapped.sdc

# If SAIF is used, write out SAIF name mapping file for PrimeTime-PX
# saif_map -type ptpx -write_map ${RESULTS_DIR}/${DESIGN_NAME}.mapped.SAIF.namemap

#################################################################################
# Generate Final Reports 2/2
#################################################################################


# Use SAIF file for power analysis
# read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose
#
read_saif -auto_map_names -input $SAIF_DIR -instance_name $TB_DUT -verbose

report_power -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.power.rpt
report_clock_gating -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.clock_gating.rpt
report_reference -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.references.rpt


