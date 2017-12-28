----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
----------------------------------------------------------------------------------
entity dvi_encoder is
port (
	clkin			: in  STD_LOGIC;					-- pixel clock
	clkx2in			: in  STD_LOGIC;        			-- pixel clock x2
	rstin			: in  STD_LOGIC;          			-- reset
	blue_din		: in  STD_LOGIC_VECTOR(7 downto 0); -- Blue data in
	green_din		: in  STD_LOGIC_VECTOR(7 downto 0); -- Green data in
	red_din			: in  STD_LOGIC_VECTOR(7 downto 0); -- Red data in
	hsync			: in  STD_LOGIC;          			-- hsync data
	vsync			: in  STD_LOGIC;          			-- vsync data
	de				: in  STD_LOGIC;            		-- data enable
	tmds_data_a		: out STD_LOGIC_VECTOR(4 downto 0);
	tmds_data_b		: out STD_LOGIC_VECTOR(4 downto 0);
	tmds_data_c		: out STD_LOGIC_VECTOR(4 downto 0)	-- 5-bit busses converted from 10-bit
);		
end dvi_encoder;
-------------------------------------------------------------------------------
architecture Behavioral of dvi_encoder is
-------------------------------------------------------------------------------
constant net_gnd	: STD_LOGIC := '0';
component tmds_encoder is
port (
	clk_in			: in  STD_LOGIC;
	rst_in			: in  STD_LOGIC;
	data_in			: in  STD_LOGIC_VECTOR(7 downto 0);
	c0_in			: in  STD_LOGIC;
	c1_in			: in  STD_LOGIC;
	de_in			: in  STD_LOGIC;
	data_out		: out STD_LOGIC_VECTOR(9 downto 0)
);
end component;

component convert_30to15_fifo is
port (
	rst				: in  STD_LOGIC;   -- reset
	clk				: in  STD_LOGIC;   -- clock input
	clkx2			: in  STD_LOGIC; -- 2x clock input
	datain			: in  STD_LOGIC_VECTOR(29 downto 0);   -- input data for 2:1 serialisation
	dataout			: out STD_LOGIC_VECTOR(14 downto 0) -- 5-bit data out
);
end component;
-------------------------------------------------------------------------------
signal red			: STD_LOGIC_VECTOR( 9 downto 0);
signal green		: STD_LOGIC_VECTOR( 9 downto 0);
signal blue			: STD_LOGIC_VECTOR( 9 downto 0);
signal s_data		: STD_LOGIC_VECTOR(29 downto 0);
signal tmds_data	: STD_LOGIC_VECTOR(14 downto 0);
-------------------------------------------------------------------------------
begin
-------------------------------------------------------------------------------
encb_inst: tmds_encoder
port map(
	clk_in		=> clkin,
	rst_in		=> rstin,
	data_in		=> blue_din,
	c0_in		=> hsync,
	c1_in		=> vsync,
	de_in		=> de,
	data_out	=> blue
);

encg_inst: tmds_encoder
port map(
	clk_in		=> clkin,
	rst_in		=> rstin,
	data_in		=> green_din,
	c0_in		=> net_gnd,
	c1_in		=> net_gnd,
	de_in		=> de,
	data_out	=> green
);
	
encr_inst: tmds_encoder 
port map(
	clk_in		=> clkin,
	rst_in		=> rstin,
	data_in		=> red_din,
	c0_in		=> net_gnd,
	c1_in		=> net_gnd,
	de_in		=> de,
	data_out	=> red
);

s_data	<= red(9 downto 5) & green(9 downto 5) & blue(9 downto 5) & red(4 downto 0) & green(4 downto 0) & blue(4 downto 0);

pixel2x_inst: convert_30to15_fifo
port map(
	rst			=> rstin,
	clk			=> clkin,
	clkx2		=> clkx2in,
	datain		=> s_data,
	dataout		=> tmds_data
 );
 
tmds_data_a		<= tmds_data( 4 downto  0);
tmds_data_b		<= tmds_data( 9 downto  5);
tmds_data_c		<= tmds_data(14 downto 10);
--------------------------------------------------------------------------------
end Behavioral;
