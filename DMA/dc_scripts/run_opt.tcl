
remove_design -designs

set SYN_TYPE "after";
set SAIF_FILE "SAIF/after.saif";
set TB_DUT   "map_tb/dut";
set SRC_DIR  "../Opt";
set RTL_SRC_FILES "$SRC_DIR/dma_types.vhd \
                   $SRC_DIR/monitor_pkg.vhd \
                   $SRC_DIR/monitor.vhd \
                   $SRC_DIR/ctrl_wM.vhd \
                   $SRC_DIR/data_path_wM.vhd \
                   $SRC_DIR/dma_wM.vhd"      ;# Enter the list of source RTL files if reading from RTL
                   
source dc_st.tcl

