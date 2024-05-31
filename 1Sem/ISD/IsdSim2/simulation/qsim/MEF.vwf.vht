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
-- Generated on "02/09/2022 15:37:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MEF
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MEF_vhd_vec_tst IS
END MEF_vhd_vec_tst;
ARCHITECTURE MEF_arch OF MEF_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT MEF
	PORT (
	Clock : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Reset : IN STD_LOGIC;
	X : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MEF
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Q => Q,
	Reset => Reset,
	X => X
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		Clock <= '0';
		WAIT FOR 30000 ps;
		Clock <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	Clock <= '0';
	WAIT FOR 30000 ps;
	Clock <= '1';
WAIT;
END PROCESS t_prcs_Clock;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
	WAIT FOR 120000 ps;
	X <= '0';
	WAIT FOR 60000 ps;
	X <= '1';
	WAIT FOR 60000 ps;
	X <= '0';
	WAIT FOR 120000 ps;
	X <= '1';
	WAIT FOR 60000 ps;
	X <= '0';
	WAIT FOR 60000 ps;
	X <= '1';
	WAIT FOR 120000 ps;
	X <= '0';
	WAIT FOR 180000 ps;
	X <= '1';
	WAIT FOR 60000 ps;
	X <= '0';
	WAIT FOR 60000 ps;
	X <= '1';
	WAIT FOR 60000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;
END MEF_arch;
