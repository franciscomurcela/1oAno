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

-- DATE "12/07/2021 12:11:29"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
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

ENTITY 	Dec4_16 IS
    PORT (
	y15 : OUT std_logic;
	x0 : IN std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	E1 : IN std_logic;
	E0 : IN std_logic;
	\gnd\ : IN std_logic;
	y14 : OUT std_logic;
	y13 : OUT std_logic;
	y12 : OUT std_logic;
	y11 : OUT std_logic;
	y10 : OUT std_logic;
	y9 : OUT std_logic;
	y8 : OUT std_logic;
	y7 : OUT std_logic;
	y6 : OUT std_logic;
	y5 : OUT std_logic;
	y4 : OUT std_logic;
	y3 : OUT std_logic;
	y2 : OUT std_logic;
	y1 : OUT std_logic;
	y0 : OUT std_logic
	);
END Dec4_16;

ARCHITECTURE structure OF Dec4_16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y15 : std_logic;
SIGNAL ww_x0 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E0 : std_logic;
SIGNAL \ww_gnd\ : std_logic;
SIGNAL ww_y14 : std_logic;
SIGNAL ww_y13 : std_logic;
SIGNAL ww_y12 : std_logic;
SIGNAL ww_y11 : std_logic;
SIGNAL ww_y10 : std_logic;
SIGNAL ww_y9 : std_logic;
SIGNAL ww_y8 : std_logic;
SIGNAL ww_y7 : std_logic;
SIGNAL ww_y6 : std_logic;
SIGNAL ww_y5 : std_logic;
SIGNAL ww_y4 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL \y15~output_o\ : std_logic;
SIGNAL \y14~output_o\ : std_logic;
SIGNAL \y13~output_o\ : std_logic;
SIGNAL \y12~output_o\ : std_logic;
SIGNAL \y11~output_o\ : std_logic;
SIGNAL \y10~output_o\ : std_logic;
SIGNAL \y9~output_o\ : std_logic;
SIGNAL \y8~output_o\ : std_logic;
SIGNAL \y7~output_o\ : std_logic;
SIGNAL \y6~output_o\ : std_logic;
SIGNAL \y5~output_o\ : std_logic;
SIGNAL \y4~output_o\ : std_logic;
SIGNAL \y3~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \y0~output_o\ : std_logic;
SIGNAL \x3~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \E1~input_o\ : std_logic;
SIGNAL \E0~input_o\ : std_logic;
SIGNAL \inst13|1~combout\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \x0~input_o\ : std_logic;
SIGNAL \gnd~input_o\ : std_logic;
SIGNAL \inst14|1~combout\ : std_logic;
SIGNAL \inst14|2~combout\ : std_logic;
SIGNAL \inst14|3~combout\ : std_logic;
SIGNAL \inst14|4~combout\ : std_logic;
SIGNAL \inst13|2~combout\ : std_logic;
SIGNAL \inst15|1~combout\ : std_logic;
SIGNAL \inst15|2~combout\ : std_logic;
SIGNAL \inst15|3~combout\ : std_logic;
SIGNAL \inst15|4~combout\ : std_logic;
SIGNAL \inst13|3~combout\ : std_logic;
SIGNAL \inst16|1~combout\ : std_logic;
SIGNAL \inst16|2~combout\ : std_logic;
SIGNAL \inst16|3~combout\ : std_logic;
SIGNAL \inst16|4~combout\ : std_logic;
SIGNAL \inst13|4~combout\ : std_logic;
SIGNAL \inst17|1~combout\ : std_logic;
SIGNAL \inst17|2~combout\ : std_logic;
SIGNAL \inst17|3~combout\ : std_logic;
SIGNAL \inst17|4~combout\ : std_logic;
SIGNAL \ALT_INV_gnd~input_o\ : std_logic;
SIGNAL \ALT_INV_x0~input_o\ : std_logic;
SIGNAL \ALT_INV_x1~input_o\ : std_logic;
SIGNAL \ALT_INV_E0~input_o\ : std_logic;
SIGNAL \ALT_INV_E1~input_o\ : std_logic;
SIGNAL \ALT_INV_x2~input_o\ : std_logic;
SIGNAL \ALT_INV_x3~input_o\ : std_logic;
SIGNAL \inst13|ALT_INV_4~combout\ : std_logic;
SIGNAL \inst13|ALT_INV_3~combout\ : std_logic;
SIGNAL \inst13|ALT_INV_2~combout\ : std_logic;
SIGNAL \inst13|ALT_INV_1~combout\ : std_logic;

BEGIN

