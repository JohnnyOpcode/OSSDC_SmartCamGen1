library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vbacc_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI_CFG
		C_S00_AXI_CFG_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_CFG_ADDR_WIDTH	: integer	:= 11;

		-- Parameters of Axi Slave Bus Interface S00_AXIS_VIDEO
		C_S00_AXIS_VIDEO_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M00_AXI_STATUS
		C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M00_AXI_STATUS_BURST_LEN	: integer	:= 16;
		C_M00_AXI_STATUS_ID_WIDTH	: integer	:= 1;
		C_M00_AXI_STATUS_ADDR_WIDTH	: integer	:= 32;
		C_M00_AXI_STATUS_DATA_WIDTH	: integer	:= 32;
		C_M00_AXI_STATUS_AWUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_STATUS_ARUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_STATUS_WUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_STATUS_RUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_STATUS_BUSER_WIDTH	: integer	:= 0;

		-- Parameters of Axi Master Bus Interface M00_AXIS_VIDEO
		C_M00_AXIS_VIDEO_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_VIDEO_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI_CFG
		s00_axi_cfg_aclk	: in std_logic;
		s00_axi_cfg_aresetn	: in std_logic;
		s00_axi_cfg_awaddr	: in std_logic_vector(C_S00_AXI_CFG_ADDR_WIDTH-1 downto 0);
		s00_axi_cfg_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_cfg_awvalid	: in std_logic;
		s00_axi_cfg_awready	: out std_logic;
		s00_axi_cfg_wdata	: in std_logic_vector(C_S00_AXI_CFG_DATA_WIDTH-1 downto 0);
		s00_axi_cfg_wstrb	: in std_logic_vector((C_S00_AXI_CFG_DATA_WIDTH/8)-1 downto 0);
		s00_axi_cfg_wvalid	: in std_logic;
		s00_axi_cfg_wready	: out std_logic;
		s00_axi_cfg_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_cfg_bvalid	: out std_logic;
		s00_axi_cfg_bready	: in std_logic;
		s00_axi_cfg_araddr	: in std_logic_vector(C_S00_AXI_CFG_ADDR_WIDTH-1 downto 0);
		s00_axi_cfg_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_cfg_arvalid	: in std_logic;
		s00_axi_cfg_arready	: out std_logic;
		s00_axi_cfg_rdata	: out std_logic_vector(C_S00_AXI_CFG_DATA_WIDTH-1 downto 0);
		s00_axi_cfg_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_cfg_rvalid	: out std_logic;
		s00_axi_cfg_rready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS_VIDEO
		s00_axis_video_aclk	: in std_logic;
		s00_axis_video_aresetn	: in std_logic;
		s00_axis_video_tready	: out std_logic;
		s00_axis_video_tdata	: in std_logic_vector(C_S00_AXIS_VIDEO_TDATA_WIDTH-1 downto 0);
		s00_axis_video_tstrb	: in std_logic_vector((C_S00_AXIS_VIDEO_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_video_tlast	: in std_logic;
		s00_axis_video_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXI_STATUS
		m00_axi_status_init_axi_txn	: in std_logic;
		m00_axi_status_txn_done	: out std_logic;
		m00_axi_status_error	: out std_logic;
		m00_axi_status_aclk	: in std_logic;
		m00_axi_status_aresetn	: in std_logic;
		m00_axi_status_awid	: out std_logic_vector(C_M00_AXI_STATUS_ID_WIDTH-1 downto 0);
		m00_axi_status_awaddr	: out std_logic_vector(C_M00_AXI_STATUS_ADDR_WIDTH-1 downto 0);
		m00_axi_status_awlen	: out std_logic_vector(7 downto 0);
		m00_axi_status_awsize	: out std_logic_vector(2 downto 0);
		m00_axi_status_awburst	: out std_logic_vector(1 downto 0);
		m00_axi_status_awlock	: out std_logic;
		m00_axi_status_awcache	: out std_logic_vector(3 downto 0);
		m00_axi_status_awprot	: out std_logic_vector(2 downto 0);
		m00_axi_status_awqos	: out std_logic_vector(3 downto 0);
		m00_axi_status_awuser	: out std_logic_vector(C_M00_AXI_STATUS_AWUSER_WIDTH-1 downto 0);
		m00_axi_status_awvalid	: out std_logic;
		m00_axi_status_awready	: in std_logic;
		m00_axi_status_wdata	: out std_logic_vector(C_M00_AXI_STATUS_DATA_WIDTH-1 downto 0);
		m00_axi_status_wstrb	: out std_logic_vector(C_M00_AXI_STATUS_DATA_WIDTH/8-1 downto 0);
		m00_axi_status_wlast	: out std_logic;
		m00_axi_status_wuser	: out std_logic_vector(C_M00_AXI_STATUS_WUSER_WIDTH-1 downto 0);
		m00_axi_status_wvalid	: out std_logic;
		m00_axi_status_wready	: in std_logic;
		m00_axi_status_bid	: in std_logic_vector(C_M00_AXI_STATUS_ID_WIDTH-1 downto 0);
		m00_axi_status_bresp	: in std_logic_vector(1 downto 0);
		m00_axi_status_buser	: in std_logic_vector(C_M00_AXI_STATUS_BUSER_WIDTH-1 downto 0);
		m00_axi_status_bvalid	: in std_logic;
		m00_axi_status_bready	: out std_logic;
		m00_axi_status_arid	: out std_logic_vector(C_M00_AXI_STATUS_ID_WIDTH-1 downto 0);
		m00_axi_status_araddr	: out std_logic_vector(C_M00_AXI_STATUS_ADDR_WIDTH-1 downto 0);
		m00_axi_status_arlen	: out std_logic_vector(7 downto 0);
		m00_axi_status_arsize	: out std_logic_vector(2 downto 0);
		m00_axi_status_arburst	: out std_logic_vector(1 downto 0);
		m00_axi_status_arlock	: out std_logic;
		m00_axi_status_arcache	: out std_logic_vector(3 downto 0);
		m00_axi_status_arprot	: out std_logic_vector(2 downto 0);
		m00_axi_status_arqos	: out std_logic_vector(3 downto 0);
		m00_axi_status_aruser	: out std_logic_vector(C_M00_AXI_STATUS_ARUSER_WIDTH-1 downto 0);
		m00_axi_status_arvalid	: out std_logic;
		m00_axi_status_arready	: in std_logic;
		m00_axi_status_rid	: in std_logic_vector(C_M00_AXI_STATUS_ID_WIDTH-1 downto 0);
		m00_axi_status_rdata	: in std_logic_vector(C_M00_AXI_STATUS_DATA_WIDTH-1 downto 0);
		m00_axi_status_rresp	: in std_logic_vector(1 downto 0);
		m00_axi_status_rlast	: in std_logic;
		m00_axi_status_ruser	: in std_logic_vector(C_M00_AXI_STATUS_RUSER_WIDTH-1 downto 0);
		m00_axi_status_rvalid	: in std_logic;
		m00_axi_status_rready	: out std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS_VIDEO
		m00_axis_video_aclk	: in std_logic;
		m00_axis_video_aresetn	: in std_logic;
		m00_axis_video_tvalid	: out std_logic;
		m00_axis_video_tdata	: out std_logic_vector(C_M00_AXIS_VIDEO_TDATA_WIDTH-1 downto 0);
		m00_axis_video_tstrb	: out std_logic_vector((C_M00_AXIS_VIDEO_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_video_tlast	: out std_logic;
		m00_axis_video_tready	: in std_logic
	);
end vbacc_v1_0;

architecture arch_imp of vbacc_v1_0 is

	-- component declaration
	component vbacc_v1_0_S00_AXI_CFG is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 11
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component vbacc_v1_0_S00_AXI_CFG;

	component vbacc_v1_0_S00_AXIS_VIDEO is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component vbacc_v1_0_S00_AXIS_VIDEO;

	component vbacc_v1_0_M00_AXI_STATUS is
		generic (
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_BURST_LEN	: integer	:= 16;
		C_M_AXI_ID_WIDTH	: integer	:= 1;
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		TXN_DONE	: out std_logic;
		ERROR	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWLEN	: out std_logic_vector(7 downto 0);
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		M_AXI_AWLOCK	: out std_logic;
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WLAST	: out std_logic;
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARLEN	: out std_logic_vector(7 downto 0);
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		M_AXI_ARLOCK	: out std_logic;
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RLAST	: in std_logic;
		M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component vbacc_v1_0_M00_AXI_STATUS;

	component vbacc_v1_0_M00_AXIS_VIDEO is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component vbacc_v1_0_M00_AXIS_VIDEO;

begin

-- Instantiation of Axi Bus Interface S00_AXI_CFG
vbacc_v1_0_S00_AXI_CFG_inst : vbacc_v1_0_S00_AXI_CFG
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_CFG_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_CFG_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_cfg_aclk,
		S_AXI_ARESETN	=> s00_axi_cfg_aresetn,
		S_AXI_AWADDR	=> s00_axi_cfg_awaddr,
		S_AXI_AWPROT	=> s00_axi_cfg_awprot,
		S_AXI_AWVALID	=> s00_axi_cfg_awvalid,
		S_AXI_AWREADY	=> s00_axi_cfg_awready,
		S_AXI_WDATA	=> s00_axi_cfg_wdata,
		S_AXI_WSTRB	=> s00_axi_cfg_wstrb,
		S_AXI_WVALID	=> s00_axi_cfg_wvalid,
		S_AXI_WREADY	=> s00_axi_cfg_wready,
		S_AXI_BRESP	=> s00_axi_cfg_bresp,
		S_AXI_BVALID	=> s00_axi_cfg_bvalid,
		S_AXI_BREADY	=> s00_axi_cfg_bready,
		S_AXI_ARADDR	=> s00_axi_cfg_araddr,
		S_AXI_ARPROT	=> s00_axi_cfg_arprot,
		S_AXI_ARVALID	=> s00_axi_cfg_arvalid,
		S_AXI_ARREADY	=> s00_axi_cfg_arready,
		S_AXI_RDATA	=> s00_axi_cfg_rdata,
		S_AXI_RRESP	=> s00_axi_cfg_rresp,
		S_AXI_RVALID	=> s00_axi_cfg_rvalid,
		S_AXI_RREADY	=> s00_axi_cfg_rready
	);

-- Instantiation of Axi Bus Interface S00_AXIS_VIDEO
vbacc_v1_0_S00_AXIS_VIDEO_inst : vbacc_v1_0_S00_AXIS_VIDEO
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_VIDEO_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s00_axis_video_aclk,
		S_AXIS_ARESETN	=> s00_axis_video_aresetn,
		S_AXIS_TREADY	=> s00_axis_video_tready,
		S_AXIS_TDATA	=> s00_axis_video_tdata,
		S_AXIS_TSTRB	=> s00_axis_video_tstrb,
		S_AXIS_TLAST	=> s00_axis_video_tlast,
		S_AXIS_TVALID	=> s00_axis_video_tvalid
	);

-- Instantiation of Axi Bus Interface M00_AXI_STATUS
vbacc_v1_0_M00_AXI_STATUS_inst : vbacc_v1_0_M00_AXI_STATUS
	generic map (
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_M00_AXI_STATUS_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_BURST_LEN	=> C_M00_AXI_STATUS_BURST_LEN,
		C_M_AXI_ID_WIDTH	=> C_M00_AXI_STATUS_ID_WIDTH,
		C_M_AXI_ADDR_WIDTH	=> C_M00_AXI_STATUS_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_M00_AXI_STATUS_DATA_WIDTH,
		C_M_AXI_AWUSER_WIDTH	=> C_M00_AXI_STATUS_AWUSER_WIDTH,
		C_M_AXI_ARUSER_WIDTH	=> C_M00_AXI_STATUS_ARUSER_WIDTH,
		C_M_AXI_WUSER_WIDTH	=> C_M00_AXI_STATUS_WUSER_WIDTH,
		C_M_AXI_RUSER_WIDTH	=> C_M00_AXI_STATUS_RUSER_WIDTH,
		C_M_AXI_BUSER_WIDTH	=> C_M00_AXI_STATUS_BUSER_WIDTH
	)
	port map (
		INIT_AXI_TXN	=> m00_axi_status_init_axi_txn,
		TXN_DONE	=> m00_axi_status_txn_done,
		ERROR	=> m00_axi_status_error,
		M_AXI_ACLK	=> m00_axi_status_aclk,
		M_AXI_ARESETN	=> m00_axi_status_aresetn,
		M_AXI_AWID	=> m00_axi_status_awid,
		M_AXI_AWADDR	=> m00_axi_status_awaddr,
		M_AXI_AWLEN	=> m00_axi_status_awlen,
		M_AXI_AWSIZE	=> m00_axi_status_awsize,
		M_AXI_AWBURST	=> m00_axi_status_awburst,
		M_AXI_AWLOCK	=> m00_axi_status_awlock,
		M_AXI_AWCACHE	=> m00_axi_status_awcache,
		M_AXI_AWPROT	=> m00_axi_status_awprot,
		M_AXI_AWQOS	=> m00_axi_status_awqos,
		M_AXI_AWUSER	=> m00_axi_status_awuser,
		M_AXI_AWVALID	=> m00_axi_status_awvalid,
		M_AXI_AWREADY	=> m00_axi_status_awready,
		M_AXI_WDATA	=> m00_axi_status_wdata,
		M_AXI_WSTRB	=> m00_axi_status_wstrb,
		M_AXI_WLAST	=> m00_axi_status_wlast,
		M_AXI_WUSER	=> m00_axi_status_wuser,
		M_AXI_WVALID	=> m00_axi_status_wvalid,
		M_AXI_WREADY	=> m00_axi_status_wready,
		M_AXI_BID	=> m00_axi_status_bid,
		M_AXI_BRESP	=> m00_axi_status_bresp,
		M_AXI_BUSER	=> m00_axi_status_buser,
		M_AXI_BVALID	=> m00_axi_status_bvalid,
		M_AXI_BREADY	=> m00_axi_status_bready,
		M_AXI_ARID	=> m00_axi_status_arid,
		M_AXI_ARADDR	=> m00_axi_status_araddr,
		M_AXI_ARLEN	=> m00_axi_status_arlen,
		M_AXI_ARSIZE	=> m00_axi_status_arsize,
		M_AXI_ARBURST	=> m00_axi_status_arburst,
		M_AXI_ARLOCK	=> m00_axi_status_arlock,
		M_AXI_ARCACHE	=> m00_axi_status_arcache,
		M_AXI_ARPROT	=> m00_axi_status_arprot,
		M_AXI_ARQOS	=> m00_axi_status_arqos,
		M_AXI_ARUSER	=> m00_axi_status_aruser,
		M_AXI_ARVALID	=> m00_axi_status_arvalid,
		M_AXI_ARREADY	=> m00_axi_status_arready,
		M_AXI_RID	=> m00_axi_status_rid,
		M_AXI_RDATA	=> m00_axi_status_rdata,
		M_AXI_RRESP	=> m00_axi_status_rresp,
		M_AXI_RLAST	=> m00_axi_status_rlast,
		M_AXI_RUSER	=> m00_axi_status_ruser,
		M_AXI_RVALID	=> m00_axi_status_rvalid,
		M_AXI_RREADY	=> m00_axi_status_rready
	);

-- Instantiation of Axi Bus Interface M00_AXIS_VIDEO
vbacc_v1_0_M00_AXIS_VIDEO_inst : vbacc_v1_0_M00_AXIS_VIDEO
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_VIDEO_TDATA_WIDTH,
		C_M_START_COUNT	=> C_M00_AXIS_VIDEO_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> m00_axis_video_aclk,
		M_AXIS_ARESETN	=> m00_axis_video_aresetn,
		M_AXIS_TVALID	=> m00_axis_video_tvalid,
		M_AXIS_TDATA	=> m00_axis_video_tdata,
		M_AXIS_TSTRB	=> m00_axis_video_tstrb,
		M_AXIS_TLAST	=> m00_axis_video_tlast,
		M_AXIS_TREADY	=> m00_axis_video_tready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
