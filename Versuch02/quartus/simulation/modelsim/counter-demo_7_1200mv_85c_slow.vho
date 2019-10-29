-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "10/24/2019 19:17:31"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_demo IS
    PORT (
	clock : IN std_logic;
	key3_n : IN std_logic;
	key_speed : IN std_logic_vector(3 DOWNTO 0);
	hex0_n : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1_n : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END counter_demo;

-- Design Ports Information
-- hex0_n[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key3_n	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_speed[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_speed[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_speed[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_speed[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_key3_n : std_logic;
SIGNAL ww_key_speed : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex0_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1_n : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex0_n[0]~output_o\ : std_logic;
SIGNAL \hex0_n[1]~output_o\ : std_logic;
SIGNAL \hex0_n[2]~output_o\ : std_logic;
SIGNAL \hex0_n[3]~output_o\ : std_logic;
SIGNAL \hex0_n[4]~output_o\ : std_logic;
SIGNAL \hex0_n[5]~output_o\ : std_logic;
SIGNAL \hex0_n[6]~output_o\ : std_logic;
SIGNAL \hex1_n[0]~output_o\ : std_logic;
SIGNAL \hex1_n[1]~output_o\ : std_logic;
SIGNAL \hex1_n[2]~output_o\ : std_logic;
SIGNAL \hex1_n[3]~output_o\ : std_logic;
SIGNAL \hex1_n[4]~output_o\ : std_logic;
SIGNAL \hex1_n[5]~output_o\ : std_logic;
SIGNAL \hex1_n[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \sync_C|q_out[0]~2_combout\ : std_logic;
SIGNAL \key3_n~input_o\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COMBOUT\ : std_logic;
SIGNAL \key_speed[1]~input_o\ : std_logic;
SIGNAL \key_speed[2]~input_o\ : std_logic;
SIGNAL \key_speed[0]~input_o\ : std_logic;
SIGNAL \key_speed[3]~input_o\ : std_logic;
SIGNAL \speed_ctl[18]~5_combout\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~383\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \speed_ctl[16]~6_combout\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~385\ : std_logic;
SIGNAL \speed_ctl[17]~4_combout\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~384\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~386\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~387\ : std_logic;
SIGNAL \speed_ctl~0_combout\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~395\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~394\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~393\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~396\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~397\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COUT\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella31~COMBOUT\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~398\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~399\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~400\ : std_logic;
SIGNAL \speed_ctl[10]~3_combout\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~389\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~388\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~391\ : std_logic;
SIGNAL \speed_ctl[25]~2_combout\ : std_logic;
SIGNAL \speed_ctl[6]~1_combout\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~390\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~392\ : std_logic;
SIGNAL \ena_Gen|reduce_nor~401\ : std_logic;
SIGNAL \ena_Gen|clkEnable_out~reg0\ : std_logic;
SIGNAL \sync_C|q_out~1_combout\ : std_logic;
SIGNAL \sync_C|q_out~0_combout\ : std_logic;
SIGNAL \seg|Mux3~0_combout\ : std_logic;
SIGNAL \seg|Mux2~0_combout\ : std_logic;
SIGNAL \seg|Mux1~0_combout\ : std_logic;
SIGNAL \seg|Mux0~0_combout\ : std_logic;
SIGNAL \seg|Mux7~0_combout\ : std_logic;
SIGNAL \seg|Mux6~0_combout\ : std_logic;
SIGNAL \seg|Mux5~0_combout\ : std_logic;
SIGNAL \seg|Mux4~0_combout\ : std_logic;
SIGNAL \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sync_C|q_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_key3_n <= key3_n;
ww_key_speed <= key_speed;
hex0_n <= ww_hex0_n;
hex1_n <= ww_hex1_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\seg|ALT_INV_Mux4~0_combout\ <= NOT \seg|Mux4~0_combout\;
\seg|ALT_INV_Mux5~0_combout\ <= NOT \seg|Mux5~0_combout\;
\seg|ALT_INV_Mux6~0_combout\ <= NOT \seg|Mux6~0_combout\;
\seg|ALT_INV_Mux7~0_combout\ <= NOT \seg|Mux7~0_combout\;
\seg|ALT_INV_Mux0~0_combout\ <= NOT \seg|Mux0~0_combout\;
\seg|ALT_INV_Mux1~0_combout\ <= NOT \seg|Mux1~0_combout\;
\seg|ALT_INV_Mux2~0_combout\ <= NOT \seg|Mux2~0_combout\;
\seg|ALT_INV_Mux3~0_combout\ <= NOT \seg|Mux3~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\hex0_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex0_n[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex0_n[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex0_n[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0_n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex0_n[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0_n[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex0_n[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0_n[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex0_n[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\hex0_n[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex0_n[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\hex1_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \hex1_n[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\hex1_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1_n[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\hex1_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1_n[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\hex1_n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex1_n[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\hex1_n[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex1_n[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\hex1_n[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex1_n[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\hex1_n[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1_n[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X114_Y34_N20
\sync_C|q_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_C|q_out[0]~2_combout\ = !\sync_C|q_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_C|q_out\(0),
	combout => \sync_C|q_out[0]~2_combout\);

-- Location: IOIBUF_X115_Y35_N22
\key3_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key3_n,
	o => \key3_n~input_o\);

-- Location: LCCOMB_X109_Y23_N0
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COMBOUT\ = \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(0) $ (VCC)
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COUT\ = CARRY(\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COUT\);

-- Location: FF_X109_Y23_N1
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(0));

-- Location: LCCOMB_X109_Y23_N2
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(1) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(1) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella0~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COUT\);

-- Location: FF_X109_Y23_N3
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(1));

-- Location: LCCOMB_X109_Y23_N4
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(2) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(2) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(2) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella1~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COUT\);

-- Location: FF_X109_Y23_N5
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(2));

-- Location: LCCOMB_X109_Y23_N6
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(3) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(3) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella2~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COUT\);

-- Location: FF_X109_Y23_N7
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(3));

-- Location: IOIBUF_X115_Y14_N1
\key_speed[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_speed(1),
	o => \key_speed[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\key_speed[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_speed(2),
	o => \key_speed[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\key_speed[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_speed(0),
	o => \key_speed[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\key_speed[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_speed(3),
	o => \key_speed[3]~input_o\);

-- Location: LCCOMB_X111_Y23_N26
\speed_ctl[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_ctl[18]~5_combout\ = (\key_speed[1]~input_o\) # ((\key_speed[2]~input_o\ & ((\key_speed[0]~input_o\) # (\key_speed[3]~input_o\))) # (!\key_speed[2]~input_o\ & (\key_speed[0]~input_o\ $ (!\key_speed[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \speed_ctl[18]~5_combout\);

-- Location: LCCOMB_X109_Y23_N8
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella3~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COUT\);

-- Location: FF_X109_Y23_N9
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4));

-- Location: LCCOMB_X109_Y23_N10
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(5) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(5) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella4~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COUT\);

-- Location: FF_X109_Y23_N11
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(5));

-- Location: LCCOMB_X109_Y23_N12
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella5~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COUT\);

-- Location: FF_X109_Y23_N13
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6));

-- Location: LCCOMB_X109_Y23_N14
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella6~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COUT\);

-- Location: FF_X109_Y23_N15
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7));

-- Location: LCCOMB_X109_Y23_N16
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella7~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COUT\);

-- Location: FF_X109_Y23_N17
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8));

-- Location: LCCOMB_X109_Y23_N18
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella8~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COUT\);

-- Location: FF_X109_Y23_N19
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9));

-- Location: LCCOMB_X109_Y23_N20
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella9~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COUT\);

-- Location: FF_X109_Y23_N21
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10));

-- Location: LCCOMB_X109_Y23_N22
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella10~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COUT\);

-- Location: FF_X109_Y23_N23
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11));

-- Location: LCCOMB_X109_Y23_N24
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(12) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(12) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(12) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella11~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COUT\);

-- Location: FF_X109_Y23_N25
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(12));

