

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "vbacc" "NUM_INSTANCES" "DEVICE_ID"  "C_S00_AXI_CFG_BASEADDR" "C_S00_AXI_CFG_HIGHADDR"
}
