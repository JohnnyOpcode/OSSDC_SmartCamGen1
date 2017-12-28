# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S00_AXI_CFG_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_CFG_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_CFG_DATA_WIDTH}
  set C_S00_AXI_CFG_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_CFG_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_CFG_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S00_AXI_CFG_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_CFG_HIGHADDR" -parent ${Page_0}
  set C_M00_AXIS_VIDEO_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXIS_VIDEO_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M00_AXIS_VIDEO_TDATA_WIDTH}
  set C_M00_AXIS_VIDEO_START_COUNT [ipgui::add_param $IPINST -name "C_M00_AXIS_VIDEO_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the numeber of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M00_AXIS_VIDEO_START_COUNT}
  set C_S00_AXIS_VIDEO_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXIS_VIDEO_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S00_AXIS_VIDEO_TDATA_WIDTH}
  set C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {Base address of targeted slave} ${C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR}
  set C_M00_AXI_STATUS_BURST_LEN [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M00_AXI_STATUS_BURST_LEN}
  set C_M00_AXI_STATUS_ID_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M00_AXI_STATUS_ID_WIDTH}
  set C_M00_AXI_STATUS_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M00_AXI_STATUS_ADDR_WIDTH}
  set C_M00_AXI_STATUS_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M00_AXI_STATUS_DATA_WIDTH}
  set C_M00_AXI_STATUS_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Address Bus} ${C_M00_AXI_STATUS_AWUSER_WIDTH}
  set C_M00_AXI_STATUS_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Address Bus} ${C_M00_AXI_STATUS_ARUSER_WIDTH}
  set C_M00_AXI_STATUS_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Data Bus} ${C_M00_AXI_STATUS_WUSER_WIDTH}
  set C_M00_AXI_STATUS_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Data Bus} ${C_M00_AXI_STATUS_RUSER_WIDTH}
  set C_M00_AXI_STATUS_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_STATUS_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Response Bus} ${C_M00_AXI_STATUS_BUSER_WIDTH}


}

proc update_PARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_CFG_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_CFG_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_CFG_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_CFG_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_CFG_BASEADDR { PARAM_VALUE.C_S00_AXI_CFG_BASEADDR } {
	# Procedure called to update C_S00_AXI_CFG_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_CFG_BASEADDR { PARAM_VALUE.C_S00_AXI_CFG_BASEADDR } {
	# Procedure called to validate C_S00_AXI_CFG_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_CFG_HIGHADDR { PARAM_VALUE.C_S00_AXI_CFG_HIGHADDR } {
	# Procedure called to update C_S00_AXI_CFG_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_CFG_HIGHADDR { PARAM_VALUE.C_S00_AXI_CFG_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_CFG_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH } {
	# Procedure called to update C_M00_AXIS_VIDEO_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH } {
	# Procedure called to validate C_M00_AXIS_VIDEO_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT { PARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT } {
	# Procedure called to update C_M00_AXIS_VIDEO_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT { PARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT } {
	# Procedure called to validate C_M00_AXIS_VIDEO_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH } {
	# Procedure called to update C_S00_AXIS_VIDEO_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH } {
	# Procedure called to validate C_S00_AXIS_VIDEO_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN { PARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN } {
	# Procedure called to update C_M00_AXI_STATUS_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN { PARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN } {
	# Procedure called to validate C_M00_AXI_STATUS_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_STATUS_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH { PARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_STATUS_BUSER_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH PARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_CFG_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_CFG_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH PARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_VIDEO_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT { MODELPARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT PARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT}] ${MODELPARAM_VALUE.C_M00_AXIS_VIDEO_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH PARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_VIDEO_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN { MODELPARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN PARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH PARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_STATUS_BUSER_WIDTH}
}