-- Location: LCCOMB_X109_Y23_N26
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(13) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(13) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella12~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COUT\);

-- Location: FF_X109_Y23_N27
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(13));

-- Location: LCCOMB_X109_Y23_N28
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella13~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COUT\);

-- Location: FF_X109_Y23_N29
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14));

-- Location: LCCOMB_X109_Y23_N30
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(15) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(15) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella14~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COUT\);

-- Location: FF_X109_Y23_N31
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(15));

-- Location: LCCOMB_X110_Y23_N6
\ena_Gen|reduce_nor~383_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~383\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(3)) # (\speed_ctl[18]~5_combout\ $ (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(3),
	datab => \speed_ctl[18]~5_combout\,
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(15),
	combout => \ena_Gen|reduce_nor~383\);

-- Location: LCCOMB_X111_Y23_N2
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\key_speed[1]~input_o\ & (\key_speed[2]~input_o\ & (!\key_speed[0]~input_o\ & !\key_speed[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X111_Y23_N8
\speed_ctl[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_ctl[16]~6_combout\ = (!\key_speed[1]~input_o\ & (!\key_speed[3]~input_o\ & (\key_speed[2]~input_o\ $ (\key_speed[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \speed_ctl[16]~6_combout\);

-- Location: LCCOMB_X109_Y22_N0
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella15~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COUT\);

-- Location: FF_X109_Y22_N1
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16));

-- Location: LCCOMB_X110_Y23_N24
\ena_Gen|reduce_nor~385_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~385\ = (\Equal1~0_combout\ & ((\speed_ctl[16]~6_combout\ $ (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4)))) # (!\Equal1~0_combout\ & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4)) # (\speed_ctl[16]~6_combout\ $ (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \speed_ctl[16]~6_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(4),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(16),
	combout => \ena_Gen|reduce_nor~385\);

-- Location: LCCOMB_X110_Y23_N26
\speed_ctl[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_ctl[17]~4_combout\ = (\key_speed[2]~input_o\) # ((\key_speed[3]~input_o\ & ((\key_speed[1]~input_o\) # (\key_speed[0]~input_o\))) # (!\key_speed[3]~input_o\ & (\key_speed[1]~input_o\ $ (!\key_speed[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[2]~input_o\,
	datab => \key_speed[3]~input_o\,
	datac => \key_speed[1]~input_o\,
	datad => \key_speed[0]~input_o\,
	combout => \speed_ctl[17]~4_combout\);

-- Location: LCCOMB_X109_Y22_N2
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella16~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COUT\);

-- Location: FF_X109_Y22_N3
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17));

-- Location: LCCOMB_X109_Y22_N4
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella17~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COUT\);

