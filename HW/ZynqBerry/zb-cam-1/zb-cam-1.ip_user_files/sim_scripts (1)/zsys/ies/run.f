-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/axi_lib \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec17/hdl/axi_reg32_v1_0_S_AXI.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec17/hdl/axi_reg32_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_axi_reg32_0_0/sim/zsys_axi_reg32_0_0.vhd" \
-endlib
-makelib ies/processing_system7_bfm_v2_0_5 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_processing_system7_0_0/sim/zsys_processing_system7_0_0.v" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_rst_processing_system7_0_50M_0/sim/zsys_rst_processing_system7_0_50M_0.vhd" \
-endlib
-makelib ies/lib_pkg_v1_0_2 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/lib_fifo_v1_0_7 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5ab6/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/lib_bmg_v1_0_7 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/38e8/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib ies/lib_srl_fifo_v1_0_2 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/axi_datamover_v5_1_13 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/bf41/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_vdma_v6_2_10 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.v" \
-endlib
-makelib ies/axi_vdma_v6_2_10 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_axi_vdma_0_0/sim/zsys_axi_vdma_0_0.vhd" \
-endlib
-makelib ies/axis_infrastructure_v1_1_0 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/fe67/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axis_data_fifo_v1_1_12 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/fcef/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_axis_data_fifo_0_0/sim/zsys_axis_data_fifo_0_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5143/hdl/dualport_ram.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5143/hdl/gamma_rom.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5143/hdl/axis_raw_demosaic_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_axis_raw_demosaic_0_0/sim/zsys_axis_raw_demosaic_0_0.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/c887/hdl/axis_raw_unpack_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_axis_raw_unpack_0_0/sim/zsys_axis_raw_unpack_0_0.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/f76f/hdl/axis_video_resize_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_axis_video_resize_0_0/sim/zsys_axis_video_resize_0_0.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/94dd/hdl/phy_clock_system.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/94dd/hdl/line_if.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/94dd/hdl/csi2_d_phy_rx.vhd" \
  "../../../bd/zsys/ip/zsys_csi2_d_phy_rx_0_0/sim/zsys_csi2_d_phy_rx_0_0.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/2dbd/hdl/csi2_parser.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/2dbd/hdl/lane_align.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/2dbd/hdl/lane_merge.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/2dbd/hdl/csi_to_axis_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_csi_to_axis_0_0/sim/zsys_csi_to_axis_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_proc_sys_reset_0_0/sim/zsys_proc_sys_reset_0_0.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a47b/hdl/tmds_encoder.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a47b/hdl/serdes.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a47b/hdl/dvi_encoder.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a47b/hdl/clock_system.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a47b/hdl/Video_IO_2_HDMI_TMDS_v1_0.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a47b/hdl/dram16xn.vhd" \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a47b/hdl/convert_30to15_fifo.vhd" \
  "../../../bd/zsys/ip/zsys_Video_IO_2_HDMI_TMDS_0_0/sim/zsys_Video_IO_2_HDMI_TMDS_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_axi_vdma_0_1/sim/zsys_axi_vdma_0_1.vhd" \
  "../../../bd/zsys/ipshared/83c4/src/axis_fb_conv_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_axis_fb_conv_0_0/sim/zsys_axis_fb_conv_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_mmcm_pll_drp.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_conv_funs_pkg.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_proc_common_pkg.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_ipif_pkg.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_family_support.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_family.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_soft_reset.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/zsys_clk_wiz_1_0_pselect_f.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/zsys_clk_wiz_1_0_address_decoder.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/zsys_clk_wiz_1_0_slave_attachment.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/zsys_clk_wiz_1_0_axi_lite_ipif.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_clk_wiz_drp.vhd" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_axi_clk_config.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0.v" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/v_tc_v6_1_10 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/d9f8/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib ies/v_vid_in_axi4s_v4_0_5 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/3c71/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib ies/v_axi4s_vid_out_v4_0_5 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/1923/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_v_axi4s_vid_out_0_0/sim/zsys_v_axi4s_vid_out_0_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_v_tc_0_0/sim/zsys_v_tc_0_0.vhd" \
  "../../../bd/zsys/ipshared/2e37/xlconcat.vhd" \
  "../../../bd/zsys/ip/zsys_xlconcat_0_0/sim/zsys_xlconcat_0_0.vhd" \
  "../../../bd/zsys/ipshared/c49f/xlslice.vhd" \
  "../../../bd/zsys/ip/zsys_xlslice_0_0/sim/zsys_xlslice_0_0.vhd" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_12 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xbar_0/sim/zsys_xbar_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/hdl/zsys.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xbar_1/sim/zsys_xbar_1.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_auto_pc_0/sim/zsys_auto_pc_0.v" \
-endlib
-makelib ies/axi_clock_converter_v2_1_10 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_dwidth_converter_v2_1_11 \
  "../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_auto_us_0/sim/zsys_auto_us_0.v" \
  "../../../bd/zsys/ip/zsys_auto_pc_1/sim/zsys_auto_pc_1.v" \
  "../../../bd/zsys/ip/zsys_auto_pc_2/sim/zsys_auto_pc_2.v" \
  "../../../bd/zsys/ip/zsys_auto_pc_3/sim/zsys_auto_pc_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

