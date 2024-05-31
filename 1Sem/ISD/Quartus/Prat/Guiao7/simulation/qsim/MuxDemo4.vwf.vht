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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/07/2021 15:53:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MuxDemo4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MuxDemo4_vhd_vec_tst IS
END MuxDemo4_vhd_vec_tst;
ARCHITECTURE MuxDemo4_arch OF MuxDemo4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL f : STD_LOGIC;
COMPONENT MuxDemo4
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	f : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MuxDemo4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	f => f
	);

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '0';
	WAIT FOR 400000 ps;
	d <= '1';
	WAIT FOR 400000 ps;
	d <= '0';
WAIT;
END PROCESS t_prcs_d;

-- c
t_prcs_c: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		c <= '0';
		WAIT FOR 200000 ps;
		c <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	c <= '0';
WAIT;
END PROCESS t_prcs_c;

-- b
t_prcs_b: PROCESS
BEGIN
LOOP
	b <= '0';
	WAIT FOR 100000 ps;
	b <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b;

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 50000 ps;
	a <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;
END MuxDemo4_arch;