-- Location: FF_X109_Y22_N5
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18));

-- Location: LCCOMB_X110_Y23_N22
\ena_Gen|reduce_nor~384_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~384\ = (\speed_ctl[17]~4_combout\ & ((\speed_ctl[18]~5_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17)))) # (!\speed_ctl[17]~4_combout\ & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17)) # (\speed_ctl[18]~5_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_ctl[17]~4_combout\,
	datab => \speed_ctl[18]~5_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(17),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(18),
	combout => \ena_Gen|reduce_nor~384\);

-- Location: LCCOMB_X109_Y22_N6
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(19) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(19) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella18~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COUT\);

-- Location: FF_X110_Y23_N7
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(19));

-- Location: LCCOMB_X109_Y22_N8
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(20) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(20) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(20) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella19~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COUT\);

-- Location: FF_X109_Y22_N9
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(20));

-- Location: LCCOMB_X109_Y22_N10
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella20~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COUT\);

-- Location: FF_X110_Y22_N1
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21));

-- Location: LCCOMB_X109_Y22_N12
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella21~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COUT\);

-- Location: FF_X110_Y22_N23
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22));

-- Location: LCCOMB_X109_Y22_N14
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella22~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COUT\);

-- Location: FF_X109_Y22_N15
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23));

