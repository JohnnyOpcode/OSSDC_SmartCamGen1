----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VComponents.all;
----------------------------------------------------------------------------------
entity clock_system is
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
end clock_system;
----------------------------------------------------------------------------------
architecture arch_imp of clock_system is
----------------------------------------------------------------------------------
attribute IODELAY_GROUP 	: STRING;
attribute IODELAY_GROUP of IDELAYE2_inst	: label is C_IODELAY_GROUP;
----------------------------------------------------------------------------------
constant C_TAP_IN			: STD_LOGIC_VECTOR(4 downto 0)	:= "00000";
----------------------------------------------------------------------------------
signal clk_g				: STD_LOGIC;	-- Clock after IBUFGDS
signal clk_d				: STD_LOGIC;	-- Clock after IDELAYE2
signal clk_dg				: STD_LOGIC;	-- Clock after IBUFGDS
signal clk_bufmr			: STD_LOGIC;
signal clk_bufio			: STD_LOGIC;
signal clk_bufr				: STD_LOGIC;
signal rst_bufmr			: STD_LOGIC;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
-- Test 
clk_ibufgds_inst : IBUFGDS
generic map (
	DIFF_TERM			 	=> C_DIFF_TERM
)
port map (
	I					 	=> in_clk_p, 
	IB						=> in_clk_n,
	O		 				=> clk_g
);
-- out_dclk					<= clk_g;

IDELAYE2_inst : IDELAYE2
generic map (
	CINVCTRL_SEL 			=> "FALSE",		-- Enable dynamic clock inversion (FALSE, TRUE)
	DELAY_SRC 				=> "IDATAIN",	-- Delay input (IDATAIN, DATAIN)
	HIGH_PERFORMANCE_MODE	=> "TRUE", 		-- Reduced jitter ("TRUE"), Reduced power ("FALSE")
	IDELAY_TYPE 			=> "FIXED",		-- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
	IDELAY_VALUE 			=> C_START_DELAY,	-- Input delay tap setting (0-31)
	PIPE_SEL 				=> "FALSE",		-- Select pipelined mode, FALSE, TRUE
	REFCLK_FREQUENCY 		=> 200.0,		-- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
	SIGNAL_PATTERN 			=> "CLOCK"		-- DATA, CLOCK input signal
)
port map (
	CNTVALUEOUT   			=> open, 		-- 5-bit output: Counter value output
	DATAOUT	 				=> clk_d,		-- 1-bit output: Delayed data output
	C		 				=> in_ref_clk,	-- 1-bit input: Clock input
	CE						=> '0',			-- 1-bit input: Active high enable increment/decrement input
	CINVCTRL				=> '0',	 		-- 1-bit input: Dynamic clock inversion input
	CNTVALUEIN				=> C_TAP_IN,	-- 5-bit input: Counter value input
	DATAIN					=> '0',			-- 1-bit input: Internal delay data input
	IDATAIN	 				=> clk_g,		-- 1-bit input: Data input from the I/O
	INC		 				=> '1',			-- 1-bit input: Increment / Decrement tap delay input
	LD						=> '0',			-- 1-bit input: Load IDELAY_VALUE input
	LDPIPEEN				=> '0',	 		-- 1-bit input: Enable PIPELINE register to load data input
	REGRST					=> '0'			-- 1-bit input: Active-high reset tap-delay input
);

BUFG_inst : BUFG
port map (
	O						=> clk_dg,		-- 1-bit output: Clock output
	I						=> clk_d		-- 1-bit input: Clock input
);

BUFMRCE_inst : BUFMRCE
generic map (
	CE_TYPE 				=> "ASYNC", 	-- SYNC, ASYNC
	INIT_OUT 				=> 0			-- Initial output and stopped polarity, (0-1)
)
port map (
	O	 					=> clk_bufmr,   -- 1-bit output: Clock output (connect to BUFIOs/BUFRs)
	CE	 					=> '1',			-- 1-bit input: Active high buffer enable
	I	 					=> clk_dg		-- 1-bit input: Clock input (Connect to IBUF)
);

BUFIO_inst : BUFIO
port map (
	O     					=> clk_bufio,	-- 1-bit output: Clock output (connect to I/O clock loads).
	I     					=> clk_bufmr 	-- 1-bit input: Clock input (connect to an IBUF or BUFMR).
);
out_dclk					<= clk_bufio;

rst_bufmr					<= '0';
BUFR_inst : BUFR
generic map (
	BUFR_DIVIDE 			=> "4",   		-- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
	SIM_DEVICE				=> "7SERIES"  	-- Must be set to "7SERIES" 
)
port map (
	O     					=> clk_bufr,    -- 1-bit output: Clock output port
	CE    					=> '1',   		-- 1-bit input: Active high, clock enable (Divided modes only)
	CLR   					=> rst_bufmr, 	-- 1-bit input: Active high, asynchronous clear (Divided modes only)
	I     					=> clk_bufmr    -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
);
out_pclk					<= clk_bufr;

usr_BUFG_inst : BUFG
port map (
	O						=> out_uclk,	-- 1-bit output: Clock output
	I						=> clk_bufr		-- 1-bit input: Clock input
);
----------------------------------------------------------------------------------
end arch_imp;
