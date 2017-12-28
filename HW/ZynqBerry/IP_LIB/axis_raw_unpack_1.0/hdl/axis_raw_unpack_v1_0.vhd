----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
----------------------------------------------------------------------------------
entity axis_raw_unpack_v1_0 is
generic (
	C_S_AXIS_TDATA_WIDTH	: integer	:= 16;
	C_M_AXIS_TDATA_WIDTH	: integer	:= 32
);
port (
	-- Ports of Axi Slave Bus Interface S_AXIS
	s_axis_aclk			: in  STD_LOGIC;
	s_axis_aresetn		: in  STD_LOGIC;
	s_axis_tready		: out STD_LOGIC;
	s_axis_tdata		: in  STD_LOGIC_VECTOR(15 downto 0);
	s_axis_tuser		: in  STD_LOGIC;
	s_axis_tlast		: in  STD_LOGIC;
	s_axis_tvalid		: in  STD_LOGIC;

	-- Ports of Axi Master Bus Interface M_AXIS
	m_axis_aclk			: in  STD_LOGIC;
	m_axis_aresetn		: in  STD_LOGIC;
	m_axis_tvalid		: out STD_LOGIC;
	m_axis_tdata		: out STD_LOGIC_VECTOR(15 downto 0);
	m_axis_tuser		: out STD_LOGIC;
	m_axis_tlast		: out STD_LOGIC;
	m_axis_tready		: in  STD_LOGIC
);
end axis_raw_unpack_v1_0;
----------------------------------------------------------------------------------
architecture arch_imp of axis_raw_unpack_v1_0 is
----------------------------------------------------------------------------------
type sm_rx_state_type is (ST_IDLE, ST_PA, ST_PB, ST_PC, ST_PD);
signal sm_rx_state			: sm_rx_state_type	:= ST_IDLE;

type sm_tx_state_type is (ST_WAIT, ST_TXA, ST_TXB, ST_TXC, ST_TXD);
signal sm_tx_state			: sm_tx_state_type	:= ST_WAIT;

signal pixels_data			: STD_LOGIC_VECTOR(39 downto 0);
signal transfer_valid		: STD_LOGIC;
signal last					: STD_LOGIC;
signal user					: STD_LOGIC;
signal transmitter_ready	: STD_LOGIC;

