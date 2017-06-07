--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Jun 06 22:45:32 2017
--Host        : DRIVER-01 running 64-bit major release  (build 9200)
--Command     : generate_target zsys_wrapper.bd
--Design      : zsys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    csi_c_clk_n : in STD_LOGIC;
    csi_c_clk_p : in STD_LOGIC;
    csi_d_lp_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    csi_d_lp_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    csi_d_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    csi_d_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_1_tri_io : inout STD_LOGIC_VECTOR ( 23 downto 0 );
    hdmi_clk_n : out STD_LOGIC;
    hdmi_clk_p : out STD_LOGIC;
    hdmi_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end zsys_wrapper;

architecture STRUCTURE of zsys_wrapper is
  component zsys is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    GPIO_1_tri_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    GPIO_1_tri_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    GPIO_1_tri_t : out STD_LOGIC_VECTOR ( 23 downto 0 );
    csi_c_clk_n : in STD_LOGIC;
    csi_c_clk_p : in STD_LOGIC;
    csi_d_lp_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    csi_d_lp_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    csi_d_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    csi_d_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hdmi_clk_n : out STD_LOGIC;
    hdmi_clk_p : out STD_LOGIC;
    hdmi_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component zsys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal gpio_1_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_1_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_1_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal gpio_1_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal gpio_1_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal gpio_1_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal gpio_1_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal gpio_1_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal gpio_1_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal gpio_1_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal gpio_1_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal gpio_1_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal gpio_1_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_1_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal gpio_1_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal gpio_1_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal gpio_1_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal gpio_1_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_1_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal gpio_1_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal gpio_1_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal gpio_1_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal gpio_1_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal gpio_1_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal gpio_1_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_1_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_1_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal gpio_1_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal gpio_1_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal gpio_1_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal gpio_1_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal gpio_1_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal gpio_1_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal gpio_1_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal gpio_1_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal gpio_1_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal gpio_1_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_1_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal gpio_1_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal gpio_1_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal gpio_1_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal gpio_1_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_1_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal gpio_1_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal gpio_1_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal gpio_1_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal gpio_1_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal gpio_1_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal gpio_1_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_1_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_1_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal gpio_1_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal gpio_1_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal gpio_1_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal gpio_1_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal gpio_1_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal gpio_1_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal gpio_1_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal gpio_1_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal gpio_1_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal gpio_1_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_1_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal gpio_1_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal gpio_1_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal gpio_1_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal gpio_1_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_1_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal gpio_1_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal gpio_1_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal gpio_1_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal gpio_1_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal gpio_1_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal gpio_1_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpio_1_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gpio_1_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal gpio_1_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal gpio_1_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal gpio_1_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal gpio_1_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal gpio_1_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal gpio_1_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal gpio_1_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal gpio_1_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal gpio_1_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal gpio_1_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal gpio_1_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal gpio_1_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal gpio_1_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal gpio_1_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal gpio_1_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal gpio_1_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal gpio_1_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal gpio_1_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal gpio_1_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal gpio_1_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal gpio_1_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
begin
gpio_1_tri_iobuf_0: component IOBUF
     port map (
      I => gpio_1_tri_o_0(0),
      IO => gpio_1_tri_io(0),
      O => gpio_1_tri_i_0(0),
      T => gpio_1_tri_t_0(0)
    );
gpio_1_tri_iobuf_1: component IOBUF
     port map (
      I => gpio_1_tri_o_1(1),
      IO => gpio_1_tri_io(1),
      O => gpio_1_tri_i_1(1),
      T => gpio_1_tri_t_1(1)
    );
gpio_1_tri_iobuf_10: component IOBUF
     port map (
      I => gpio_1_tri_o_10(10),
      IO => gpio_1_tri_io(10),
      O => gpio_1_tri_i_10(10),
      T => gpio_1_tri_t_10(10)
    );
gpio_1_tri_iobuf_11: component IOBUF
     port map (
      I => gpio_1_tri_o_11(11),
      IO => gpio_1_tri_io(11),
      O => gpio_1_tri_i_11(11),
      T => gpio_1_tri_t_11(11)
    );