-- Location: LCCOMB_X110_Y23_N2
\ena_Gen|reduce_nor~386_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~386\ = (\speed_ctl[18]~5_combout\ & ((!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23)))) # (!\speed_ctl[18]~5_combout\ & ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23)) # 
-- (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_ctl[18]~5_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(23),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(7),
	combout => \ena_Gen|reduce_nor~386\);

-- Location: LCCOMB_X110_Y23_N12
\ena_Gen|reduce_nor~387_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~387\ = (\ena_Gen|reduce_nor~383\) # ((\ena_Gen|reduce_nor~385\) # ((\ena_Gen|reduce_nor~384\) # (\ena_Gen|reduce_nor~386\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|reduce_nor~383\,
	datab => \ena_Gen|reduce_nor~385\,
	datac => \ena_Gen|reduce_nor~384\,
	datad => \ena_Gen|reduce_nor~386\,
	combout => \ena_Gen|reduce_nor~387\);

-- Location: LCCOMB_X111_Y23_N30
\speed_ctl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_ctl~0_combout\ = (!\key_speed[0]~input_o\ & ((\key_speed[1]~input_o\ & (!\key_speed[2]~input_o\ & !\key_speed[3]~input_o\)) # (!\key_speed[1]~input_o\ & (\key_speed[2]~input_o\ $ (\key_speed[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \speed_ctl~0_combout\);

-- Location: LCCOMB_X110_Y23_N10
\ena_Gen|reduce_nor~395_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~395\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(1)) # (\speed_ctl~0_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_ctl~0_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(13),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(1),
	combout => \ena_Gen|reduce_nor~395\);

-- Location: LCCOMB_X110_Y23_N4
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\key_speed[2]~input_o\ & (!\key_speed[3]~input_o\ & (\key_speed[1]~input_o\ & !\key_speed[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[2]~input_o\,
	datab => \key_speed[3]~input_o\,
	datac => \key_speed[1]~input_o\,
	datad => \key_speed[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X110_Y23_N14
\ena_Gen|reduce_nor~394_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~394\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14) & ((\Equal2~0_combout\) # (\speed_ctl[18]~5_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11))))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14) & 
-- ((\speed_ctl[18]~5_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(14),
	datab => \speed_ctl[18]~5_combout\,
	datac => \Equal2~0_combout\,
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(11),
	combout => \ena_Gen|reduce_nor~394\);

-- Location: LCCOMB_X111_Y23_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\key_speed[1]~input_o\) # ((\key_speed[2]~input_o\) # ((\key_speed[0]~input_o\) # (!\key_speed[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X110_Y23_N8
\ena_Gen|reduce_nor~393_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~393\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(2)) # (\Equal0~0_combout\ $ (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(2),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(20),
	combout => \ena_Gen|reduce_nor~393\);

-- Location: LCCOMB_X111_Y23_N18
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\key_speed[1]~input_o\) # ((\key_speed[2]~input_o\) # ((\key_speed[3]~input_o\) # (!\key_speed[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X109_Y22_N16
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella23~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COUT\);

-- Location: FF_X109_Y22_N17
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24));

-- Location: LCCOMB_X110_Y23_N20
\ena_Gen|reduce_nor~396_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~396\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8) & ((\Equal0~0_combout\) # (\Equal3~0_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24))))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8) & 
-- ((\Equal3~0_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24))) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(8),
	datab => \Equal0~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(24),
	combout => \ena_Gen|reduce_nor~396\);

