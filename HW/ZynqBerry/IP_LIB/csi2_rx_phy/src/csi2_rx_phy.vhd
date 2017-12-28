----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;
----------------------------------------------------------------------------------
entity csi2_rx_phy is 
generic (
	C_NUM_LANES 			: integer range 1 to 4 := 2;	-- Number of data lanes
	C_NUM_LP_LANES 			: integer range 1 to 4 := 1; -- Number of lanes that support LP input
	C_DATA_USE_LP 			: boolean := false;	-- True if DATA lanes habve LP detect circuitry
	C_CLK_USE_LP 			: boolean := false;	 -- True if CLK lane has LP detect circuitry
	
	C_CLK_SWAP 				: boolean := false;	   -- Polarity of CLK Lane
	C_D0_SWAP 				: boolean := false;
	C_D1_SWAP 				: boolean := false;
	C_D2_SWAP 				: boolean := false;
	C_D3_SWAP 				: boolean := false;
	-------------------------------------------------------------------------------
	C_DIFF_TERM				: BOOLEAN				:= FALSE;
	C_ADD_IDELAYCTRL		: BOOLEAN				:= FALSE;
	C_IODELAY_GROUP			: string				:= "csi_dly_grp";
	C_START_DELAY			: INTEGER range 0 to 31	:= 0
	
);
port ( 
	clk_rxp : in  STD_LOGIC;
	clk_rxn : in  STD_LOGIC;

	clk_lp_p : in  STD_LOGIC;
	clk_lp_n : in  STD_LOGIC;

	data_rxp : in  STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
	data_rxn : in  STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
	
	data_lp_p : in  STD_LOGIC_VECTOR(C_NUM_LP_LANES-1 downto 0);
	data_lp_n : in  STD_LOGIC_VECTOR(C_NUM_LP_LANES-1 downto 0);

	in_delay_tap_out: out STD_LOGIC_VECTOR(4 downto 0);
	in_delay_tap_in: in  STD_LOGIC_VECTOR(4 downto 0);
	in_delay_reset: in  STD_LOGIC;
	in_data_ce: in  STD_LOGIC := '0';
	in_data_ld: in  STD_LOGIC := '0';
	in_data_inc: in  STD_LOGIC := '0';
	in_delay_clk: in  STD_LOGIC := '0';
		
	
	-- debug
	dbg_lp_p  : out STD_LOGIC; -- 
	dbg_lp_n  : out STD_LOGIC; --	 
	-------------------------------------------------------------------------------------
	-- MIPI PPI 
	rxbyteclkhs			: out STD_LOGIC; -- Main byte clock bitrate/8  
	rxddrclkhs 			: out STD_LOGIC; -- not in Xilinx IP (internal, but defined in PPI: RxDDRClkHS)
	cl_enable			: in  STD_LOGIC := '1';	 -- PPI ShutDown ?
	cl_stopstate		: out STD_LOGIC;	-- PPI StopState
	cl_rxclkactivehs 	: out STD_LOGIC;	-- optional, PPI RxClkActiveHS
	dl0_enable	   		: in  STD_LOGIC := '1';
	dl0_rxactivehs   	: out STD_LOGIC; --
	dl0_rxvalidhs		: out STD_LOGIC; --
	dl0_rxsynchs	 	: out STD_LOGIC; --
	dl0_datahs	   		: out STD_LOGIC_VECTOR(7 downto 0); --
	dl1_enable	   		: in  STD_LOGIC := '1';
	dl1_rxactivehs   	: out STD_LOGIC; --
	dl1_rxvalidhs		: out STD_LOGIC; --
	dl1_rxsynchs	 	: out STD_LOGIC; --
	dl1_datahs	   		: out STD_LOGIC_VECTOR(7 downto 0); --
	-------------------------------------------------------------------------------------
	-- Xilinx IP Core ports 
	mmcm_lock_out : out STD_LOGIC; --
	pll_lock_out : out STD_LOGIC; --
	
	system_rst_out : out STD_LOGIC;
		
	core_clk : in  STD_LOGIC;
	core_rst : in  STD_LOGIC
	);
