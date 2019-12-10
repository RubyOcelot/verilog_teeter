

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "ADXL362Control" "NUM_INSTANCES" "DEVICE_ID"  "C_ADXL362Ctrl_Interface_BASEADDR" "C_ADXL362Ctrl_Interface_HIGHADDR"
}