gpio_1_tri_iobuf_12: component IOBUF
     port map (
      I => gpio_1_tri_o_12(12),
      IO => gpio_1_tri_io(12),
      O => gpio_1_tri_i_12(12),
      T => gpio_1_tri_t_12(12)
    );
gpio_1_tri_iobuf_13: component IOBUF
     port map (
      I => gpio_1_tri_o_13(13),
      IO => gpio_1_tri_io(13),
      O => gpio_1_tri_i_13(13),
      T => gpio_1_tri_t_13(13)
    );
gpio_1_tri_iobuf_14: component IOBUF
     port map (
      I => gpio_1_tri_o_14(14),
      IO => gpio_1_tri_io(14),
      O => gpio_1_tri_i_14(14),
      T => gpio_1_tri_t_14(14)
    );
gpio_1_tri_iobuf_15: component IOBUF
     port map (
      I => gpio_1_tri_o_15(15),
      IO => gpio_1_tri_io(15),
      O => gpio_1_tri_i_15(15),
      T => gpio_1_tri_t_15(15)
    );
gpio_1_tri_iobuf_16: component IOBUF
     port map (
      I => gpio_1_tri_o_16(16),
      IO => gpio_1_tri_io(16),
      O => gpio_1_tri_i_16(16),
      T => gpio_1_tri_t_16(16)
    );
gpio_1_tri_iobuf_17: component IOBUF
     port map (
      I => gpio_1_tri_o_17(17),
      IO => gpio_1_tri_io(17),
      O => gpio_1_tri_i_17(17),
      T => gpio_1_tri_t_17(17)
    );
gpio_1_tri_iobuf_18: component IOBUF
     port map (
      I => gpio_1_tri_o_18(18),
      IO => gpio_1_tri_io(18),
      O => gpio_1_tri_i_18(18),
      T => gpio_1_tri_t_18(18)
    );
gpio_1_tri_iobuf_19: component IOBUF
     port map (
      I => gpio_1_tri_o_19(19),
      IO => gpio_1_tri_io(19),
      O => gpio_1_tri_i_19(19),
      T => gpio_1_tri_t_19(19)
    );
gpio_1_tri_iobuf_2: component IOBUF
     port map (
      I => gpio_1_tri_o_2(2),
      IO => gpio_1_tri_io(2),
      O => gpio_1_tri_i_2(2),
      T => gpio_1_tri_t_2(2)
    );
gpio_1_tri_iobuf_20: component IOBUF
     port map (
      I => gpio_1_tri_o_20(20),
      IO => gpio_1_tri_io(20),
      O => gpio_1_tri_i_20(20),
      T => gpio_1_tri_t_20(20)
    );
gpio_1_tri_iobuf_21: component IOBUF
     port map (
      I => gpio_1_tri_o_21(21),
      IO => gpio_1_tri_io(21),
      O => gpio_1_tri_i_21(21),
      T => gpio_1_tri_t_21(21)
    );
gpio_1_tri_iobuf_22: component IOBUF
     port map (
      I => gpio_1_tri_o_22(22),
      IO => gpio_1_tri_io(22),
      O => gpio_1_tri_i_22(22),
      T => gpio_1_tri_t_22(22)
    );
gpio_1_tri_iobuf_23: component IOBUF
     port map (
      I => gpio_1_tri_o_23(23),
      IO => gpio_1_tri_io(23),
      O => gpio_1_tri_i_23(23),
      T => gpio_1_tri_t_23(23)
    );
gpio_1_tri_iobuf_3: component IOBUF
     port map (
      I => gpio_1_tri_o_3(3),
      IO => gpio_1_tri_io(3),
      O => gpio_1_tri_i_3(3),
      T => gpio_1_tri_t_3(3)
    );
gpio_1_tri_iobuf_4: component IOBUF
     port map (
      I => gpio_1_tri_o_4(4),
      IO => gpio_1_tri_io(4),
      O => gpio_1_tri_i_4(4),
      T => gpio_1_tri_t_4(4)
    );