end csi2_rx_phy;
----------------------------------------------------------------------------------
architecture Behavioral of csi2_rx_phy is
----------------------------------------------------------------------------------
component clock_system is
generic (
	C_DIFF_TERM				: BOOLEAN					:= FALSE;
	C_IODELAY_GROUP			: STRING					:= "csi_dly_grp";
	C_START_DELAY			: INTEGER range 0 to 31		:= 0
);
port (
	in_clk_p				: in  STD_LOGIC;
	in_clk_n				: in  STD_LOGIC;
	in_ref_clk				: in  STD_LOGIC;
	out_dclk				: out STD_LOGIC;
	out_pclk				: out STD_LOGIC;
	out_uclk				: out STD_LOGIC
);
end component;

component line_if is
generic (
	C_DIFF_TERM				: BOOLEAN					:= FALSE
);
port (
	in_d_p					: in  STD_LOGIC;
	in_d_n					: in  STD_LOGIC;
	in_pclk					: in  STD_LOGIC;
	in_dclk					: in  STD_LOGIC;
	in_rst					: in  STD_LOGIC;
	out_data				: out STD_LOGIC_VECTOR(7 downto 0)
);
end component;

----------------------------------------------------------------------------------
attribute IODELAY_GROUP 	: string;
signal dclk					: STD_LOGIC;
signal pclk					: STD_LOGIC;
signal uclk					: STD_LOGIC;
signal raw_valid			: STD_LOGIC;
signal prev_raw_valid		: STD_LOGIC;
signal line_raw_sync		: STD_LOGIC;
signal line_raw_out			: STD_LOGIC_VECTOR(C_NUM_LANES*8-1 downto 0);
signal rst_iserdes			: STD_LOGIC;
----------------------------------------------------------------------------------

-- signal clk_rxp_i : STD_LOGIC;
-- signal clk_rxn_i : STD_LOGIC;

-- signal clk_rxp_i_del : STD_LOGIC;
-- signal clk_rxn_i_del : STD_LOGIC;

-- signal data_rxp_i : STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);
-- signal data_rxn_i : STD_LOGIC_VECTOR(C_NUM_LANES-1 downto 0);

-- signal rxddrclkhs_i : STD_LOGIC;
-- signal clk_bufg : STD_LOGIC;
-- signal clk_bufmr : STD_LOGIC;
-- signal clk_bufr : STD_LOGIC;
-- signal clk_bufio : STD_LOGIC;
-- signal clk_bufio_n : STD_LOGIC;

-- signal rst_iserdes : STD_LOGIC;
-- signal rst_bufmr : STD_LOGIC;

-- --
-- --signal data_ddr : STD_LOGIC_VECTOR(C_NUM_LANES*2-1 downto 0);
-- signal data_ddr : STD_LOGIC_VECTOR(7 downto 0);

-- signal data_iserdes : STD_LOGIC_VECTOR(C_NUM_LANES*8-1 downto 0);

-- signal dl0_datahs_i : STD_LOGIC_VECTOR(7 downto 0); --
-- signal dl1_datahs_i : STD_LOGIC_VECTOR(7 downto 0); --
-- signal dl2_datahs_i : STD_LOGIC_VECTOR(7 downto 0); --
-- signal dl3_datahs_i : STD_LOGIC_VECTOR(7 downto 0); --

-- signal rxactivehs_i : STD_LOGIC;
-- signal ibuf_disable : STD_LOGIC;

-- --
-- signal dl_stopstate_i: STD_LOGIC_VECTOR(3 downto 0); --

