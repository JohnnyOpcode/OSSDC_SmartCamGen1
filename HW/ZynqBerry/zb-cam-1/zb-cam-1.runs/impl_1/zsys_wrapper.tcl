proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg225-1
  set_property board_part_repo_paths C:/Users/John/Documents/ZynqBerry/te0726_m_demo1/board_files [current_project]
  set_property board_part trenz.biz:te0726_m:part0:3.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.cache/wt [current_project]
  set_property parent.project_path C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.xpr [current_project]
  set_property ip_repo_paths C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.ipdefs/ip_lib_0 [current_project]
  set_property ip_output_repo C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.runs/synth_1/zsys_wrapper.dcp
  read_xdc -ref zsys_processing_system7_0_0 -cells inst c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0/zsys_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0/zsys_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref zsys_rst_processing_system7_0_50M_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_rst_processing_system7_0_50M_0/zsys_rst_processing_system7_0_50M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_rst_processing_system7_0_50M_0/zsys_rst_processing_system7_0_50M_0_board.xdc]
  read_xdc -ref zsys_rst_processing_system7_0_50M_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_rst_processing_system7_0_50M_0/zsys_rst_processing_system7_0_50M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_rst_processing_system7_0_50M_0/zsys_rst_processing_system7_0_50M_0.xdc]
  read_xdc -ref zsys_axi_vdma_0_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_0/zsys_axi_vdma_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_0/zsys_axi_vdma_0_0.xdc]
  read_xdc -ref zsys_axis_data_fifo_0_0 -cells inst c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0.xdc]
  read_xdc -ref zsys_csi2_d_phy_rx_0_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_csi2_d_phy_rx_0_0/hdl/csi2_d_phy_rx.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_csi2_d_phy_rx_0_0/hdl/csi2_d_phy_rx.xdc]
  read_xdc -ref zsys_csi_to_axis_0_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_csi_to_axis_0_0/hdl/csi_to_axis.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_csi_to_axis_0_0/hdl/csi_to_axis.xdc]
  read_xdc -prop_thru_buffers -ref zsys_proc_sys_reset_0_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_proc_sys_reset_0_0/zsys_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_proc_sys_reset_0_0/zsys_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref zsys_proc_sys_reset_0_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_proc_sys_reset_0_0/zsys_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_proc_sys_reset_0_0/zsys_proc_sys_reset_0_0.xdc]
  read_xdc -ref zsys_axi_vdma_0_1 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_1/zsys_axi_vdma_0_1.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_1/zsys_axi_vdma_0_1.xdc]
  read_xdc -prop_thru_buffers -ref zsys_clk_wiz_1_0 -cells inst c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_board.xdc]
  read_xdc -ref zsys_clk_wiz_1_0 -cells inst c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0.xdc]
  read_xdc C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/constrs_1/imports/constraints/vivado_target.xdc
  read_xdc C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/constrs_1/imports/constraints/_i_bitgen_common.xdc
  read_xdc C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/constrs_1/imports/constraints/_i_common.xdc
  read_xdc C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/constrs_1/imports/constraints/_i_csi.xdc
  read_xdc C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/constrs_1/imports/constraints/_i_hdmi.xdc
  read_xdc C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/constrs_1/imports/constraints/_i_te0726.xdc
  read_xdc C:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/constrs_1/imports/constraints/_i_timing.xdc
  read_xdc -ref zsys_axi_vdma_0_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_0/zsys_axi_vdma_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_0/zsys_axi_vdma_0_0_clocks.xdc]
  read_xdc -ref zsys_axis_data_fifo_0_0 -cells inst c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0/zsys_axis_data_fifo_0_0_clocks.xdc]
  read_xdc -ref zsys_axi_vdma_0_1 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_1/zsys_axi_vdma_0_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_axi_vdma_0_1/zsys_axi_vdma_0_1_clocks.xdc]
  read_xdc -ref zsys_v_axi4s_vid_out_0_0 -cells inst c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_v_axi4s_vid_out_0_0/zsys_v_axi4s_vid_out_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_v_axi4s_vid_out_0_0/zsys_v_axi4s_vid_out_0_0_clocks.xdc]
  read_xdc -ref zsys_v_tc_0_0 -cells U0 c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_v_tc_0_0/zsys_v_tc_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_v_tc_0_0/zsys_v_tc_0_0_clocks.xdc]
  read_xdc -ref zsys_auto_us_0 -cells inst c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_auto_us_0/zsys_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/John/Documents/ZynqBerry/LVS_BASE/LVS_BASE.srcs/sources_1/bd/zsys/ip/zsys_auto_us_0/zsys_auto_us_0_clocks.xdc]
  link_design -top zsys_wrapper -part xc7z010clg225-1
  write_hwdef -file zsys_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design -directive Explore
  write_checkpoint -force zsys_wrapper_opt.dcp
  catch { report_drc -file zsys_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design -directive Explore
  write_checkpoint -force zsys_wrapper_placed.dcp
  catch { report_io -file zsys_wrapper_io_placed.rpt }
  catch { report_utilization -file zsys_wrapper_utilization_placed.rpt -pb zsys_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file zsys_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step phys_opt_design
set ACTIVE_STEP phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design -directive Explore
  write_checkpoint -force zsys_wrapper_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive Explore
  write_checkpoint -force zsys_wrapper_routed.dcp
  catch { report_drc -file zsys_wrapper_drc_routed.rpt -pb zsys_wrapper_drc_routed.pb -rpx zsys_wrapper_drc_routed.rpx }
  catch { report_methodology -file zsys_wrapper_methodology_drc_routed.rpt -rpx zsys_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file zsys_wrapper_timing_summary_routed.rpt -rpx zsys_wrapper_timing_summary_routed.rpx }
  catch { report_power -file zsys_wrapper_power_routed.rpt -pb zsys_wrapper_power_summary_routed.pb -rpx zsys_wrapper_power_routed.rpx }
  catch { report_route_status -file zsys_wrapper_route_status.rpt -pb zsys_wrapper_route_status.pb }
  catch { report_clock_utilization -file zsys_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force zsys_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force zsys_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile zsys_wrapper.bit 
  catch { write_sysdef -hwdef zsys_wrapper.hwdef -bitfile zsys_wrapper.bit -meminfo zsys_wrapper.mmi -file zsys_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

