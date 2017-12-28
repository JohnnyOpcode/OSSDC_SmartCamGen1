# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_CLK_SWAP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_D0_SWAP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_D1_SWAP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_D2_SWAP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_D3_SWAP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_LANES" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_CLK_USE_LP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_LP_LANES" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_DATA_USE_LP" -parent ${Page_0}
  #Adding Group
  set Clocking [ipgui::add_group $IPINST -name "Clocking" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "C_START_DELAY" -parent ${Clocking}
  ipgui::add_param $IPINST -name "C_IODELAY_GROUP" -parent ${Clocking}
  ipgui::add_param $IPINST -name "C_ADD_IDELAYCTRL" -parent ${Clocking}
  ipgui::add_param $IPINST -name "C_DIFF_TERM" -parent ${Clocking}



}

proc update_PARAM_VALUE.C_ADD_IDELAYCTRL { PARAM_VALUE.C_ADD_IDELAYCTRL } {
	# Procedure called to update C_ADD_IDELAYCTRL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADD_IDELAYCTRL { PARAM_VALUE.C_ADD_IDELAYCTRL } {
	# Procedure called to validate C_ADD_IDELAYCTRL
	return true
}

proc update_PARAM_VALUE.C_CLK_SWAP { PARAM_VALUE.C_CLK_SWAP } {
	# Procedure called to update C_CLK_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_SWAP { PARAM_VALUE.C_CLK_SWAP } {
	# Procedure called to validate C_CLK_SWAP
	return true
}

proc update_PARAM_VALUE.C_CLK_USE_LP { PARAM_VALUE.C_CLK_USE_LP } {
	# Procedure called to update C_CLK_USE_LP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_USE_LP { PARAM_VALUE.C_CLK_USE_LP } {
	# Procedure called to validate C_CLK_USE_LP
	return true
}

proc update_PARAM_VALUE.C_D0_SWAP { PARAM_VALUE.C_D0_SWAP } {
	# Procedure called to update C_D0_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D0_SWAP { PARAM_VALUE.C_D0_SWAP } {
	# Procedure called to validate C_D0_SWAP
	return true
}

proc update_PARAM_VALUE.C_D1_SWAP { PARAM_VALUE.C_D1_SWAP } {
	# Procedure called to update C_D1_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D1_SWAP { PARAM_VALUE.C_D1_SWAP } {
	# Procedure called to validate C_D1_SWAP
	return true
}

proc update_PARAM_VALUE.C_D2_SWAP { PARAM_VALUE.C_D2_SWAP } {
	# Procedure called to update C_D2_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D2_SWAP { PARAM_VALUE.C_D2_SWAP } {
	# Procedure called to validate C_D2_SWAP
	return true
}

proc update_PARAM_VALUE.C_D3_SWAP { PARAM_VALUE.C_D3_SWAP } {
	# Procedure called to update C_D3_SWAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D3_SWAP { PARAM_VALUE.C_D3_SWAP } {
	# Procedure called to validate C_D3_SWAP
	return true
}

proc update_PARAM_VALUE.C_DATA_USE_LP { PARAM_VALUE.C_DATA_USE_LP } {
	# Procedure called to update C_DATA_USE_LP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_USE_LP { PARAM_VALUE.C_DATA_USE_LP } {
	# Procedure called to validate C_DATA_USE_LP
	return true
}

proc update_PARAM_VALUE.C_DIFF_TERM { PARAM_VALUE.C_DIFF_TERM } {
	# Procedure called to update C_DIFF_TERM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DIFF_TERM { PARAM_VALUE.C_DIFF_TERM } {
	# Procedure called to validate C_DIFF_TERM
	return true
}

proc update_PARAM_VALUE.C_IODELAY_GROUP { PARAM_VALUE.C_IODELAY_GROUP } {
	# Procedure called to update C_IODELAY_GROUP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IODELAY_GROUP { PARAM_VALUE.C_IODELAY_GROUP } {
	# Procedure called to validate C_IODELAY_GROUP
	return true
}

proc update_PARAM_VALUE.C_NUM_LANES { PARAM_VALUE.C_NUM_LANES } {
	# Procedure called to update C_NUM_LANES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_LANES { PARAM_VALUE.C_NUM_LANES } {
	# Procedure called to validate C_NUM_LANES
	return true
}