-- signal in_data_ce_pulse : STD_LOGIC;
-- signal ce_sr: STD_LOGIC_VECTOR(2 downto 0); --
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
IDELAYCTRL_gen: if C_ADD_IDELAYCTRL = TRUE generate
attribute IODELAY_GROUP of IdlyCtrl_inst_0 : label is C_IODELAY_GROUP;
begin
	IdlyCtrl_inst_0 : IDELAYCTRL
	port map (
		REFCLK 			=> in_delay_clk,
		RST 			=> '0', 
		RDY 			=> open
	);
end generate;

clock_system_inst: clock_system
generic map(
	C_DIFF_TERM			=> C_DIFF_TERM,
	C_IODELAY_GROUP		=> C_IODELAY_GROUP,
	C_START_DELAY		=> C_START_DELAY
)
port map(
	in_clk_p			=> clk_rxp,
	in_clk_n			=> clk_rxn,
	in_ref_clk			=> in_delay_clk,
	out_dclk			=> dclk,
	out_pclk			=> pclk,
	out_uclk			=> uclk
);

rst_iserdes 			<= core_rst;

bits_gen: for i in 0 to C_NUM_LANES-1 generate
begin
	line_if_inst: line_if
	generic map(
		C_DIFF_TERM		=> C_DIFF_TERM
	)
	port map(
		in_d_p			=> data_rxp(i),
		in_d_n			=> data_rxn(i),
		in_pclk			=> pclk,
		in_dclk			=> dclk,
		in_rst			=> rst_iserdes,
		out_data		=> line_raw_out(i*8+7 downto i*8)
	);
end generate;