y15 <= ww_y15;
ww_x0 <= x0;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_E1 <= E1;
ww_E0 <= E0;
\ww_gnd\ <= \gnd\;
y14 <= ww_y14;
y13 <= ww_y13;
y12 <= ww_y12;
y11 <= ww_y11;
y10 <= ww_y10;
y9 <= ww_y9;
y8 <= ww_y8;
y7 <= ww_y7;
y6 <= ww_y6;
y5 <= ww_y5;
y4 <= ww_y4;
y3 <= ww_y3;
y2 <= ww_y2;
y1 <= ww_y1;
y0 <= ww_y0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_gnd~input_o\ <= NOT \gnd~input_o\;
\ALT_INV_x0~input_o\ <= NOT \x0~input_o\;
\ALT_INV_x1~input_o\ <= NOT \x1~input_o\;
\ALT_INV_E0~input_o\ <= NOT \E0~input_o\;
\ALT_INV_E1~input_o\ <= NOT \E1~input_o\;
\ALT_INV_x2~input_o\ <= NOT \x2~input_o\;
\ALT_INV_x3~input_o\ <= NOT \x3~input_o\;
\inst13|ALT_INV_4~combout\ <= NOT \inst13|4~combout\;
\inst13|ALT_INV_3~combout\ <= NOT \inst13|3~combout\;
\inst13|ALT_INV_2~combout\ <= NOT \inst13|2~combout\;
\inst13|ALT_INV_1~combout\ <= NOT \inst13|1~combout\;

\y15~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|1~combout\,
	devoe => ww_devoe,
	o => \y15~output_o\);

\y14~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|2~combout\,
	devoe => ww_devoe,
	o => \y14~output_o\);

\y13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|3~combout\,
	devoe => ww_devoe,
	o => \y13~output_o\);

\y12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|4~combout\,
	devoe => ww_devoe,
	o => \y12~output_o\);

\y11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|1~combout\,
	devoe => ww_devoe,
	o => \y11~output_o\);

\y10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|2~combout\,
	devoe => ww_devoe,
	o => \y10~output_o\);

\y9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|3~combout\,
	devoe => ww_devoe,
	o => \y9~output_o\);

\y8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|4~combout\,
	devoe => ww_devoe,
	o => \y8~output_o\);

\y7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|1~combout\,
	devoe => ww_devoe,
	o => \y7~output_o\);

\y6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|2~combout\,
	devoe => ww_devoe,
	o => \y6~output_o\);

\y5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|3~combout\,
	devoe => ww_devoe,
	o => \y5~output_o\);

\y4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|4~combout\,
	devoe => ww_devoe,
	o => \y4~output_o\);

\y3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|1~combout\,
	devoe => ww_devoe,
	o => \y3~output_o\);

\y2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|2~combout\,
	devoe => ww_devoe,
	o => \y2~output_o\);

\y1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|3~combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

\y0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|4~combout\,
	devoe => ww_devoe,
	o => \y0~output_o\);

\x3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3,
	o => \x3~input_o\);

\x2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

\E1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E1,
	o => \E1~input_o\);

\E0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E0,
	o => \E0~input_o\);

\inst13|1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|1~combout\ = (\x3~input_o\ & (\x2~input_o\ & (\E1~input_o\ & !\E0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x3~input_o\,
	datab => \ALT_INV_x2~input_o\,
	datac => \ALT_INV_E1~input_o\,
	datad => \ALT_INV_E0~input_o\,
	combout => \inst13|1~combout\);

\x1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

\x0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0,
	o => \x0~input_o\);

\gnd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_gnd\,
	o => \gnd~input_o\);

