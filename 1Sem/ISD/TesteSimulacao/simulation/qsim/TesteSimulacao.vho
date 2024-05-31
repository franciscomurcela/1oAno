-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/21/2021 15:36:52"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mux81 IS
    PORT (
	Y : OUT std_logic;
	x1 : IN std_logic;
	S : IN std_logic_vector(2 DOWNTO 0);
	x0 : IN std_logic;
	x4 : IN std_logic;
	x6 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	x5 : IN std_logic;
	x7 : IN std_logic
	);
END Mux81;

ARCHITECTURE structure OF Mux81 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_x0 : std_logic;
SIGNAL ww_x4 : std_logic;
SIGNAL ww_x6 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_x5 : std_logic;
SIGNAL ww_x7 : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \x0~input_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \x3~input_o\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;
SIGNAL \x4~input_o\ : std_logic;
SIGNAL \x5~input_o\ : std_logic;
SIGNAL \inst4~2_combout\ : std_logic;
SIGNAL \x6~input_o\ : std_logic;
SIGNAL \x7~input_o\ : std_logic;
SIGNAL \inst4~3_combout\ : std_logic;
SIGNAL \inst4~4_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~3_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_x7~input_o\ : std_logic;
SIGNAL \ALT_INV_x6~input_o\ : std_logic;
SIGNAL \ALT_INV_x5~input_o\ : std_logic;
SIGNAL \ALT_INV_x4~input_o\ : std_logic;
SIGNAL \ALT_INV_x3~input_o\ : std_logic;
SIGNAL \ALT_INV_x2~input_o\ : std_logic;
SIGNAL \ALT_INV_x1~input_o\ : std_logic;
SIGNAL \ALT_INV_x0~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;

BEGIN

Y <= ww_Y;
ww_x1 <= x1;
ww_S <= S;
ww_x0 <= x0;
ww_x4 <= x4;
ww_x6 <= x6;
ww_x2 <= x2;
ww_x3 <= x3;
ww_x5 <= x5;
ww_x7 <= x7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst4~1_combout\ <= NOT \inst4~1_combout\;
\ALT_INV_inst4~2_combout\ <= NOT \inst4~2_combout\;
\ALT_INV_inst4~3_combout\ <= NOT \inst4~3_combout\;
\ALT_INV_inst4~0_combout\ <= NOT \inst4~0_combout\;
\ALT_INV_x7~input_o\ <= NOT \x7~input_o\;
\ALT_INV_x6~input_o\ <= NOT \x6~input_o\;
\ALT_INV_x5~input_o\ <= NOT \x5~input_o\;
\ALT_INV_x4~input_o\ <= NOT \x4~input_o\;
\ALT_INV_x3~input_o\ <= NOT \x3~input_o\;
\ALT_INV_x2~input_o\ <= NOT \x2~input_o\;
\ALT_INV_x1~input_o\ <= NOT \x1~input_o\;
\ALT_INV_x0~input_o\ <= NOT \x0~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;

\Y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~4_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

\x0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0,
	o => \x0~input_o\);

\x1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

\inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = ( \x1~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & ((\x0~input_o\) # (\S[0]~input_o\)))) ) ) # ( !\x1~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\S[0]~input_o\ & \x0~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010001000100000000000100000000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_x0~input_o\,
	datae => \ALT_INV_x1~input_o\,
	combout => \inst4~0_combout\);

\x2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

\x3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3,
	o => \x3~input_o\);

\inst4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~1_combout\ = ( \x3~input_o\ & ( (!\S[2]~input_o\ & (\S[1]~input_o\ & ((\x2~input_o\) # (\S[0]~input_o\)))) ) ) # ( !\x3~input_o\ & ( (!\S[2]~input_o\ & (\S[1]~input_o\ & (!\S[0]~input_o\ & \x2~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000100010001000000000001000000000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_x2~input_o\,
	datae => \ALT_INV_x3~input_o\,
	combout => \inst4~1_combout\);

\x4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x4,
	o => \x4~input_o\);

\x5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x5,
	o => \x5~input_o\);

\inst4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~2_combout\ = ( \x5~input_o\ & ( (\S[2]~input_o\ & (!\S[1]~input_o\ & ((\x4~input_o\) # (\S[0]~input_o\)))) ) ) # ( !\x5~input_o\ & ( (\S[2]~input_o\ & (!\S[1]~input_o\ & (!\S[0]~input_o\ & \x4~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000001000100010000000000010000000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_x4~input_o\,
	datae => \ALT_INV_x5~input_o\,
	combout => \inst4~2_combout\);

\x6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x6,
	o => \x6~input_o\);

\x7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x7,
	o => \x7~input_o\);

\inst4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~3_combout\ = ( \x7~input_o\ & ( (\S[2]~input_o\ & (\S[1]~input_o\ & ((\x6~input_o\) # (\S[0]~input_o\)))) ) ) # ( !\x7~input_o\ & ( (\S[2]~input_o\ & (\S[1]~input_o\ & (!\S[0]~input_o\ & \x6~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000010001000100000000000100000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_x6~input_o\,
	datae => \ALT_INV_x7~input_o\,
	combout => \inst4~3_combout\);

\inst4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~4_combout\ = (((\inst4~3_combout\) # (\inst4~2_combout\)) # (\inst4~1_combout\)) # (\inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~0_combout\,
	datab => \ALT_INV_inst4~1_combout\,
	datac => \ALT_INV_inst4~2_combout\,
	datad => \ALT_INV_inst4~3_combout\,
	combout => \inst4~4_combout\);

ww_Y <= \Y~output_o\;
END structure;


