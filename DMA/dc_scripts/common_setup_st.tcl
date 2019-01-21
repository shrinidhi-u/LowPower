
##########################################################################################
# Variables common to all RM scripts
# Script: common_setup.tcl
# Version: B-2008.09-SP1 (Nov. 10, 2008)
# Copyright (C) 2007, 2008 Synopsys All rights reserved.
##########################################################################################

set DESIGN_NAME                   "dma"  ;#  The name of the top-level design

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












