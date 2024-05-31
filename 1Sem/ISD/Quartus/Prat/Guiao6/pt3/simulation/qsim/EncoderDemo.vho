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

-- DATE "12/07/2021 12:50:02"

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

ENTITY 	EncoderDemo IS
    PORT (
	A2 : OUT std_logic;
	y7 : IN std_logic;
	y5 : IN std_logic;
	y4 : IN std_logic;
	y6 : IN std_logic;
	A1 : OUT std_logic;
	y2 : IN std_logic;
	y3 : IN std_logic;
	A0 : OUT std_logic;
	y1 : IN std_logic
	);
END EncoderDemo;

ARCHITECTURE structure OF EncoderDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_y7 : std_logic;
SIGNAL ww_y5 : std_logic;
SIGNAL ww_y4 : std_logic;
SIGNAL ww_y6 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL \A2~output_o\ : std_logic;
SIGNAL \A1~output_o\ : std_logic;
SIGNAL \A0~output_o\ : std_logic;
SIGNAL \y4~input_o\ : std_logic;
SIGNAL \y6~input_o\ : std_logic;
SIGNAL \y7~input_o\ : std_logic;
SIGNAL \y5~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \y2~input_o\ : std_logic;
SIGNAL \y3~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \y1~input_o\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \ALT_INV_y4~input_o\ : std_logic;
SIGNAL \ALT_INV_y6~input_o\ : std_logic;
SIGNAL \ALT_INV_y7~input_o\ : std_logic;
SIGNAL \ALT_INV_y5~input_o\ : std_logic;
SIGNAL \ALT_INV_y2~input_o\ : std_logic;
SIGNAL \ALT_INV_y3~input_o\ : std_logic;
SIGNAL \ALT_INV_y1~input_o\ : std_logic;

BEGIN

A2 <= ww_A2;
ww_y7 <= y7;
ww_y5 <= y5;
ww_y4 <= y4;
ww_y6 <= y6;
A1 <= ww_A1;
ww_y2 <= y2;
ww_y3 <= y3;
A0 <= ww_A0;
ww_y1 <= y1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y4~input_o\ <= NOT \y4~input_o\;
\ALT_INV_y6~input_o\ <= NOT \y6~input_o\;
\ALT_INV_y7~input_o\ <= NOT \y7~input_o\;
\ALT_INV_y5~input_o\ <= NOT \y5~input_o\;
\ALT_INV_y2~input_o\ <= NOT \y2~input_o\;
\ALT_INV_y3~input_o\ <= NOT \y3~input_o\;
\ALT_INV_y1~input_o\ <= NOT \y1~input_o\;

\A2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \A2~output_o\);

\A1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \A1~output_o\);

\A0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \A0~output_o\);

\y4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y4,
	o => \y4~input_o\);

\y6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y6,
	o => \y6~input_o\);

\y7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y7,
	o => \y7~input_o\);

\y5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y5,
	o => \y5~input_o\);

inst : cyclonev_lcell_comb
-- Equation(s):
-- \inst~combout\ = (((\y5~input_o\) # (\y7~input_o\)) # (\y6~input_o\)) # (\y4~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y4~input_o\,
	datab => \ALT_INV_y6~input_o\,
	datac => \ALT_INV_y7~input_o\,
	datad => \ALT_INV_y5~input_o\,
	combout => \inst~combout\);

\y2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y2,
	o => \y2~input_o\);

\y3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y3,
	o => \y3~input_o\);

inst1 : cyclonev_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (((\y3~input_o\) # (\y2~input_o\)) # (\y7~input_o\)) # (\y6~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y6~input_o\,
	datab => \ALT_INV_y7~input_o\,
	datac => \ALT_INV_y2~input_o\,
	datad => \ALT_INV_y3~input_o\,
	combout => \inst1~combout\);

\y1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y1,
	o => \y1~input_o\);

inst2 : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (((\y1~input_o\) # (\y3~input_o\)) # (\y5~input_o\)) # (\y7~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y7~input_o\,
	datab => \ALT_INV_y5~input_o\,
	datac => \ALT_INV_y3~input_o\,
	datad => \ALT_INV_y1~input_o\,
	combout => \inst2~combout\);

ww_A2 <= \A2~output_o\;

ww_A1 <= \A1~output_o\;

ww_A0 <= \A0~output_o\;
END structure;