process(pclk)
begin
	if(pclk = '1' and pclk'event)then
		raw_valid			<= not (clk_lp_p or clk_lp_n);
		prev_raw_valid		<= raw_valid;
		if((prev_raw_valid = '0') and ((clk_lp_p or clk_lp_n) = '0'))then
			line_raw_sync	<= '1';
		else
			line_raw_sync	<= '0';
		end if;
	end if;
end process;

process(uclk)
begin
	if(uclk = '1' and uclk'event)then
		dl0_rxvalidhs		<= raw_valid;
		dl0_rxactivehs   	<= raw_valid;
		dl0_datahs	   		<= line_raw_out(7 downto 0);
		dl0_rxsynchs	 	<= line_raw_sync;
		dl1_rxvalidhs		<= raw_valid;
		dl1_rxactivehs   	<= raw_valid;
		dl1_datahs	   		<= line_raw_out(15 downto 8);
		dl1_rxsynchs	 	<= line_raw_sync;
	end if;
end process;

rxbyteclkhs			<= uclk; -- Main byte clock bitrate/8  
rxddrclkhs 			<= dclk; -- not in Xilinx IP (internal, but defined in PPI: RxDDRClkHS)
--cl_enable	 -- PPI ShutDown ?
cl_stopstate		<= '0';	-- PPI StopState
cl_rxclkactivehs 	<= '1';	-- optional, PPI RxClkActiveHS
--dl0_enable
--dl1_enable
mmcm_lock_out 		<= '1';
pll_lock_out 		<= '1';
system_rst_out 		<= '0';
----------------------------------------------------------------------------------	
	-- rxddrclkhs	  <= rxddrclkhs_i;
	-- cl_stopstate	<= '0';
	-- cl_rxclkactivehs	<= '1';

	-- dl_stopstate_i(0) <= (data_lp_p(0) and data_lp_n(0)); -- Lane 0 LP11
	
	-- --dl0_stopstate <= dl_stopstate_i(0); 


	-- dl0_rxactivehs <= rxactivehs_i;
	-- dl1_rxactivehs <= rxactivehs_i;
	
	-- rxactivehs_i <= not (data_lp_p(0) or data_lp_n(0));
	
	-- -- disable IBUF on data? 
	-- ibuf_disable <= not rxactivehs_i;
	 

	-- CLK_IBUFDS_inst : IBUFDS_DIFF_OUT_INTERMDISABLE
	-- generic map (
	-- DIFF_TERM	 => "FALSE",   -- Differential Termination 
	-- IBUF_LOW_PWR	  => "FALSE",   -- Low power "TRUE" vs. performance "FALSE" setting for referenced I/O standards
	-- IOSTANDARD	=> "DEFAULT", -- Specify the input I/O standard
	-- USE_IBUFDISABLE   => "FALSE")   -- Set to "TRUE" to enable IBUFDISABLE feature
	-- port map (
	-- O	  => clk_rxp_i,	 -- Buffer diff_p output
	-- OB	 => clk_rxn_i,	 -- Buffer diff_n output
	-- I	  => clk_rxp,	   -- Diff_p buffer input (connect directly to top-level port)
	-- IB	 => clk_rxn,	   -- Diff_n buffer input (connect directly to top-level port)
	-- IBUFDISABLE   => '0',	-- Buffer disable input, high=disable
	-- INTERMDISABLE => '1'	 -- Input termination disable
   -- );



	-- IDELAYE2_inst : IDELAYE2
	-- generic map (
	  -- CINVCTRL_SEL => "FALSE",	  -- Enable dynamic clock inversion (FALSE, TRUE)
	  -- DELAY_SRC => "IDATAIN",	-- Delay input (IDATAIN, DATAIN)
	  -- HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
	  -- IDELAY_TYPE => "VAR_LOAD",	-- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
	  -- IDELAY_VALUE => 7,		 -- Input delay tap setting (0-31)
	  -- PIPE_SEL => "FALSE",	   -- Select pipelined mode, FALSE, TRUE
	  -- REFCLK_FREQUENCY => 200.0,	-- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
	  -- SIGNAL_PATTERN => "CLOCK"	  -- DATA, CLOCK input signal
	-- )
	-- port map (
	  -- CNTVALUEOUT   => in_delay_tap_out, -- 5-bit output: Counter value output
	  -- DATAOUT	   => clk_rxp_i_del,	 -- 1-bit output: Delayed data output
	  -- C	  => in_delay_clk,		  -- 1-bit input: Clock input
	  -- CE	 => in_data_ce_pulse,		-- 1-bit input: Active high enable increment/decrement input
	  -- CINVCTRL	  => '0',	   -- 1-bit input: Dynamic clock inversion input
	  -- CNTVALUEIN	=> in_delay_tap_in,   -- 5-bit input: Counter value input
	  -- DATAIN	=> '0',	-- 1-bit input: Internal delay data input
	  -- IDATAIN	   => clk_rxp_i,	 -- 1-bit input: Data input from the I/O
	  -- INC	=> in_data_inc,		  -- 1-bit input: Increment / Decrement tap delay input
	  -- LD	 => in_data_ld,		-- 1-bit input: Load IDELAY_VALUE input
	  -- LDPIPEEN	  => '0',	   -- 1-bit input: Enable PIPELINE register to load data input
	  -- REGRST	=> in_delay_reset	 -- 1-bit input: Active-high reset tap-delay input
	-- );

	 
	-- in_data_ce_pulse <= ce_sr(2) xor ce_sr(1);   

-- process (in_delay_clk)
-- begin  
   -- if (in_delay_clk'event and in_delay_clk = '1') then
	-- ce_sr <= ce_sr(2 downto 1) & in_data_ce;
   -- end if;
-- end process;

	-- --rxddrclkhs_i <= clk_rxp_i;

	-- BUFG_inst : BUFG
	-- port map (
	-- O   => clk_bufg, -- 1-bit output: Clock output
	-- I   => clk_rxp_i_del  -- 1-bit input: Clock input
	-- );

	-- BUFMRCE_inst : BUFMRCE
	-- generic map (
	  -- CE_TYPE => "ASYNC", -- SYNC, ASYNC
	  -- INIT_OUT => 0	  -- Initial output and stopped polarity, (0-1)
	-- )
	-- port map (
	  -- O	 => clk_bufmr,   -- 1-bit output: Clock output (connect to BUFIOs/BUFRs)
	  -- CE	 => '1', -- 1-bit input: Active high buffer enable
	  -- I	 => clk_bufg	-- 1-bit input: Clock input (Connect to IBUF)
	-- );

	-- clk_bufio_n <= not clk_bufio;
	-- BUFIO_inst : BUFIO
	-- port map (
	  -- O	 => clk_bufio, -- 1-bit output: Clock output (connect to I/O clock loads).
	  -- I	 => clk_bufmr  -- 1-bit input: Clock input (connect to an IBUF or BUFMR).
	-- );

	-- BUFR_inst : BUFR
	-- generic map (
	  -- BUFR_DIVIDE => "4",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
	  -- SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
	-- )
	-- port map (
	  -- O	 => clk_bufr,	 -- 1-bit output: Clock output port
	  -- CE	=> '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
	  -- CLR   => rst_bufmr, -- 1-bit input: Active high, asynchronous clear (Divided modes only)
	  -- I	 => clk_bufmr	  -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
	-- );

	-- rxddrclkhs_i <= clk_bufg;



	-- rxbyteclkhs <= clk_bufr;

	-- rst_iserdes <= core_rst;
	-- rst_bufmr <= '0'; --core_rst;
	
	-- --
	-- -- Data lanes
	-- -- 
-- DATA_LANES:
	-- for i in 0 to C_NUM_LANES-1 generate
	-- begin
	-- DATA_IBUFDS_inst : IBUFDS_DIFF_OUT_INTERMDISABLE
	-- generic map (
	 -- DIFF_TERM	 => "FALSE",   -- Differential Termination 
	 -- IBUF_LOW_PWR	  => "FALSE",   -- Low power "TRUE" vs. performance "FALSE" setting for referenced I/O standards
	 -- IOSTANDARD	=> "DEFAULT", -- Specify the input I/O standard
	 -- USE_IBUFDISABLE   => "FALSE")   -- Set to "TRUE" to enable IBUFDISABLE feature
	-- port map (
	 -- O	  => data_rxp_i(i), -- Buffer diff_p output
	 -- OB	 => data_rxn_i(i), -- Buffer diff_n output
	 -- I	  => data_rxp(i),   -- Diff_p buffer input (connect directly to top-level port)
	 -- IB	 => data_rxn(i),   -- Diff_n buffer input (connect directly to top-level port)
	 -- IBUFDISABLE   => ibuf_disable,  -- Buffer disable input, high=disable
	 -- INTERMDISABLE => '1'	 -- Input termination disable
	-- );

-- --		DATA_IDDR_inst: IDDR
-- --			generic map (
-- --				DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
-- --				INIT_Q1	  => '0',
-- --				INIT_Q2	  => '0',
-- --				SRTYPE	   => "SYNC"
-- --			)
-- --			port map (
-- --				Q1 => data_ddr(2*i+0),
-- --				Q2 => data_ddr(2*i+1),
-- --				C  => rxddrclkhs_i,
-- --				CE => '1',
-- --				D  => data_rxp_i(i),
-- --				R  => '0',
-- --				S  => '0'
-- --			);

	-- ISERDESE2_inst : ISERDESE2
	-- generic map (
	  -- DATA_RATE => "DDR",	-- DDR, SDR
	  -- DATA_WIDTH => 8,	   -- Parallel data width (2-8,10,14)
	  -- DYN_CLKDIV_INV_EN => "FALSE", -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
	  -- DYN_CLK_INV_EN => "FALSE",	-- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
	  -- -- INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
	  -- INIT_Q1 => '0',
	  -- INIT_Q2 => '0',
	  -- INIT_Q3 => '0',
	  -- INIT_Q4 => '0',
	  -- INTERFACE_TYPE => "NETWORKING",   -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
	  -- IOBDELAY => "NONE",	-- NONE, BOTH, IBUF, IFD
	  -- NUM_CE => 2,		   -- Number of clock enables (1,2)
	  -- OFB_USED => "FALSE",	  -- Select OFB path (FALSE, TRUE)
	  -- SERDES_MODE => "MASTER",	  -- MASTER, SLAVE
	  -- -- SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
	  -- SRVAL_Q1 => '0',
	  -- SRVAL_Q2 => '0',
	  -- SRVAL_Q3 => '0',
	  -- SRVAL_Q4 => '0' 
	-- )
	-- port map (
	  -- O => open,		 -- 1-bit output: Combinatorial output
	  -- -- Q1 - Q8: 1-bit (each) output: Registered data outputs
	  -- Q1 => data_iserdes(i*8+7),
	  -- Q2 => data_iserdes(i*8+6),
	  -- Q3 => data_iserdes(i*8+5),
	  -- Q4 => data_iserdes(i*8+4),
	  -- Q5 => data_iserdes(i*8+3),
	  -- Q6 => data_iserdes(i*8+2),
	  -- Q7 => data_iserdes(i*8+1),
	  -- Q8 => data_iserdes(i*8+0),
	  -- -- SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
	  -- SHIFTOUT1 => open,
	  -- SHIFTOUT2 => open,
	  -- BITSLIP => '0',	-- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
			   -- -- CLKDIV when asserted (active High). Subsequently, the data seen on the
			   -- -- Q1 to Q8 output ports will shift, as in a barrel-shifter operation, one
			   -- -- position every time Bitslip is invoked (DDR operation is different from
			   -- -- SDR).

	  -- -- CE1, CE2: 1-bit (each) input: Data register clock enable inputs
	  -- CE1 => '1',
	  -- CE2 => '1',
	  -- CLKDIVP => '0',	-- 1-bit input: TBD
	  -- -- Clocks: 1-bit (each) input: ISERDESE2 clock input ports
	  -- CLK => clk_bufio,		-- 1-bit input: High-speed clock
	  -- CLKB => clk_bufio_n,		  -- 1-bit input: High-speed secondary clock
	  -- CLKDIV => clk_bufr,	  -- 1-bit input: Divided clock
	  -- OCLK => '0',		  -- 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
	  -- -- Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
	  -- DYNCLKDIVSEL => '0', -- 1-bit input: Dynamic CLKDIV inversion
	  -- DYNCLKSEL => '0',	   -- 1-bit input: Dynamic CLK/CLKB inversion
	  -- -- Input Data: 1-bit (each) input: ISERDESE2 data input ports
	  -- D => data_rxp_i(i),		 -- 1-bit input: Data input
	  -- DDLY => '0',		  -- 1-bit input: Serial data from IDELAYE2
	  -- OFB => '0',		-- 1-bit input: Data feedback from OSERDESE2
	  -- OCLKB => '0',		-- 1-bit input: High speed negative edge output clock
	  -- RST => rst_iserdes,		-- 1-bit input: Active high asynchronous reset
	  -- -- SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
	  -- SHIFTIN1 =>  '0',
	  -- SHIFTIN2 =>  '0' 
	-- );



	-- end generate;
	
	-- -- debug..
-- --	dl0_datahs <= dl0_datahs_i;
-- --	dl1_datahs <= dl1_datahs_i;

	-- dl0_datahs <= data_iserdes(7 downto 0);
	-- dl1_datahs <= data_iserdes(15 downto 8);



-- process (rxddrclkhs_i)
-- begin  
   -- if (rxddrclkhs_i'event and rxddrclkhs_i = '1') then
	-- dl0_datahs_i <= data_ddr(1 downto 0) & dl0_datahs_i(7 downto 2);
	-- dl1_datahs_i <= data_ddr(3 downto 2) & dl1_datahs_i(7 downto 2);
   -- end if;
-- end process;

	-- --
	-- dbg_lp_p <= data_lp_p(0);
	-- dbg_lp_n <= data_lp_n(0);	 






	-- system_rst_out <= core_rst;
	-- -- Xilinx IP Compatible, not used just make the high
	-- mmcm_lock_out <= '1';
	-- pll_lock_out <= '1';





----------------------------------------------------------------------------------	 
end Behavioral;

