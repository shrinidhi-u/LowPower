##########################################################################################
# Local value setup
##########################################################################################

set hdlin_auto_save_templates true
set high_fanout_net_pin_capacitance 0.005

set sh_new_variable_message false
set sh_continue_on_error false

##########################################################################################
# Variables common to all RM scripts
# Script: common_setup.tcl
# Version: B-2008.09-SP1 (Nov. 10, 2008)
# Copyright (C) 2007, 2008 Synopsys All rights reserved.
##########################################################################################

set DESIGN_NAME                   "quicksort"  ;#  The name of the top-level design

set DESIGN_REF_DATA_PATH          "/opt/libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/"  ;
				   #  Absolute path prefix variable for library/design data.
                                   #  Use this variable to prefix the common absolute path to 
                                   #  the common variables defined below.
                                   #  Absolute paths are mandatory for hierarchical RM flow.

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set ADDITIONAL_SEARCH_PATH        "${DESIGN_REF_DATA_PATH}/Front_End/Liberty/NLDM/  \
				   ${DESIGN_REF_DATA_PATH}/Low_Power/Front_End/Liberty/NLDM/  "  ;#  Additional search path to be added to the default search path

set TARGET_LIBRARY_FILES          "${DESIGN_REF_DATA_PATH}/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.db  "
				     ;#  Target technology logical libraries

set ADDITIONAL_LINK_LIB_FILES      "${DESIGN_REF_DATA_PATH}/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.db  \
				    ${DESIGN_REF_DATA_PATH}/Low_Power/Front_End/Liberty/NLDM/LowPowerOpenCellLibrary_typical.db " ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES

set TARGET_NOM_LIB_FILES          "${DESIGN_REF_DATA_PATH}/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.db  \
				   ${DESIGN_REF_DATA_PATH}/Low_Power/Front_End/Liberty/NLDM/LowPowerOpenCellLibrary_typical.db  "  ;#  Target technology logical libraries

set TARGET_MIN_LIB_FILES          "${DESIGN_REF_DATA_PATH}/Front_End/Liberty/NLDM/NangateOpenCellLibrary_typical.db 
				    "  ;#  Target technology logical libraries

set MIN_LIBRARY_FILES             "LowPowerOpenCellLibrary_slow.db LowPowerOpenCellLibrary_fast.db \
				   LowPowerOpenCellLibrary_worst_low.db LowPowerOpenCellLibrary_low_temp.db \
				    NangateOpenCellLibrary_slow.db NangateOpenCellLibrary_fast.db \
				    NangateOpenCellLibrary_worst_low.db NangateOpenCellLibrary_fast.db" ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