gpio_1_tri_iobuf_5: component IOBUF
     port map (
      I => gpio_1_tri_o_5(5),
      IO => gpio_1_tri_io(5),
      O => gpio_1_tri_i_5(5),
      T => gpio_1_tri_t_5(5)
    );
gpio_1_tri_iobuf_6: component IOBUF
     port map (
      I => gpio_1_tri_o_6(6),
      IO => gpio_1_tri_io(6),
      O => gpio_1_tri_i_6(6),
      T => gpio_1_tri_t_6(6)
    );
gpio_1_tri_iobuf_7: component IOBUF
     port map (
      I => gpio_1_tri_o_7(7),
      IO => gpio_1_tri_io(7),
      O => gpio_1_tri_i_7(7),
      T => gpio_1_tri_t_7(7)
    );
gpio_1_tri_iobuf_8: component IOBUF
     port map (
      I => gpio_1_tri_o_8(8),
      IO => gpio_1_tri_io(8),
      O => gpio_1_tri_i_8(8),
      T => gpio_1_tri_t_8(8)
    );
gpio_1_tri_iobuf_9: component IOBUF
     port map (
      I => gpio_1_tri_o_9(9),
      IO => gpio_1_tri_io(9),
      O => gpio_1_tri_i_9(9),
      T => gpio_1_tri_t_9(9)
    );
