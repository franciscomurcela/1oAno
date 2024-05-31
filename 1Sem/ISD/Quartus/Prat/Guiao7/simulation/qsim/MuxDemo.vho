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

-- DATE "12/07/2021 15:53:43"

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

ENTITY 	MuxDemo4 IS
    PORT (
	f : OUT std_logic;
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic
	);
END MuxDemo4;

ARCHITECTURE structure OF MuxDemo4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \inst|inst4|23~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;

BEGIN

f <= ww_f;
ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;

\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|23~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

\inst|inst4|23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|23~0_combout\ = ((!\c~input_o\ & ((\b~input_o\) # (\a~input_o\))) # (\c~input_o\ & ((!\a~input_o\) # (!\b~input_o\)))) # (\d~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111101011111111111110101111111111111010111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d~input_o\,
	datab => \ALT_INV_c~input_o\,
	datac => \ALT_INV_a~input_o\,
	datad => \ALT_INV_b~input_o\,
	combout => \inst|inst4|23~0_combout\);

ww_f <= \f~output_o\;
END structure;


