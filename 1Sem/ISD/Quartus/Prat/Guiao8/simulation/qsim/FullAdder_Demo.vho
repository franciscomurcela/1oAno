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

-- DATE "12/14/2021 15:35:15"

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

ENTITY 	bit4FullAdder IS
    PORT (
	Cout : OUT std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	ADD_n : IN std_logic;
	Overflow : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END bit4FullAdder;

ARCHITECTURE structure OF bit4FullAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ADD_n : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ADD_n~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst1|inst3~combout\ : std_logic;
SIGNAL \inst3|inst3~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst3|inst1~combout\ : std_logic;
SIGNAL \inst2|inst1~combout\ : std_logic;
SIGNAL \inst1|inst1~combout\ : std_logic;
SIGNAL \inst|inst0~combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADD_n~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_A <= A;
ww_B <= B;
ww_ADD_n <= ADD_n;
Overflow <= ww_Overflow;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_ADD_n~input_o\ <= NOT \ADD_n~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\inst1|ALT_INV_inst3~combout\ <= NOT \inst1|inst3~combout\;

\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst3~combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst1~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst0~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\ADD_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_n,
	o => \ADD_n~input_o\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\inst1|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3~combout\ = ( \B[0]~input_o\ & ( (!\A[1]~input_o\ & (\A[0]~input_o\ & (!\ADD_n~input_o\ $ (!\B[1]~input_o\)))) # (\A[1]~input_o\ & ((!\ADD_n~input_o\ $ (!\B[1]~input_o\)) # (\A[0]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\ADD_n~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000100100111101101010011010100110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_n~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \inst1|inst3~combout\);

\inst3|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst3~combout\ = ( \B[2]~input_o\ & ( \inst1|inst3~combout\ & ( (!\B[3]~input_o\ & (((\ADD_n~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\))) # (\B[3]~input_o\ & ((!\ADD_n~input_o\) # ((\A[3]~input_o\ & \A[2]~input_o\)))) ) ) ) # ( !\B[2]~input_o\ 
-- & ( \inst1|inst3~combout\ & ( (!\B[3]~input_o\ & (((\A[3]~input_o\ & \A[2]~input_o\)) # (\ADD_n~input_o\))) # (\B[3]~input_o\ & (((!\ADD_n~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\))) ) ) ) # ( \B[2]~input_o\ & ( !\inst1|inst3~combout\ & ( 
-- (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\A[2]~input_o\) # (\ADD_n~input_o\)))) # (\B[3]~input_o\ & (!\ADD_n~input_o\ & ((\A[2]~input_o\) # (\A[3]~input_o\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\inst1|inst3~combout\ & ( (!\B[3]~input_o\ & (\ADD_n~input_o\ & 
-- ((\A[2]~input_o\) # (\A[3]~input_o\)))) # (\B[3]~input_o\ & (\A[3]~input_o\ & ((!\ADD_n~input_o\) # (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000011101000101000111010000011101011111010111010001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ADD_n~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \inst1|ALT_INV_inst3~combout\,
	combout => \inst3|inst3~combout\);

inst4 : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~combout\ = ( \B[2]~input_o\ & ( \inst1|inst3~combout\ & ( (!\A[2]~input_o\ & (!\B[3]~input_o\ & (!\A[3]~input_o\ $ (\ADD_n~input_o\)))) # (\A[2]~input_o\ & (!\A[3]~input_o\ & (!\B[3]~input_o\ $ (\ADD_n~input_o\)))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- \inst1|inst3~combout\ & ( (!\A[2]~input_o\ & (\B[3]~input_o\ & (!\A[3]~input_o\ $ (!\ADD_n~input_o\)))) # (\A[2]~input_o\ & (!\A[3]~input_o\ & (!\B[3]~input_o\ $ (\ADD_n~input_o\)))) ) ) ) # ( \B[2]~input_o\ & ( !\inst1|inst3~combout\ & ( (!\A[2]~input_o\ 
-- & (\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\ADD_n~input_o\)))) # (\A[2]~input_o\ & (!\B[3]~input_o\ & (!\A[3]~input_o\ $ (\ADD_n~input_o\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\inst1|inst3~combout\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & (!\B[3]~input_o\ $ 
-- (!\ADD_n~input_o\)))) # (\A[2]~input_o\ & (\B[3]~input_o\ & (!\A[3]~input_o\ $ (!\ADD_n~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010010000101001000010000010010100000101000010010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ADD_n~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \inst1|ALT_INV_inst3~combout\,
	combout => \inst4~combout\);

\inst3|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst1~combout\ = ( \B[2]~input_o\ & ( \inst1|inst3~combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((!\ADD_n~input_o\) # (!\A[2]~input_o\)))) ) ) ) # ( !\B[2]~input_o\ & ( \inst1|inst3~combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ 
-- (((!\ADD_n~input_o\ & \A[2]~input_o\)))) ) ) ) # ( \B[2]~input_o\ & ( !\inst1|inst3~combout\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\A[2]~input_o\) # (\ADD_n~input_o\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\inst1|inst3~combout\ & ( !\A[3]~input_o\ $ 
-- (!\B[3]~input_o\ $ (((\ADD_n~input_o\ & !\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010011001100101100110100101101001100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ADD_n~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \inst1|ALT_INV_inst3~combout\,
	combout => \inst3|inst1~combout\);

\inst2|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1~combout\ = !\ADD_n~input_o\ $ (!\A[2]~input_o\ $ (!\B[2]~input_o\ $ (!\inst1|inst3~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_n~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \inst1|ALT_INV_inst3~combout\,
	combout => \inst2|inst1~combout\);

\inst1|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1~combout\ = ( \B[0]~input_o\ & ( !\ADD_n~input_o\ $ (!\A[1]~input_o\ $ (!\B[1]~input_o\ $ (!\A[0]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100011010011001011000111100001111000110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADD_n~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \inst1|inst1~combout\);

\inst|inst0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst0~combout\ = !\A[0]~input_o\ $ (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	combout => \inst|inst0~combout\);

ww_Cout <= \Cout~output_o\;

ww_Overflow <= \Overflow~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


