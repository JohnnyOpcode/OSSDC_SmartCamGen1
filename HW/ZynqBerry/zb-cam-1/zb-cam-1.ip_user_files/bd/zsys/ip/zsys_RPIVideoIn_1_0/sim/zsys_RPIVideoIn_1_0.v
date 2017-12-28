// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: OSSDC.org:user:RPIVideoIn:1.1
// IP Revision: 2

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module zsys_RPIVideoIn_1_0 (
  M_AXIS_tdata,
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
  ref_clk_in
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [31 : 0] M_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
output wire M_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire M_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
output wire M_AXIS_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, LAYERED_METADATA undef, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK3" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire M_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_ARESETN, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_ARESETN RST" *)
input wire [0 : 0] axi_aresetn;
input wire csi_clk_n;
input wire csi_clk_p;
input wire [0 : 0] csi_data_lp_n;
input wire [0 : 0] csi_data_lp_p;
input wire [1 : 0] csi_data_n;
input wire [1 : 0] csi_data_p;
input wire enable_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M_AXIS_ACLK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET axi_aresetn, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK3" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M_AXIS_ACLK CLK" *)
input wire m_axis_aclk;
input wire ref_clk_in;

  RPIVideoIn inst (
    .M_AXIS_tdata(M_AXIS_tdata),
    .M_AXIS_tlast(M_AXIS_tlast),
    .M_AXIS_tready(M_AXIS_tready),
    .M_AXIS_tuser(M_AXIS_tuser),
    .M_AXIS_tvalid(M_AXIS_tvalid),
    .axi_aresetn(axi_aresetn),
    .csi_clk_n(csi_clk_n),
    .csi_clk_p(csi_clk_p),
    .csi_data_lp_n(csi_data_lp_n),
    .csi_data_lp_p(csi_data_lp_p),
    .csi_data_n(csi_data_n),
    .csi_data_p(csi_data_p),
    .enable_in(enable_in),
    .m_axis_aclk(m_axis_aclk),
    .ref_clk_in(ref_clk_in)
  );
endmodule
