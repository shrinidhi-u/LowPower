
remove_design -designs;

set SYN_TYPE "before";
set SAIF_DIR "SAIF/before.saif";
set TB_DUT   "tb_quicksort_tb/DUT";
set SRC_DIR  "../Orig/";
set RTL_SRC_FILES "$SRC_DIR/AESL_pkg.vhd \
                   $SRC_DIR/quicksort.vhd"      ;# Enter the list of source RTL files if reading from RTL
source dc_st.tcl