-- Location: LCCOMB_X110_Y23_N18
\ena_Gen|reduce_nor~397_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~397\ = (\ena_Gen|reduce_nor~395\) # ((\ena_Gen|reduce_nor~394\) # ((\ena_Gen|reduce_nor~393\) # (\ena_Gen|reduce_nor~396\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|reduce_nor~395\,
	datab => \ena_Gen|reduce_nor~394\,
	datac => \ena_Gen|reduce_nor~393\,
	datad => \ena_Gen|reduce_nor~396\,
	combout => \ena_Gen|reduce_nor~397\);

-- Location: LCCOMB_X109_Y22_N18
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella24~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COUT\);

-- Location: FF_X109_Y22_N19
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25));

-- Location: LCCOMB_X109_Y22_N20
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(26) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(26) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(26) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(26),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella25~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COUT\);

-- Location: FF_X109_Y22_N21
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(26));

-- Location: LCCOMB_X109_Y22_N22
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(27) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(27) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(27),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella26~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COUT\);

-- Location: FF_X109_Y22_N23
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(27));

-- Location: LCCOMB_X109_Y22_N24
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(28) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(28) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(28) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(28),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella27~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COUT\);

-- Location: FF_X109_Y22_N25
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(28));

-- Location: LCCOMB_X109_Y22_N26
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(29) & (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COUT\)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(29) & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COUT\) # (GND)))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COUT\ = CARRY((!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COUT\) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(29),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella28~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COUT\);

-- Location: FF_X109_Y22_N27
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(29));

-- Location: LCCOMB_X109_Y22_N28
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COMBOUT\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(30) & (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COUT\ $ (GND))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(30) & 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COUT\ & VCC))
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COUT\ = CARRY((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(30) & !\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(30),
	datad => VCC,
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella29~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COMBOUT\,
	cout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COUT\);

-- Location: FF_X109_Y22_N29
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(30));

-- Location: LCCOMB_X109_Y22_N30
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella31~COMBOUT\ = \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(31) $ (\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(31),
	cin => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella30~COUT\,
	combout => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella31~COMBOUT\);

-- Location: FF_X109_Y22_N31
\ena_Gen|clkCount_rtl_0|auto_generated|counter_cella31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|clkCount_rtl_0|auto_generated|counter_cella31~COMBOUT\,
	clrn => \key3_n~input_o\,
	sclr => \ena_Gen|reduce_nor~401\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(31));

-- Location: LCCOMB_X110_Y23_N28
\ena_Gen|reduce_nor~398_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~398\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(0)) # (\Equal0~0_combout\ $ (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(0),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(12),
	combout => \ena_Gen|reduce_nor~398\);

-- Location: LCCOMB_X110_Y22_N2
\ena_Gen|reduce_nor~399_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~399\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(29)) # ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(27)) # ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(26)) # (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(29),
	datab => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(27),
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(26),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(28),
	combout => \ena_Gen|reduce_nor~399\);

-- Location: LCCOMB_X110_Y23_N30
\ena_Gen|reduce_nor~400_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~400\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(31)) # ((\ena_Gen|reduce_nor~398\) # ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(30)) # (\ena_Gen|reduce_nor~399\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(31),
	datab => \ena_Gen|reduce_nor~398\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(30),
	datad => \ena_Gen|reduce_nor~399\,
	combout => \ena_Gen|reduce_nor~400\);