\inst14|1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|1~combout\ = (\inst13|1~combout\ & (\x1~input_o\ & (\x0~input_o\ & !\gnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_1~combout\,
	datab => \ALT_INV_x1~input_o\,
	datac => \ALT_INV_x0~input_o\,
	datad => \ALT_INV_gnd~input_o\,
	combout => \inst14|1~combout\);

\inst14|2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|2~combout\ = (\inst13|1~combout\ & (\x1~input_o\ & (!\x0~input_o\ & !\gnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_1~combout\,
	datab => \ALT_INV_x1~input_o\,
	datac => \ALT_INV_x0~input_o\,
	datad => \ALT_INV_gnd~input_o\,
	combout => \inst14|2~combout\);

\inst14|3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|3~combout\ = (\inst13|1~combout\ & (!\x1~input_o\ & (\x0~input_o\ & !\gnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_1~combout\,
	datab => \ALT_INV_x1~input_o\,
	datac => \ALT_INV_x0~input_o\,
	datad => \ALT_INV_gnd~input_o\,
	combout => \inst14|3~combout\);

\inst14|4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|4~combout\ = (\inst13|1~combout\ & (!\x1~input_o\ & (!\x0~input_o\ & !\gnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_1~combout\,
	datab => \ALT_INV_x1~input_o\,
	datac => \ALT_INV_x0~input_o\,
	datad => \ALT_INV_gnd~input_o\,
	combout => \inst14|4~combout\);

\inst13|2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|2~combout\ = (\x3~input_o\ & (!\x2~input_o\ & (\E1~input_o\ & !\E0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x3~input_o\,
	datab => \ALT_INV_x2~input_o\,
	datac => \ALT_INV_E1~input_o\,
	datad => \ALT_INV_E0~input_o\,
	combout => \inst13|2~combout\);

\inst15|1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|1~combout\ = (\x1~input_o\ & (\x0~input_o\ & (!\gnd~input_o\ & \inst13|2~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_2~combout\,
	combout => \inst15|1~combout\);

\inst15|2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|2~combout\ = (\x1~input_o\ & (!\x0~input_o\ & (!\gnd~input_o\ & \inst13|2~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_2~combout\,
	combout => \inst15|2~combout\);

\inst15|3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|3~combout\ = (!\x1~input_o\ & (\x0~input_o\ & (!\gnd~input_o\ & \inst13|2~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_2~combout\,
	combout => \inst15|3~combout\);

\inst15|4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|4~combout\ = (!\x1~input_o\ & (!\x0~input_o\ & (!\gnd~input_o\ & \inst13|2~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_2~combout\,
	combout => \inst15|4~combout\);

\inst13|3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|3~combout\ = (!\x3~input_o\ & (\x2~input_o\ & (\E1~input_o\ & !\E0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x3~input_o\,
	datab => \ALT_INV_x2~input_o\,
	datac => \ALT_INV_E1~input_o\,
	datad => \ALT_INV_E0~input_o\,
	combout => \inst13|3~combout\);

\inst16|1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|1~combout\ = (\x1~input_o\ & (\x0~input_o\ & (!\gnd~input_o\ & \inst13|3~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_3~combout\,
	combout => \inst16|1~combout\);

\inst16|2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|2~combout\ = (\x1~input_o\ & (!\x0~input_o\ & (!\gnd~input_o\ & \inst13|3~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_3~combout\,
	combout => \inst16|2~combout\);

\inst16|3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|3~combout\ = (!\x1~input_o\ & (\x0~input_o\ & (!\gnd~input_o\ & \inst13|3~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_3~combout\,
	combout => \inst16|3~combout\);

\inst16|4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|4~combout\ = (!\x1~input_o\ & (!\x0~input_o\ & (!\gnd~input_o\ & \inst13|3~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_3~combout\,
	combout => \inst16|4~combout\);

\inst13|4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|4~combout\ = (!\x3~input_o\ & (!\x2~input_o\ & (\E1~input_o\ & !\E0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x3~input_o\,
	datab => \ALT_INV_x2~input_o\,
	datac => \ALT_INV_E1~input_o\,
	datad => \ALT_INV_E0~input_o\,
	combout => \inst13|4~combout\);

\inst17|1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|1~combout\ = (\x1~input_o\ & (\x0~input_o\ & (!\gnd~input_o\ & \inst13|4~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_4~combout\,
	combout => \inst17|1~combout\);

\inst17|2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|2~combout\ = (\x1~input_o\ & (!\x0~input_o\ & (!\gnd~input_o\ & \inst13|4~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_4~combout\,
	combout => \inst17|2~combout\);

\inst17|3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|3~combout\ = (!\x1~input_o\ & (\x0~input_o\ & (!\gnd~input_o\ & \inst13|4~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_4~combout\,
	combout => \inst17|3~combout\);

\inst17|4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|4~combout\ = (!\x1~input_o\ & (!\x0~input_o\ & (!\gnd~input_o\ & \inst13|4~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~input_o\,
	datab => \ALT_INV_x0~input_o\,
	datac => \ALT_INV_gnd~input_o\,
	datad => \inst13|ALT_INV_4~combout\,
	combout => \inst17|4~combout\);

ww_y15 <= \y15~output_o\;

ww_y14 <= \y14~output_o\;

ww_y13 <= \y13~output_o\;

ww_y12 <= \y12~output_o\;

ww_y11 <= \y11~output_o\;

ww_y10 <= \y10~output_o\;

ww_y9 <= \y9~output_o\;

ww_y8 <= \y8~output_o\;

ww_y7 <= \y7~output_o\;

ww_y6 <= \y6~output_o\;

ww_y5 <= \y5~output_o\;

ww_y4 <= \y4~output_o\;

ww_y3 <= \y3~output_o\;

ww_y2 <= \y2~output_o\;

ww_y1 <= \y1~output_o\;

ww_y0 <= \y0~output_o\;
END structure;


