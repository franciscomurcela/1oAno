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
-- Generated on "12/07/2021 12:50:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EncoderDemo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EncoderDemo_vhd_vec_tst IS
END EncoderDemo_vhd_vec_tst;
ARCHITECTURE EncoderDemo_arch OF EncoderDemo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL y2 : STD_LOGIC;
SIGNAL y3 : STD_LOGIC;
SIGNAL y4 : STD_LOGIC;
SIGNAL y5 : STD_LOGIC;
SIGNAL y6 : STD_LOGIC;
SIGNAL y7 : STD_LOGIC;
COMPONENT EncoderDemo
	PORT (
	A0 : OUT STD_LOGIC;
	A1 : OUT STD_LOGIC;
	A2 : OUT STD_LOGIC;
	y1 : IN STD_LOGIC;
	y2 : IN STD_LOGIC;
	y3 : IN STD_LOGIC;
	y4 : IN STD_LOGIC;
	y5 : IN STD_LOGIC;
	y6 : IN STD_LOGIC;
	y7 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : EncoderDemo
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	y1 => y1,
	y2 => y2,
	y3 => y3,
	y4 => y4,
	y5 => y5,
	y6 => y6,
	y7 => y7
	);

-- y7
t_prcs_y7: PROCESS
BEGIN
	y7 <= '1';
	WAIT FOR 120000 ps;
	y7 <= '0';
	WAIT FOR 60000 ps;
	y7 <= '1';
	WAIT FOR 120000 ps;
	y7 <= '0';
	WAIT FOR 120000 ps;
	y7 <= '1';
	WAIT FOR 60000 ps;
	y7 <= '0';
	WAIT FOR 120000 ps;
	y7 <= '1';
	WAIT FOR 60000 ps;
	y7 <= '0';
	WAIT FOR 120000 ps;
	y7 <= '1';
	WAIT FOR 60000 ps;
	y7 <= '0';
WAIT;
END PROCESS t_prcs_y7;

-- y6
t_prcs_y6: PROCESS
BEGIN
	y6 <= '1';
	WAIT FOR 540000 ps;
	y6 <= '0';
	WAIT FOR 60000 ps;
	y6 <= '1';
	WAIT FOR 60000 ps;
	y6 <= '0';
	WAIT FOR 60000 ps;
	y6 <= '1';
	WAIT FOR 240000 ps;
	y6 <= '0';
WAIT;
END PROCESS t_prcs_y6;

-- y5
t_prcs_y5: PROCESS
BEGIN
	y5 <= '0';
	WAIT FOR 60000 ps;
	y5 <= '1';
	WAIT FOR 60000 ps;
	y5 <= '0';
	WAIT FOR 120000 ps;
	y5 <= '1';
	WAIT FOR 180000 ps;
	y5 <= '0';
	WAIT FOR 120000 ps;
	y5 <= '1';
	WAIT FOR 60000 ps;
	y5 <= '0';
	WAIT FOR 120000 ps;
	y5 <= '1';
	WAIT FOR 120000 ps;
	y5 <= '0';
WAIT;
END PROCESS t_prcs_y5;

-- y4
t_prcs_y4: PROCESS
BEGIN
	y4 <= '1';
	WAIT FOR 60000 ps;
	y4 <= '0';
	WAIT FOR 480000 ps;
	y4 <= '1';
	WAIT FOR 120000 ps;
	y4 <= '0';
	WAIT FOR 60000 ps;
	y4 <= '1';
WAIT;
END PROCESS t_prcs_y4;

-- y3
t_prcs_y3: PROCESS
BEGIN
	y3 <= '1';
	WAIT FOR 60000 ps;
	y3 <= '0';
	WAIT FOR 180000 ps;
	y3 <= '1';
	WAIT FOR 60000 ps;
	y3 <= '0';
	WAIT FOR 60000 ps;
	y3 <= '1';
	WAIT FOR 120000 ps;
	y3 <= '0';
	WAIT FOR 420000 ps;
	y3 <= '1';
	WAIT FOR 60000 ps;
	y3 <= '0';
WAIT;
END PROCESS t_prcs_y3;

-- y2
t_prcs_y2: PROCESS
BEGIN
	y2 <= '0';
	WAIT FOR 60000 ps;
	y2 <= '1';
	WAIT FOR 240000 ps;
	y2 <= '0';
	WAIT FOR 60000 ps;
	y2 <= '1';
	WAIT FOR 60000 ps;
	y2 <= '0';
	WAIT FOR 60000 ps;
	y2 <= '1';
	WAIT FOR 120000 ps;
	y2 <= '0';
	WAIT FOR 60000 ps;
	y2 <= '1';
	WAIT FOR 120000 ps;
	y2 <= '0';
WAIT;
END PROCESS t_prcs_y2;

-- y1
t_prcs_y1: PROCESS
BEGIN
	y1 <= '0';
	WAIT FOR 240000 ps;
	y1 <= '1';
	WAIT FOR 60000 ps;
	y1 <= '0';
	WAIT FOR 240000 ps;
	y1 <= '1';
	WAIT FOR 60000 ps;
	y1 <= '0';
	WAIT FOR 180000 ps;
	y1 <= '1';
WAIT;
END PROCESS t_prcs_y1;
END EncoderDemo_arch;