-- Location: LCCOMB_X111_Y23_N12
\speed_ctl[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_ctl[10]~3_combout\ = (!\key_speed[0]~input_o\ & (!\key_speed[3]~input_o\ & (\key_speed[1]~input_o\ $ (\key_speed[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \speed_ctl[10]~3_combout\);

-- Location: LCCOMB_X111_Y23_N10
\ena_Gen|reduce_nor~389_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~389\ = (\speed_ctl[10]~3_combout\ & ((\speed_ctl~0_combout\ $ (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10)))) # (!\speed_ctl[10]~3_combout\ & 
-- ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10)) # (\speed_ctl~0_combout\ $ (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_ctl[10]~3_combout\,
	datab => \speed_ctl~0_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(9),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(10),
	combout => \ena_Gen|reduce_nor~389\);

-- Location: LCCOMB_X110_Y22_N16
\ena_Gen|reduce_nor~388_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~388\ = (\Equal2~0_combout\ & ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22)) # (\speed_ctl~0_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21))))) # (!\Equal2~0_combout\ & ((\speed_ctl~0_combout\ $ 
-- (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \speed_ctl~0_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(22),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(21),
	combout => \ena_Gen|reduce_nor~388\);

-- Location: LCCOMB_X110_Y23_N16
\ena_Gen|reduce_nor~391_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~391\ = (\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(5)) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(19),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(5),
	combout => \ena_Gen|reduce_nor~391\);

-- Location: LCCOMB_X111_Y23_N22
\speed_ctl[25]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_ctl[25]~2_combout\ = (\key_speed[1]~input_o\ & (!\key_speed[2]~input_o\ & (!\key_speed[0]~input_o\ & !\key_speed[3]~input_o\))) # (!\key_speed[1]~input_o\ & ((\key_speed[2]~input_o\ & (!\key_speed[0]~input_o\ & !\key_speed[3]~input_o\)) # 
-- (!\key_speed[2]~input_o\ & (\key_speed[0]~input_o\ $ (\key_speed[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \speed_ctl[25]~2_combout\);

-- Location: LCCOMB_X111_Y23_N0
\speed_ctl[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \speed_ctl[6]~1_combout\ = (\key_speed[1]~input_o\) # ((\key_speed[2]~input_o\) # (\key_speed[0]~input_o\ $ (!\key_speed[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_speed[1]~input_o\,
	datab => \key_speed[2]~input_o\,
	datac => \key_speed[0]~input_o\,
	datad => \key_speed[3]~input_o\,
	combout => \speed_ctl[6]~1_combout\);

-- Location: LCCOMB_X111_Y23_N24
\ena_Gen|reduce_nor~390_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~390\ = (\speed_ctl[25]~2_combout\ & ((\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25)) # (\speed_ctl[6]~1_combout\ $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6))))) # (!\speed_ctl[25]~2_combout\ & ((\speed_ctl[6]~1_combout\ 
-- $ (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6))) # (!\ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_ctl[25]~2_combout\,
	datab => \speed_ctl[6]~1_combout\,
	datac => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(6),
	datad => \ena_Gen|clkCount_rtl_0|auto_generated|safe_q\(25),
	combout => \ena_Gen|reduce_nor~390\);

-- Location: LCCOMB_X111_Y23_N4
\ena_Gen|reduce_nor~392_I\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~392\ = (\ena_Gen|reduce_nor~389\) # ((\ena_Gen|reduce_nor~388\) # ((\ena_Gen|reduce_nor~391\) # (\ena_Gen|reduce_nor~390\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|reduce_nor~389\,
	datab => \ena_Gen|reduce_nor~388\,
	datac => \ena_Gen|reduce_nor~391\,
	datad => \ena_Gen|reduce_nor~390\,
	combout => \ena_Gen|reduce_nor~392\);

-- Location: LCCOMB_X110_Y23_N0
\ena_Gen|clkEnable_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ena_Gen|reduce_nor~401\ = (!\ena_Gen|reduce_nor~387\ & (!\ena_Gen|reduce_nor~397\ & (!\ena_Gen|reduce_nor~400\ & !\ena_Gen|reduce_nor~392\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena_Gen|reduce_nor~387\,
	datab => \ena_Gen|reduce_nor~397\,
	datac => \ena_Gen|reduce_nor~400\,
	datad => \ena_Gen|reduce_nor~392\,
	combout => \ena_Gen|reduce_nor~401\);

-- Location: FF_X110_Y23_N1
\ena_Gen|clkEnable_out~reg0_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ena_Gen|reduce_nor~401\,
	clrn => \key3_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena_Gen|clkEnable_out~reg0\);

-- Location: FF_X114_Y34_N21
\sync_C|q_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sync_C|q_out[0]~2_combout\,
	clrn => \key3_n~input_o\,
	ena => \ena_Gen|clkEnable_out~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_C|q_out\(0));

