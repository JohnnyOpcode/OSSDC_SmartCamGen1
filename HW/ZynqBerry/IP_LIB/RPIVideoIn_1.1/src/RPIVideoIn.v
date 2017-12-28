//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
//Date        : Fri Aug  4 08:29:28 2017
//Host        : DEV-WIN10 running 64-bit major release  (build 9200)
//Command     : generate_target RPIVideoIn.bd
//Design      : RPIVideoIn
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RPIVideoIn,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RPIVideoIn,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "RPIVideoIn.hwdef" *) 
module RPIVideoIn
   (M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    axi_aresetn,
    csi_clk_n,
    csi_clk_p,
    csi_data_lp_n,
    csi_data_lp_p,
    csi_data_n,
    csi_data_p,
    enable_in,
    m_axis_aclk,
    ref_clk_in);
  output [31:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tuser;
  output M_AXIS_tvalid;
  input [0:0]axi_aresetn;
  input csi_clk_n;
  input csi_clk_p;
  input [0:0]csi_data_lp_n;
  input [0:0]csi_data_lp_p;
  input [1:0]csi_data_n;
  input [1:0]csi_data_p;
  input enable_in;
  input m_axis_aclk;
  input ref_clk_in;

  wire [15:0]Conn2_TDATA;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire Conn2_TUSER;
  wire Conn2_TVALID;
  wire [15:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_0_M_AXIS_TUSER;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [31:0]axis_raw_demosaic_0_M_AXIS_TDATA;
  wire axis_raw_demosaic_0_M_AXIS_TLAST;
  wire axis_raw_demosaic_0_M_AXIS_TREADY;
  wire axis_raw_demosaic_0_M_AXIS_TUSER;
  wire axis_raw_demosaic_0_M_AXIS_TVALID;
  wire [15:0]axis_raw_unpack_0_M_AXIS_TDATA;
  wire axis_raw_unpack_0_M_AXIS_TLAST;
  wire axis_raw_unpack_0_M_AXIS_TREADY;
  wire axis_raw_unpack_0_M_AXIS_TUSER;
  wire axis_raw_unpack_0_M_AXIS_TVALID;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS;
  wire [7:0]csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS;
  wire [7:0]csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS;
  wire csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS;
  wire csi_clk_n_1;
  wire csi_clk_p_1;
  wire [0:0]csi_data_lp_n_1;
  wire [0:0]csi_data_lp_p_1;
  wire [1:0]csi_data_n_1;
  wire [1:0]csi_data_p_1;
  wire [1:0]csi_to_axis_0_data_err;
  wire enable_in_1;
  wire m_axi_aclk;
  wire [0:0]m_axis_aresetn_1;
  wire ref_clk_in_1;
  wire s_axis_aclk_1;

  assign M_AXIS_tdata[31:0] = axis_raw_demosaic_0_M_AXIS_TDATA;
  assign M_AXIS_tlast = axis_raw_demosaic_0_M_AXIS_TLAST;
  assign M_AXIS_tuser = axis_raw_demosaic_0_M_AXIS_TUSER;
  assign M_AXIS_tvalid = axis_raw_demosaic_0_M_AXIS_TVALID;
  assign axis_raw_demosaic_0_M_AXIS_TREADY = M_AXIS_tready;
  assign csi_clk_n_1 = csi_clk_n;
  assign csi_clk_p_1 = csi_clk_p;
  assign csi_data_lp_n_1 = csi_data_lp_n[0];
  assign csi_data_lp_p_1 = csi_data_lp_p[0];
  assign csi_data_n_1 = csi_data_n[1:0];
  assign csi_data_p_1 = csi_data_p[1:0];
  assign enable_in_1 = enable_in;
  assign m_axi_aclk = m_axis_aclk;
  assign m_axis_aresetn_1 = axi_aresetn[0];
  assign ref_clk_in_1 = ref_clk_in;
  RPIVideoIn_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_aclk(m_axi_aclk),
        .m_axis_aresetn(m_axis_aresetn_1),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(s_axis_aclk_1),
        .s_axis_aresetn(m_axis_aresetn_1),
        .s_axis_tdata(Conn2_TDATA),
        .s_axis_tlast(Conn2_TLAST),
        .s_axis_tready(Conn2_TREADY),
        .s_axis_tuser(Conn2_TUSER),
        .s_axis_tvalid(Conn2_TVALID));
  RPIVideoIn_axis_raw_demosaic_0_0 axis_raw_demosaic_0
       (.m_axis_aclk(m_axi_aclk),
        .m_axis_aresetn(m_axis_aresetn_1),
        .m_axis_tdata(axis_raw_demosaic_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_raw_demosaic_0_M_AXIS_TLAST),
        .m_axis_tready(axis_raw_demosaic_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_raw_demosaic_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_raw_demosaic_0_M_AXIS_TVALID),
        .s_axis_aclk(m_axi_aclk),
        .s_axis_aresetn(m_axis_aresetn_1),
        .s_axis_tdata(axis_raw_unpack_0_M_AXIS_TDATA),
        .s_axis_tlast(axis_raw_unpack_0_M_AXIS_TLAST),
        .s_axis_tready(axis_raw_unpack_0_M_AXIS_TREADY),
        .s_axis_tuser(axis_raw_unpack_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_raw_unpack_0_M_AXIS_TVALID));
  RPIVideoIn_axis_raw_unpack_0_0 axis_raw_unpack_0
       (.m_axis_aclk(m_axi_aclk),
        .m_axis_aresetn(m_axis_aresetn_1),
        .m_axis_tdata(axis_raw_unpack_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_raw_unpack_0_M_AXIS_TLAST),
        .m_axis_tready(axis_raw_unpack_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_raw_unpack_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_raw_unpack_0_M_AXIS_TVALID),
        .s_axis_aclk(m_axi_aclk),
        .s_axis_aresetn(m_axis_aresetn_1),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  RPIVideoIn_csi_d_phy_rx_0_0 csi_d_phy_rx_0
       (.cl_enable(csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE),
        .cl_rxclkactivehs(csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS),
        .cl_stopstate(csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE),
        .clk_rxn(csi_clk_n_1),
        .clk_rxp(csi_clk_p_1),
        .data_err(csi_to_axis_0_data_err),
        .data_lp_n(csi_data_lp_n_1),
        .data_lp_p(csi_data_lp_p_1),
        .data_rxn(csi_data_n_1),
        .data_rxp(csi_data_p_1),
        .dl0_datahs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS),
        .dl0_enable(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE),
        .dl0_rxactivehs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS),
        .dl0_rxsynchs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS),
        .dl0_rxvalidhs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS),
        .dl1_datahs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS),
        .dl1_enable(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE),
        .dl1_rxactivehs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS),
        .dl1_rxsynchs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS),
        .dl1_rxvalidhs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS),
        .dl2_enable(1'b1),
        .dl3_enable(1'b1),
        .in_delay_clk(ref_clk_in_1),
        .rxbyteclkhs(s_axis_aclk_1));
  RPIVideoIn_csi_to_axis_0_0 csi_to_axis_0
       (.cl_enable(csi2_d_phy_rx_0_RX_MIPI_PPI_CL_ENABLE),
        .cl_rxclkactivehs(csi2_d_phy_rx_0_RX_MIPI_PPI_CL_RXCLKACTIVEHS),
        .cl_stopstate(csi2_d_phy_rx_0_RX_MIPI_PPI_CL_STOPSTATE),
        .data_err(csi_to_axis_0_data_err),
        .dl0_datahs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXDATAHS),
        .dl0_enable(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_ENABLE),
        .dl0_rxactivehs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXACTIVEHS),
        .dl0_rxsynchs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXSYNCHS),
        .dl0_rxvalidhs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL0_RXVALIDHS),
        .dl1_datahs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXDATAHS),
        .dl1_enable(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_ENABLE),
        .dl1_rxactivehs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXACTIVEHS),
        .dl1_rxsynchs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXSYNCHS),
        .dl1_rxvalidhs(csi2_d_phy_rx_0_RX_MIPI_PPI_DL1_RXVALIDHS),
        .enable_in(enable_in_1),
        .m_axis_aclk(s_axis_aclk_1),
        .m_axis_aresetn(m_axis_aresetn_1),
        .m_axis_tdata(Conn2_TDATA),
        .m_axis_tlast(Conn2_TLAST),
        .m_axis_tready(Conn2_TREADY),
        .m_axis_tuser(Conn2_TUSER),
        .m_axis_tvalid(Conn2_TVALID),
        .rxbyteclkhs(s_axis_aclk_1));
endmodule
