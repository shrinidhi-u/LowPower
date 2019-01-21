source common_setup_st.tcl


#################################################################################
# Setup Variables
#
# Modify settings in this section to customize your DC-RM run.
#################################################################################

# Portions of dc_setup.tcl may be used by other tools so do check for DC only commands
if {$synopsys_program_name == "dc_shell"}  {

  # Change alib_library_analysis_path to point to a central cache of analyzed libraries
  # to save some runtime and disk space.  The following setting only reflects the
  # the default value and should be changed to a central location for best results.

  set alib_library_analysis_path .

  # Add any additional DC variables needed here
}

# set RTL_SRC_FILES_2 ""  ;# Enter the list of source RTL files if reading from RTL


# The following variables are used by scripts in dc_scripts to direct the location
# of the output files

set REPORTS_DIR "REPORTS_$SYN_TYPE"
set RESULTS_DIR "RESULTS_$SYN_TYPE"

file mkdir ${REPORTS_DIR}
file mkdir ${RESULTS_DIR}

#################################################################################
# Library Setup
#
# This section is designed to work with the settings from common_setup.tcl
# without any additional modification.
#################################################################################

# Define all the library variables shared by all the front-end tools

set search_path ". ${ADDITIONAL_SEARCH_PATH} $search_path"


# The remainder of the setup below should only be performed in Design Compiler
if {$synopsys_program_name == "dc_shell"}  {

  # Include all libraries for multi-Vth leakage power optimization

  set target_library ${TARGET_LIBRARY_FILES}
  set synthetic_library dw_foundation.sldb
  set link_library "* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library"

  # Set min libraries if they exist
  foreach {max_library min_library} $MIN_LIBRARY_FILES {
    set_min_library $max_library -min_version $min_library
  }


}


