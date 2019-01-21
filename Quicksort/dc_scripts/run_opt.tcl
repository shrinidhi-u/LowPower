
remove_design -designs;

set SYN_TYPE "after";
set SAIF_DIR "SAIF/after.saif";
set TB_DUT   "tb_quicksort_tb/DUT";
set SRC_DIR  "../Opt/";
set RTL_SRC_FILES "$SRC_DIR/AESL_pkg.vhd \
                   $SRC_DIR/monitor_pkg.vhd \
                   $SRC_DIR/monitor.vhd \
                   $SRC_DIR/quicksort_opt.vhd"      ;# Enter the list of source RTL files if reading from RTL
                   
source dc_st.tcl;