signal pixel_a				: STD_LOGIC_VECTOR(9 downto 0);
signal pixel_b				: STD_LOGIC_VECTOR(9 downto 0);
signal pixel_c				: STD_LOGIC_VECTOR(9 downto 0);
signal pixel_d				: STD_LOGIC_VECTOR(9 downto 0);
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
-- 16 bit input implementation
process(s_axis_aclk)
begin
	if(s_axis_aclk = '1' and s_axis_aclk'event)then
		case sm_rx_state is
			when ST_IDLE =>
				transfer_valid					<= '0';
				if(s_axis_tvalid = '1')then
					pixels_data( 9 downto  2)	<= s_axis_tdata( 7 downto 0);	-- P0
					pixels_data(19 downto 12)	<= s_axis_tdata(15 downto 8);	-- P1
					user						<= s_axis_tuser;
					if(s_axis_tlast /= '1')then
						sm_rx_state				<= ST_PA;
					end if;
				end if;
				
			when ST_PA	=>
				if(s_axis_tvalid = '1')then
					pixels_data(29 downto 22)	<= s_axis_tdata( 7 downto 0);	-- P2
					pixels_data(39 downto 32)	<= s_axis_tdata(15 downto 8);	-- P3
					if(s_axis_tuser = '1')then	-- Problem
						sm_rx_state				<= ST_PA;
					elsif(s_axis_tlast /= '1')then
						sm_rx_state				<= ST_PB;
					else
						sm_rx_state				<= ST_IDLE;
					end if;
				end if;
				
			when ST_PB =>
				if((s_axis_tvalid = '1') and (transmitter_ready = '1'))then
					pixel_a( 9 downto  2)		<= pixels_data( 9 downto  2);
					pixel_a( 1 downto  0)		<= s_axis_tdata( 1 downto 0);
					pixel_b( 9 downto  2)		<= pixels_data(19 downto 12);
					pixel_b( 1 downto  0)		<= s_axis_tdata( 3 downto 2);
					pixel_c( 9 downto  2)		<= pixels_data(29 downto 22);
					pixel_c( 1 downto  0)		<= s_axis_tdata( 5 downto 4);
					pixel_d( 9 downto  2)		<= pixels_data(39 downto 32);
					pixel_d( 1 downto  0)		<= s_axis_tdata( 7 downto 6);
					transfer_valid				<= '1';
					last						<= s_axis_tlast;
					pixels_data( 9 downto  2)	<= s_axis_tdata(15 downto 8);
					if(s_axis_tuser = '1')then	-- Problem
						sm_rx_state				<= ST_PA;
					elsif(s_axis_tlast /= '1')then
						sm_rx_state				<= ST_PC;
					else
						sm_rx_state				<= ST_IDLE;
					end if;
				end if;
				
			when ST_PC =>
				transfer_valid					<= '0';
				if(s_axis_tvalid = '1')then
					pixels_data(19 downto 12)	<= s_axis_tdata( 7 downto 0);	-- P1
					pixels_data(29 downto 22)	<= s_axis_tdata(15 downto 8);	-- P2
					if(s_axis_tuser = '1')then	-- Problem
						sm_rx_state				<= ST_PA;
					elsif(s_axis_tlast /= '1')then
						sm_rx_state				<= ST_PD;
					else
						sm_rx_state				<= ST_IDLE;
					end if;
				end if;
				
			when ST_PD =>
				if((s_axis_tvalid = '1') and (transmitter_ready = '1'))then
					pixel_a( 9 downto  2)		<= pixels_data( 9 downto  2);
					pixel_a( 1 downto  0)		<= s_axis_tdata( 9 downto  8);
					pixel_b( 9 downto  2)		<= pixels_data(19 downto 12);
					pixel_b( 1 downto  0)		<= s_axis_tdata(11 downto 10);
					pixel_c( 9 downto  2)		<= pixels_data(29 downto 22);
					pixel_c( 1 downto  0)		<= s_axis_tdata(13 downto 12);
					pixel_d( 9 downto  2)		<= s_axis_tdata( 7 downto  0);
					pixel_d( 1 downto  0)		<= s_axis_tdata(15 downto 14);
					transfer_valid				<= '1';
					user						<= '0';
					last						<= s_axis_tlast;
					
					if(s_axis_tuser = '1')then	-- Problem
						sm_rx_state				<= ST_PA;
					else
						sm_rx_state				<= ST_IDLE;
					end if;
				end if;
		end case;
	end if;
end process;

process(s_axis_aclk)
begin
	if(s_axis_aclk = '1' and s_axis_aclk'event)then
		case sm_tx_state is
			when ST_WAIT =>
				if(transfer_valid = '1')then
					m_axis_tdata		<= "000000" & pixel_a;
					m_axis_tuser		<= user;
					m_axis_tlast		<= '0';
					sm_tx_state			<= ST_TXA;
				end if;
			when ST_TXA =>
				if(m_axis_tready = '1')then
					m_axis_tdata		<= "000000" & pixel_b;
					m_axis_tuser		<= '0';
					m_axis_tlast		<= '0';
					sm_tx_state			<= ST_TXB;
				end if;
			when ST_TXB =>
				if(m_axis_tready = '1')then
					m_axis_tdata		<= "000000" & pixel_c;
					m_axis_tuser		<= '0';
					m_axis_tlast		<= '0';
					sm_tx_state			<= ST_TXC;
				end if;
			when ST_TXC =>
				if(m_axis_tready = '1')then
					m_axis_tdata		<= "000000" & pixel_d;
					m_axis_tuser		<= '0';
					m_axis_tlast		<= last;
					sm_tx_state			<= ST_TXD;
				end if;
			when ST_TXD =>
				if(m_axis_tready = '1')then
					sm_tx_state			<= ST_WAIT;
					m_axis_tlast		<= '0';
				end if;
		end case;
	end if;
end process;

m_axis_tvalid		<= '1' when (sm_tx_state /= ST_WAIT) else '0';
transmitter_ready	<= '1' when (sm_tx_state = ST_WAIT) else '0';

process(sm_rx_state, transmitter_ready)
begin
	case sm_rx_state is
		when ST_IDLE	=> s_axis_tready <= '1';
		when ST_PA		=> s_axis_tready <= '1';
		when ST_PB		=> s_axis_tready <= transmitter_ready;
		when ST_PC		=> s_axis_tready <= '1';
		when ST_PD		=> s_axis_tready <= transmitter_ready;
	end case;
end process;
----------------------------------------------------------------------------------
end arch_imp;