zsys_i: component zsys
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(1 downto 0) => DDR_dm(1 downto 0),
      DDR_dq(15 downto 0) => DDR_dq(15 downto 0),
      DDR_dqs_n(1 downto 0) => DDR_dqs_n(1 downto 0),
      DDR_dqs_p(1 downto 0) => DDR_dqs_p(1 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(31 downto 0) => FIXED_IO_mio(31 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GPIO_1_tri_i(23) => gpio_1_tri_i_23(23),
      GPIO_1_tri_i(22) => gpio_1_tri_i_22(22),
      GPIO_1_tri_i(21) => gpio_1_tri_i_21(21),
      GPIO_1_tri_i(20) => gpio_1_tri_i_20(20),
      GPIO_1_tri_i(19) => gpio_1_tri_i_19(19),
      GPIO_1_tri_i(18) => gpio_1_tri_i_18(18),
      GPIO_1_tri_i(17) => gpio_1_tri_i_17(17),
      GPIO_1_tri_i(16) => gpio_1_tri_i_16(16),
      GPIO_1_tri_i(15) => gpio_1_tri_i_15(15),
      GPIO_1_tri_i(14) => gpio_1_tri_i_14(14),
      GPIO_1_tri_i(13) => gpio_1_tri_i_13(13),
      GPIO_1_tri_i(12) => gpio_1_tri_i_12(12),
      GPIO_1_tri_i(11) => gpio_1_tri_i_11(11),
      GPIO_1_tri_i(10) => gpio_1_tri_i_10(10),
      GPIO_1_tri_i(9) => gpio_1_tri_i_9(9),
      GPIO_1_tri_i(8) => gpio_1_tri_i_8(8),
      GPIO_1_tri_i(7) => gpio_1_tri_i_7(7),
      GPIO_1_tri_i(6) => gpio_1_tri_i_6(6),
      GPIO_1_tri_i(5) => gpio_1_tri_i_5(5),
      GPIO_1_tri_i(4) => gpio_1_tri_i_4(4),
      GPIO_1_tri_i(3) => gpio_1_tri_i_3(3),
      GPIO_1_tri_i(2) => gpio_1_tri_i_2(2),
      GPIO_1_tri_i(1) => gpio_1_tri_i_1(1),
      GPIO_1_tri_i(0) => gpio_1_tri_i_0(0),
      GPIO_1_tri_o(23) => gpio_1_tri_o_23(23),
      GPIO_1_tri_o(22) => gpio_1_tri_o_22(22),
      GPIO_1_tri_o(21) => gpio_1_tri_o_21(21),
      GPIO_1_tri_o(20) => gpio_1_tri_o_20(20),
      GPIO_1_tri_o(19) => gpio_1_tri_o_19(19),
      GPIO_1_tri_o(18) => gpio_1_tri_o_18(18),
      GPIO_1_tri_o(17) => gpio_1_tri_o_17(17),
      GPIO_1_tri_o(16) => gpio_1_tri_o_16(16),
      GPIO_1_tri_o(15) => gpio_1_tri_o_15(15),
      GPIO_1_tri_o(14) => gpio_1_tri_o_14(14),
      GPIO_1_tri_o(13) => gpio_1_tri_o_13(13),
      GPIO_1_tri_o(12) => gpio_1_tri_o_12(12),
      GPIO_1_tri_o(11) => gpio_1_tri_o_11(11),
      GPIO_1_tri_o(10) => gpio_1_tri_o_10(10),
      GPIO_1_tri_o(9) => gpio_1_tri_o_9(9),
      GPIO_1_tri_o(8) => gpio_1_tri_o_8(8),
      GPIO_1_tri_o(7) => gpio_1_tri_o_7(7),
      GPIO_1_tri_o(6) => gpio_1_tri_o_6(6),
      GPIO_1_tri_o(5) => gpio_1_tri_o_5(5),
      GPIO_1_tri_o(4) => gpio_1_tri_o_4(4),
      GPIO_1_tri_o(3) => gpio_1_tri_o_3(3),
      GPIO_1_tri_o(2) => gpio_1_tri_o_2(2),
      GPIO_1_tri_o(1) => gpio_1_tri_o_1(1),
      GPIO_1_tri_o(0) => gpio_1_tri_o_0(0),
      GPIO_1_tri_t(23) => gpio_1_tri_t_23(23),
      GPIO_1_tri_t(22) => gpio_1_tri_t_22(22),
      GPIO_1_tri_t(21) => gpio_1_tri_t_21(21),
      GPIO_1_tri_t(20) => gpio_1_tri_t_20(20),
      GPIO_1_tri_t(19) => gpio_1_tri_t_19(19),
      GPIO_1_tri_t(18) => gpio_1_tri_t_18(18),
      GPIO_1_tri_t(17) => gpio_1_tri_t_17(17),
      GPIO_1_tri_t(16) => gpio_1_tri_t_16(16),
      GPIO_1_tri_t(15) => gpio_1_tri_t_15(15),
      GPIO_1_tri_t(14) => gpio_1_tri_t_14(14),
      GPIO_1_tri_t(13) => gpio_1_tri_t_13(13),
      GPIO_1_tri_t(12) => gpio_1_tri_t_12(12),
      GPIO_1_tri_t(11) => gpio_1_tri_t_11(11),
      GPIO_1_tri_t(10) => gpio_1_tri_t_10(10),
      GPIO_1_tri_t(9) => gpio_1_tri_t_9(9),
      GPIO_1_tri_t(8) => gpio_1_tri_t_8(8),
      GPIO_1_tri_t(7) => gpio_1_tri_t_7(7),
      GPIO_1_tri_t(6) => gpio_1_tri_t_6(6),
      GPIO_1_tri_t(5) => gpio_1_tri_t_5(5),
      GPIO_1_tri_t(4) => gpio_1_tri_t_4(4),
      GPIO_1_tri_t(3) => gpio_1_tri_t_3(3),
      GPIO_1_tri_t(2) => gpio_1_tri_t_2(2),
      GPIO_1_tri_t(1) => gpio_1_tri_t_1(1),
      GPIO_1_tri_t(0) => gpio_1_tri_t_0(0),
      csi_c_clk_n => csi_c_clk_n,
      csi_c_clk_p => csi_c_clk_p,
      csi_d_lp_n(0) => csi_d_lp_n(0),
      csi_d_lp_p(0) => csi_d_lp_p(0),
      csi_d_n(1 downto 0) => csi_d_n(1 downto 0),
      csi_d_p(1 downto 0) => csi_d_p(1 downto 0),
      hdmi_clk_n => hdmi_clk_n,
      hdmi_clk_p => hdmi_clk_p,
      hdmi_data_n(2 downto 0) => hdmi_data_n(2 downto 0),
      hdmi_data_p(2 downto 0) => hdmi_data_p(2 downto 0)
    );
end STRUCTURE;
