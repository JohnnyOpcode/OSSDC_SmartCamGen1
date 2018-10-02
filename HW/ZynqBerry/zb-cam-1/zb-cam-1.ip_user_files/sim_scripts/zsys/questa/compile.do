vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_3
vlib questa_lib/msim/axi_vip_v1_1_3
vlib questa_lib/msim/processing_system7_vip_v1_0_5
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_2
vlib questa_lib/msim/lib_fifo_v1_0_11
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/lib_bmg_v1_0_10
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_19
vlib questa_lib/msim/axi_vdma_v6_3_5
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_data_fifo_v1_1_18
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_1_12
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_8
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_9
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/xlslice_v1_0_1
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_17
vlib questa_lib/msim/axi_data_fifo_v2_1_16
vlib questa_lib/msim/axi_crossbar_v2_1_18
vlib questa_lib/msim/axi_protocol_converter_v2_1_17

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_lib questa_lib/msim/axi_lib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 questa_lib/msim/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 questa_lib/msim/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 questa_lib/msim/processing_system7_vip_v1_0_5
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_2 questa_lib/msim/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 questa_lib/msim/lib_fifo_v1_0_11
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 questa_lib/msim/lib_bmg_v1_0_10
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_19 questa_lib/msim/axi_datamover_v5_1_19
vmap axi_vdma_v6_3_5 questa_lib/msim/axi_vdma_v6_3_5
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_18 questa_lib/msim/axis_data_fifo_v1_1_18
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_12 questa_lib/msim/v_tc_v6_1_12
vmap v_vid_in_axi4s_v4_0_8 questa_lib/msim/v_vid_in_axi4s_v4_0_8
vmap v_axi4s_vid_out_v4_0_9 questa_lib/msim/v_axi4s_vid_out_v4_0_9
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap xlslice_v1_0_1 questa_lib/msim/xlslice_v1_0_1
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 questa_lib/msim/axi_register_slice_v2_1_17
vmap axi_data_fifo_v2_1_16 questa_lib/msim/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 questa_lib/msim/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 questa_lib/msim/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lib -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec17/hdl/axi_reg32_v1_0_S_AXI.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec17/hdl/axi_reg32_v1_0.vhd" \
"../../../bd/zsys/ip/zsys_axi_reg32_0_0/sim/zsys_axi_reg32_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_processing_system7_0_0/sim/zsys_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_rst_processing_system7_0_50M_0/sim/zsys_rst_processing_system7_0_50M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_19 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_5 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_5 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_axi_vdma_0_0/sim/zsys_axi_vdma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_18 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5738/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_axis_data_fifo_0_0/sim/zsys_axis_data_fifo_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
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

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -64 -93 \
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

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/zsys/ip/zsys_clk_wiz_1_0/zsys_clk_wiz_1_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_12 -64 -93 \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/6694/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_8 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/d987/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_9 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/9a07/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_v_axi4s_vid_out_0_0/sim/zsys_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/ip/zsys_v_tc_0_0/sim/zsys_v_tc_0_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_xlconcat_0_0/sim/zsys_xlconcat_0_0.v" \

vlog -work xlslice_v1_0_1 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_xlslice_0_0/sim/zsys_xlslice_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_xbar_0/sim/zsys_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/zsys/sim/zsys.vhd" \

vlog -work axi_protocol_converter_v2_1_17 -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/verilog" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b37e/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/0ab1/hdl" "+incdir+../../../../zb-cam-1.srcs/sources_1/bd/zsys/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/zsys/ip/zsys_auto_pc_6/sim/zsys_auto_pc_6.v" \
"../../../bd/zsys/ip/zsys_auto_pc_5/sim/zsys_auto_pc_5.v" \
"../../../bd/zsys/ip/zsys_auto_pc_4/sim/zsys_auto_pc_4.v" \
"../../../bd/zsys/ip/zsys_auto_pc_3/sim/zsys_auto_pc_3.v" \
"../../../bd/zsys/ip/zsys_auto_pc_2/sim/zsys_auto_pc_2.v" \
"../../../bd/zsys/ip/zsys_auto_pc_7/sim/zsys_auto_pc_7.v" \
"../../../bd/zsys/ip/zsys_auto_pc_1/sim/zsys_auto_pc_1.v" \
"../../../bd/zsys/ip/zsys_auto_pc_0/sim/zsys_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

