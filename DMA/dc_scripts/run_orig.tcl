
remove_design -designs

set SYN_TYPE "before";
set SAIF_FILE "SAIF/before.saif";
set TB_DUT   "tb_dma_reset/DUT";
set SRC_DIR  "../Orig/";
set RTL_SRC_FILES "$SRC_DIR/dma_types.vhd \
                   $SRC_DIR/ctrl.vhd \
                   $SRC_DIR/data_path.vhd \
                   $SRC_DIR/dma.vhd"      ;# Enter the list of source RTL files if reading from RTL
                   
source dc_st.tcl