-- Location: LCCOMB_X114_Y34_N12
\sync_C|q_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_C|q_out~1_combout\ = \sync_C|q_out\(1) $ (\sync_C|q_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_C|q_out\(1),
	datad => \sync_C|q_out\(0),
	combout => \sync_C|q_out~1_combout\);

-- Location: FF_X114_Y34_N13
\sync_C|q_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sync_C|q_out~1_combout\,
	clrn => \key3_n~input_o\,
	ena => \ena_Gen|clkEnable_out~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_C|q_out\(1));

-- Location: LCCOMB_X114_Y34_N10
\sync_C|q_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_C|q_out~0_combout\ = \sync_C|q_out\(2) $ (((\sync_C|q_out\(1) & \sync_C|q_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datac => \sync_C|q_out\(2),
	datad => \sync_C|q_out\(0),
	combout => \sync_C|q_out~0_combout\);

-- Location: FF_X114_Y34_N11
\sync_C|q_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sync_C|q_out~0_combout\,
	clrn => \key3_n~input_o\,
	ena => \ena_Gen|clkEnable_out~reg0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_C|q_out\(2));

-- Location: LCCOMB_X114_Y34_N22
\seg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux3~0_combout\ = (!\sync_C|q_out\(1) & (!\sync_C|q_out\(0) & !\sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y34_N8
\seg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux2~0_combout\ = (!\sync_C|q_out\(1) & (\sync_C|q_out\(0) & !\sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y34_N26
\seg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux1~0_combout\ = (\sync_C|q_out\(1) & (!\sync_C|q_out\(0) & !\sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y34_N28
\seg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux0~0_combout\ = (\sync_C|q_out\(1) & (\sync_C|q_out\(0) & !\sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y34_N2
\seg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux7~0_combout\ = (\sync_C|q_out\(1) & (\sync_C|q_out\(0) & \sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux7~0_combout\);

-- Location: LCCOMB_X114_Y34_N24
\seg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux6~0_combout\ = (!\sync_C|q_out\(1) & (!\sync_C|q_out\(0) & \sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y34_N18
\seg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux5~0_combout\ = (!\sync_C|q_out\(1) & (\sync_C|q_out\(0) & \sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y34_N4
\seg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux4~0_combout\ = (\sync_C|q_out\(1) & (!\sync_C|q_out\(0) & \sync_C|q_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_C|q_out\(1),
	datab => \sync_C|q_out\(0),
	datad => \sync_C|q_out\(2),
	combout => \seg|Mux4~0_combout\);

ww_hex0_n(0) <= \hex0_n[0]~output_o\;

ww_hex0_n(1) <= \hex0_n[1]~output_o\;

ww_hex0_n(2) <= \hex0_n[2]~output_o\;

ww_hex0_n(3) <= \hex0_n[3]~output_o\;

ww_hex0_n(4) <= \hex0_n[4]~output_o\;

ww_hex0_n(5) <= \hex0_n[5]~output_o\;

ww_hex0_n(6) <= \hex0_n[6]~output_o\;

ww_hex1_n(0) <= \hex1_n[0]~output_o\;

ww_hex1_n(1) <= \hex1_n[1]~output_o\;

ww_hex1_n(2) <= \hex1_n[2]~output_o\;

ww_hex1_n(3) <= \hex1_n[3]~output_o\;

ww_hex1_n(4) <= \hex1_n[4]~output_o\;

ww_hex1_n(5) <= \hex1_n[5]~output_o\;

ww_hex1_n(6) <= \hex1_n[6]~output_o\;
END structure;