proc update_PARAM_VALUE.C_NUM_LP_LANES { PARAM_VALUE.C_NUM_LP_LANES } {
	# Procedure called to update C_NUM_LP_LANES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_LP_LANES { PARAM_VALUE.C_NUM_LP_LANES } {
	# Procedure called to validate C_NUM_LP_LANES
	return true
}

proc update_PARAM_VALUE.C_START_DELAY { PARAM_VALUE.C_START_DELAY } {
	# Procedure called to update C_START_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_START_DELAY { PARAM_VALUE.C_START_DELAY } {
	# Procedure called to validate C_START_DELAY
	return true
}


proc update_MODELPARAM_VALUE.C_CLK_SWAP { MODELPARAM_VALUE.C_CLK_SWAP PARAM_VALUE.C_CLK_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_SWAP}] ${MODELPARAM_VALUE.C_CLK_SWAP}
}

proc update_MODELPARAM_VALUE.C_D0_SWAP { MODELPARAM_VALUE.C_D0_SWAP PARAM_VALUE.C_D0_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D0_SWAP}] ${MODELPARAM_VALUE.C_D0_SWAP}
}

proc update_MODELPARAM_VALUE.C_D1_SWAP { MODELPARAM_VALUE.C_D1_SWAP PARAM_VALUE.C_D1_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D1_SWAP}] ${MODELPARAM_VALUE.C_D1_SWAP}
}

proc update_MODELPARAM_VALUE.C_D2_SWAP { MODELPARAM_VALUE.C_D2_SWAP PARAM_VALUE.C_D2_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D2_SWAP}] ${MODELPARAM_VALUE.C_D2_SWAP}
}

proc update_MODELPARAM_VALUE.C_D3_SWAP { MODELPARAM_VALUE.C_D3_SWAP PARAM_VALUE.C_D3_SWAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D3_SWAP}] ${MODELPARAM_VALUE.C_D3_SWAP}
}

proc update_MODELPARAM_VALUE.C_NUM_LANES { MODELPARAM_VALUE.C_NUM_LANES PARAM_VALUE.C_NUM_LANES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_LANES}] ${MODELPARAM_VALUE.C_NUM_LANES}
}

proc update_MODELPARAM_VALUE.C_NUM_LP_LANES { MODELPARAM_VALUE.C_NUM_LP_LANES PARAM_VALUE.C_NUM_LP_LANES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_LP_LANES}] ${MODELPARAM_VALUE.C_NUM_LP_LANES}
}

proc update_MODELPARAM_VALUE.C_DATA_USE_LP { MODELPARAM_VALUE.C_DATA_USE_LP PARAM_VALUE.C_DATA_USE_LP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_USE_LP}] ${MODELPARAM_VALUE.C_DATA_USE_LP}
}

proc update_MODELPARAM_VALUE.C_CLK_USE_LP { MODELPARAM_VALUE.C_CLK_USE_LP PARAM_VALUE.C_CLK_USE_LP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_USE_LP}] ${MODELPARAM_VALUE.C_CLK_USE_LP}
}

proc update_MODELPARAM_VALUE.C_DIFF_TERM { MODELPARAM_VALUE.C_DIFF_TERM PARAM_VALUE.C_DIFF_TERM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DIFF_TERM}] ${MODELPARAM_VALUE.C_DIFF_TERM}
}

proc update_MODELPARAM_VALUE.C_ADD_IDELAYCTRL { MODELPARAM_VALUE.C_ADD_IDELAYCTRL PARAM_VALUE.C_ADD_IDELAYCTRL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADD_IDELAYCTRL}] ${MODELPARAM_VALUE.C_ADD_IDELAYCTRL}
}

proc update_MODELPARAM_VALUE.C_IODELAY_GROUP { MODELPARAM_VALUE.C_IODELAY_GROUP PARAM_VALUE.C_IODELAY_GROUP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IODELAY_GROUP}] ${MODELPARAM_VALUE.C_IODELAY_GROUP}
}

proc update_MODELPARAM_VALUE.C_START_DELAY { MODELPARAM_VALUE.C_START_DELAY PARAM_VALUE.C_START_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_START_DELAY}] ${MODELPARAM_VALUE.C_START_DELAY}
}
