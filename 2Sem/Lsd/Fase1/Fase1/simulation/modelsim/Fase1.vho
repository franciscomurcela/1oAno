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

-- DATE "06/08/2022 18:08:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Fase1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Fase1;

-- Design Ports Information
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Fase1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debounce_KEY0|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce_KEY0|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_previousIn~q\ : std_logic;
SIGNAL \debounce_KEY0|Add0~0_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~1\ : std_logic;
SIGNAL \debounce_KEY0|Add0~2_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~3\ : std_logic;
SIGNAL \debounce_KEY0|Add0~4_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~5\ : std_logic;
SIGNAL \debounce_KEY0|Add0~6_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~7\ : std_logic;
SIGNAL \debounce_KEY0|Add0~8_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~9\ : std_logic;
SIGNAL \debounce_KEY0|Add0~10_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~11\ : std_logic;
SIGNAL \debounce_KEY0|Add0~12_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~13\ : std_logic;
SIGNAL \debounce_KEY0|Add0~14_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~15\ : std_logic;
SIGNAL \debounce_KEY0|Add0~16_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~17\ : std_logic;
SIGNAL \debounce_KEY0|Add0~18_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~19\ : std_logic;
SIGNAL \debounce_KEY0|Add0~20_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~21\ : std_logic;
SIGNAL \debounce_KEY0|Add0~22_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~23\ : std_logic;
SIGNAL \debounce_KEY0|Add0~24_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~25\ : std_logic;
SIGNAL \debounce_KEY0|Add0~26_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~27\ : std_logic;
SIGNAL \debounce_KEY0|Add0~29\ : std_logic;
SIGNAL \debounce_KEY0|Add0~30_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~31\ : std_logic;
SIGNAL \debounce_KEY0|Add0~32_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~33\ : std_logic;
SIGNAL \debounce_KEY0|Add0~34_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[17]~18_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~35\ : std_logic;
SIGNAL \debounce_KEY0|Add0~36_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~37\ : std_logic;
SIGNAL \debounce_KEY0|Add0~38_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[19]~10_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~39\ : std_logic;
SIGNAL \debounce_KEY0|Add0~40_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[20]~11_combout\ : std_logic;
SIGNAL \debounce_KEY0|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce_KEY0|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce_KEY0|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce_KEY0|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce_KEY0|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_KEY0|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce_KEY0|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[21]~25_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~41\ : std_logic;
SIGNAL \debounce_KEY0|Add0~42_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[21]~26_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \debounce_KEY0|Add0~28_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce_KEY0|s_pulsedOut~q\ : std_logic;
SIGNAL \counter0|Add0~0_combout\ : std_logic;
SIGNAL \counter0|s_cout~0_combout\ : std_logic;
SIGNAL \gameNormal|Equal4~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debounce_KEY1|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce_KEY1|Add0~0_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_previousIn~q\ : std_logic;
SIGNAL \debounce_KEY1|Add0~1\ : std_logic;
SIGNAL \debounce_KEY1|Add0~2_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[8]~3_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~3\ : std_logic;
SIGNAL \debounce_KEY1|Add0~4_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~5\ : std_logic;
SIGNAL \debounce_KEY1|Add0~6_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~7\ : std_logic;
SIGNAL \debounce_KEY1|Add0~8_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~9\ : std_logic;
SIGNAL \debounce_KEY1|Add0~10_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~11\ : std_logic;
SIGNAL \debounce_KEY1|Add0~12_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~13\ : std_logic;
SIGNAL \debounce_KEY1|Add0~14_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~15\ : std_logic;
SIGNAL \debounce_KEY1|Add0~16_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~17\ : std_logic;
SIGNAL \debounce_KEY1|Add0~18_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~19\ : std_logic;
SIGNAL \debounce_KEY1|Add0~20_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~21\ : std_logic;
SIGNAL \debounce_KEY1|Add0~22_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~23\ : std_logic;
SIGNAL \debounce_KEY1|Add0~24_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~25\ : std_logic;
SIGNAL \debounce_KEY1|Add0~27\ : std_logic;
SIGNAL \debounce_KEY1|Add0~28_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~29\ : std_logic;
SIGNAL \debounce_KEY1|Add0~30_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~31\ : std_logic;
SIGNAL \debounce_KEY1|Add0~32_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~33\ : std_logic;
SIGNAL \debounce_KEY1|Add0~34_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[17]~18_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~35\ : std_logic;
SIGNAL \debounce_KEY1|Add0~36_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~37\ : std_logic;
SIGNAL \debounce_KEY1|Add0~38_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[19]~10_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~39\ : std_logic;
SIGNAL \debounce_KEY1|Add0~40_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[20]~11_combout\ : std_logic;
SIGNAL \debounce_KEY1|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce_KEY1|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_KEY1|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce_KEY1|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce_KEY1|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce_KEY1|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce_KEY1|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[8]~0_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~26_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[8]~2_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[21]~25_combout\ : std_logic;
SIGNAL \debounce_KEY1|Add0~41\ : std_logic;
SIGNAL \debounce_KEY1|Add0~42_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[21]~26_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt[8]~4_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce_KEY1|s_pulsedOut~q\ : std_logic;
SIGNAL \counter1|s_cout~2_combout\ : std_logic;
SIGNAL \counter1|s_cout~1_combout\ : std_logic;
SIGNAL \counter1|Add0~0_combout\ : std_logic;
SIGNAL \counter1|s_cout~0_combout\ : std_logic;
SIGNAL \gameNormal|Selector0~0_combout\ : std_logic;
SIGNAL \gameNormal|comb_proc~5_combout\ : std_logic;
SIGNAL \gameNormal|comb_proc~6_combout\ : std_logic;
SIGNAL \gameNormal|comb_proc~2_combout\ : std_logic;
SIGNAL \gameNormal|comb_proc~3_combout\ : std_logic;
SIGNAL \gameNormal|comb_proc~4_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E0~0_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E0~q\ : std_logic;
SIGNAL \gameNormal|comb_proc~0_combout\ : std_logic;
SIGNAL \gameNormal|Selector0~1_combout\ : std_logic;
SIGNAL \gameNormal|Selector2~0_combout\ : std_logic;
SIGNAL \gameNormal|comb_proc~1_combout\ : std_logic;
SIGNAL \gameNormal|comb_proc~7_combout\ : std_logic;
SIGNAL \gameNormal|Selector2~1_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E3~q\ : std_logic;
SIGNAL \gameNormal|Selector4~0_combout\ : std_logic;
SIGNAL \gameNormal|Selector0~2_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E1~q\ : std_logic;
SIGNAL \gameNormal|Selector1~0_combout\ : std_logic;
SIGNAL \gameNormal|Selector1~1_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E2~q\ : std_logic;
SIGNAL \gameNormal|Selector3~0_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E4~0_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E4~1_combout\ : std_logic;
SIGNAL \gameNormal|s_currentState.E4~q\ : std_logic;
SIGNAL \gameNormal|Selector4~1_combout\ : std_logic;
SIGNAL \counter0|s_cout~1_combout\ : std_logic;
SIGNAL \counter0|s_cout~2_combout\ : std_logic;
SIGNAL \gameNormal|deuceMode~0_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA0~10_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~10_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA0~11_combout\ : std_logic;
SIGNAL \hexDecoder|LessThan0~0_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA0~13_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA0~14_combout\ : std_logic;
SIGNAL \hexDecoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA0~15_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA0~12_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA0~16_combout\ : std_logic;
SIGNAL \hexDecoder|LessThan0~1_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~15_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~16_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~11_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~12_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~13_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~17_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~14_combout\ : std_logic;
SIGNAL \hexDecoder|decOutA1~18_combout\ : std_logic;
SIGNAL \hexDecoder|Mux10~0_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB0~13_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~10_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB0~14_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB0~15_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB0~12_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB0~16_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~15_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~16_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~11_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~12_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~13_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~17_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~14_combout\ : std_logic;
SIGNAL \hexDecoder|decOutB1~18_combout\ : std_logic;
SIGNAL \counter0|s_cout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \counter1|s_cout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \debounce_KEY0|s_debounceCnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \debounce_KEY1|s_debounceCnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \hexDecoder|ALT_INV_decOutA1~16_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\hexDecoder|ALT_INV_decOutA1~16_combout\ <= NOT \hexDecoder|decOutA1~16_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA0~10_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA0~14_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA0~15_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA0~15_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA0~14_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA0~10_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA0~16_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA1~15_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|ALT_INV_decOutA1~16_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|ALT_INV_decOutA1~16_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA1~11_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA1~12_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA1~17_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutA1~18_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB0~13_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB0~14_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB0~15_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB0~15_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB0~14_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB0~13_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB0~16_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB1~15_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB1~16_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB1~16_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB1~11_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB1~12_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB1~17_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexDecoder|decOutB1~18_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X91_Y7_N16
\debounce_KEY0|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_dirtyIn~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \debounce_KEY0|s_dirtyIn~feeder_combout\);

-- Location: FF_X91_Y7_N17
\debounce_KEY0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_dirtyIn~q\);

-- Location: LCCOMB_X90_Y7_N28
\debounce_KEY0|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_previousIn~feeder_combout\ = \debounce_KEY0|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounce_KEY0|s_dirtyIn~q\,
	combout => \debounce_KEY0|s_previousIn~feeder_combout\);

-- Location: FF_X90_Y7_N29
\debounce_KEY0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_previousIn~q\);

-- Location: LCCOMB_X89_Y8_N10
\debounce_KEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~0_combout\ = \debounce_KEY0|s_debounceCnt\(0) $ (VCC)
-- \debounce_KEY0|Add0~1\ = CARRY(\debounce_KEY0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce_KEY0|Add0~0_combout\,
	cout => \debounce_KEY0|Add0~1\);

-- Location: LCCOMB_X88_Y7_N18
\debounce_KEY0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~24_combout\ = (\debounce_KEY0|Add0~0_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY0|Add0~0_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~24_combout\);

-- Location: FF_X88_Y7_N19
\debounce_KEY0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~24_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(0));

-- Location: LCCOMB_X89_Y8_N12
\debounce_KEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~2_combout\ = (\debounce_KEY0|s_debounceCnt\(1) & (\debounce_KEY0|Add0~1\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(1) & (!\debounce_KEY0|Add0~1\))
-- \debounce_KEY0|Add0~3\ = CARRY((!\debounce_KEY0|s_debounceCnt\(1) & !\debounce_KEY0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce_KEY0|Add0~1\,
	combout => \debounce_KEY0|Add0~2_combout\,
	cout => \debounce_KEY0|Add0~3\);

-- Location: LCCOMB_X89_Y8_N4
\debounce_KEY0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~20_combout\ = (\debounce_KEY0|Add0~2_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|Add0~2_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~20_combout\);

-- Location: FF_X89_Y8_N5
\debounce_KEY0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~20_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(1));

-- Location: LCCOMB_X89_Y8_N14
\debounce_KEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~4_combout\ = (\debounce_KEY0|s_debounceCnt\(2) & ((GND) # (!\debounce_KEY0|Add0~3\))) # (!\debounce_KEY0|s_debounceCnt\(2) & (\debounce_KEY0|Add0~3\ $ (GND)))
-- \debounce_KEY0|Add0~5\ = CARRY((\debounce_KEY0|s_debounceCnt\(2)) # (!\debounce_KEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce_KEY0|Add0~3\,
	combout => \debounce_KEY0|Add0~4_combout\,
	cout => \debounce_KEY0|Add0~5\);

-- Location: LCCOMB_X89_Y8_N2
\debounce_KEY0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~21_combout\ = (\debounce_KEY0|Add0~4_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY0|Add0~4_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~21_combout\);

-- Location: FF_X89_Y8_N3
\debounce_KEY0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~21_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(2));

-- Location: LCCOMB_X89_Y8_N16
\debounce_KEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~6_combout\ = (\debounce_KEY0|s_debounceCnt\(3) & (\debounce_KEY0|Add0~5\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(3) & (!\debounce_KEY0|Add0~5\))
-- \debounce_KEY0|Add0~7\ = CARRY((!\debounce_KEY0|s_debounceCnt\(3) & !\debounce_KEY0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce_KEY0|Add0~5\,
	combout => \debounce_KEY0|Add0~6_combout\,
	cout => \debounce_KEY0|Add0~7\);

-- Location: LCCOMB_X89_Y8_N8
\debounce_KEY0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~22_combout\ = (\debounce_KEY0|Add0~6_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|Add0~6_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~22_combout\);

-- Location: FF_X89_Y8_N9
\debounce_KEY0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~22_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(3));

-- Location: LCCOMB_X89_Y8_N18
\debounce_KEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~8_combout\ = (\debounce_KEY0|s_debounceCnt\(4) & ((GND) # (!\debounce_KEY0|Add0~7\))) # (!\debounce_KEY0|s_debounceCnt\(4) & (\debounce_KEY0|Add0~7\ $ (GND)))
-- \debounce_KEY0|Add0~9\ = CARRY((\debounce_KEY0|s_debounceCnt\(4)) # (!\debounce_KEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce_KEY0|Add0~7\,
	combout => \debounce_KEY0|Add0~8_combout\,
	cout => \debounce_KEY0|Add0~9\);

-- Location: LCCOMB_X89_Y8_N6
\debounce_KEY0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~23_combout\ = (\debounce_KEY0|Add0~8_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|Add0~8_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~23_combout\);

-- Location: FF_X89_Y8_N7
\debounce_KEY0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~23_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(4));

-- Location: LCCOMB_X89_Y8_N0
\debounce_KEY0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~5_combout\ = (!\debounce_KEY0|s_debounceCnt\(4) & (!\debounce_KEY0|s_debounceCnt\(3) & (!\debounce_KEY0|s_debounceCnt\(1) & !\debounce_KEY0|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(4),
	datab => \debounce_KEY0|s_debounceCnt\(3),
	datac => \debounce_KEY0|s_debounceCnt\(1),
	datad => \debounce_KEY0|s_debounceCnt\(2),
	combout => \debounce_KEY0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X88_Y7_N28
\debounce_KEY0|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[0]~2_combout\ = (\debounce_KEY0|s_debounceCnt\(0)) # ((!\debounce_KEY0|s_pulsedOut~4_combout\) # (!\debounce_KEY0|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(0),
	datab => \debounce_KEY0|s_pulsedOut~5_combout\,
	datad => \debounce_KEY0|s_pulsedOut~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X88_Y7_N22
\debounce_KEY0|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[0]~3_combout\ = (\debounce_KEY0|s_debounceCnt\(21)) # (((\debounce_KEY0|s_debounceCnt[0]~2_combout\) # (!\debounce_KEY0|s_previousIn~q\)) # (!\debounce_KEY0|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(21),
	datab => \debounce_KEY0|s_dirtyIn~q\,
	datac => \debounce_KEY0|s_previousIn~q\,
	datad => \debounce_KEY0|s_debounceCnt[0]~2_combout\,
	combout => \debounce_KEY0|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X89_Y8_N20
\debounce_KEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~10_combout\ = (\debounce_KEY0|s_debounceCnt\(5) & (\debounce_KEY0|Add0~9\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(5) & (!\debounce_KEY0|Add0~9\))
-- \debounce_KEY0|Add0~11\ = CARRY((!\debounce_KEY0|s_debounceCnt\(5) & !\debounce_KEY0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce_KEY0|Add0~9\,
	combout => \debounce_KEY0|Add0~10_combout\,
	cout => \debounce_KEY0|Add0~11\);

-- Location: LCCOMB_X88_Y7_N20
\debounce_KEY0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~1_combout\ = (\debounce_KEY0|s_debounceCnt[0]~0_combout\ & ((\debounce_KEY0|Add0~10_combout\) # (!\debounce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_previousIn~q\,
	datac => \debounce_KEY0|Add0~10_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	combout => \debounce_KEY0|s_debounceCnt~1_combout\);

-- Location: FF_X88_Y7_N21
\debounce_KEY0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~1_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(5));

-- Location: LCCOMB_X89_Y8_N22
\debounce_KEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~12_combout\ = (\debounce_KEY0|s_debounceCnt\(6) & ((GND) # (!\debounce_KEY0|Add0~11\))) # (!\debounce_KEY0|s_debounceCnt\(6) & (\debounce_KEY0|Add0~11\ $ (GND)))
-- \debounce_KEY0|Add0~13\ = CARRY((\debounce_KEY0|s_debounceCnt\(6)) # (!\debounce_KEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce_KEY0|Add0~11\,
	combout => \debounce_KEY0|Add0~12_combout\,
	cout => \debounce_KEY0|Add0~13\);

-- Location: LCCOMB_X88_Y7_N0
\debounce_KEY0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~12_combout\ = (\debounce_KEY0|s_debounceCnt[0]~4_combout\ & \debounce_KEY0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	datad => \debounce_KEY0|Add0~12_combout\,
	combout => \debounce_KEY0|s_debounceCnt~12_combout\);

-- Location: FF_X88_Y7_N1
\debounce_KEY0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~12_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(6));

-- Location: LCCOMB_X89_Y8_N24
\debounce_KEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~14_combout\ = (\debounce_KEY0|s_debounceCnt\(7) & (\debounce_KEY0|Add0~13\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(7) & (!\debounce_KEY0|Add0~13\))
-- \debounce_KEY0|Add0~15\ = CARRY((!\debounce_KEY0|s_debounceCnt\(7) & !\debounce_KEY0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce_KEY0|Add0~13\,
	combout => \debounce_KEY0|Add0~14_combout\,
	cout => \debounce_KEY0|Add0~15\);

-- Location: LCCOMB_X90_Y7_N20
\debounce_KEY0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~13_combout\ = (\debounce_KEY0|s_debounceCnt[0]~0_combout\ & ((\debounce_KEY0|Add0~14_combout\) # (!\debounce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_previousIn~q\,
	datac => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	datad => \debounce_KEY0|Add0~14_combout\,
	combout => \debounce_KEY0|s_debounceCnt~13_combout\);

-- Location: FF_X90_Y7_N21
\debounce_KEY0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~13_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(7));

-- Location: LCCOMB_X89_Y8_N26
\debounce_KEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~16_combout\ = (\debounce_KEY0|s_debounceCnt\(8) & ((GND) # (!\debounce_KEY0|Add0~15\))) # (!\debounce_KEY0|s_debounceCnt\(8) & (\debounce_KEY0|Add0~15\ $ (GND)))
-- \debounce_KEY0|Add0~17\ = CARRY((\debounce_KEY0|s_debounceCnt\(8)) # (!\debounce_KEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce_KEY0|Add0~15\,
	combout => \debounce_KEY0|Add0~16_combout\,
	cout => \debounce_KEY0|Add0~17\);

-- Location: LCCOMB_X90_Y7_N14
\debounce_KEY0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~14_combout\ = (\debounce_KEY0|s_debounceCnt[0]~0_combout\ & ((\debounce_KEY0|Add0~16_combout\) # (!\debounce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_previousIn~q\,
	datac => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	datad => \debounce_KEY0|Add0~16_combout\,
	combout => \debounce_KEY0|s_debounceCnt~14_combout\);

-- Location: FF_X90_Y7_N15
\debounce_KEY0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~14_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(8));

-- Location: LCCOMB_X89_Y8_N28
\debounce_KEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~18_combout\ = (\debounce_KEY0|s_debounceCnt\(9) & (\debounce_KEY0|Add0~17\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(9) & (!\debounce_KEY0|Add0~17\))
-- \debounce_KEY0|Add0~19\ = CARRY((!\debounce_KEY0|s_debounceCnt\(9) & !\debounce_KEY0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce_KEY0|Add0~17\,
	combout => \debounce_KEY0|Add0~18_combout\,
	cout => \debounce_KEY0|Add0~19\);

-- Location: LCCOMB_X90_Y7_N8
\debounce_KEY0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~15_combout\ = (\debounce_KEY0|s_debounceCnt[0]~4_combout\ & \debounce_KEY0|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	datad => \debounce_KEY0|Add0~18_combout\,
	combout => \debounce_KEY0|s_debounceCnt~15_combout\);

-- Location: FF_X90_Y7_N9
\debounce_KEY0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~15_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(9));

-- Location: LCCOMB_X89_Y8_N30
\debounce_KEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~20_combout\ = (\debounce_KEY0|s_debounceCnt\(10) & ((GND) # (!\debounce_KEY0|Add0~19\))) # (!\debounce_KEY0|s_debounceCnt\(10) & (\debounce_KEY0|Add0~19\ $ (GND)))
-- \debounce_KEY0|Add0~21\ = CARRY((\debounce_KEY0|s_debounceCnt\(10)) # (!\debounce_KEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce_KEY0|Add0~19\,
	combout => \debounce_KEY0|Add0~20_combout\,
	cout => \debounce_KEY0|Add0~21\);

-- Location: LCCOMB_X90_Y7_N18
\debounce_KEY0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~16_combout\ = (\debounce_KEY0|s_debounceCnt[0]~0_combout\ & ((\debounce_KEY0|Add0~20_combout\) # (!\debounce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_previousIn~q\,
	datac => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	datad => \debounce_KEY0|Add0~20_combout\,
	combout => \debounce_KEY0|s_debounceCnt~16_combout\);

-- Location: FF_X90_Y7_N19
\debounce_KEY0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~16_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(10));

-- Location: LCCOMB_X89_Y7_N0
\debounce_KEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~22_combout\ = (\debounce_KEY0|s_debounceCnt\(11) & (\debounce_KEY0|Add0~21\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(11) & (!\debounce_KEY0|Add0~21\))
-- \debounce_KEY0|Add0~23\ = CARRY((!\debounce_KEY0|s_debounceCnt\(11) & !\debounce_KEY0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce_KEY0|Add0~21\,
	combout => \debounce_KEY0|Add0~22_combout\,
	cout => \debounce_KEY0|Add0~23\);

-- Location: LCCOMB_X90_Y7_N12
\debounce_KEY0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~8_combout\ = (\debounce_KEY0|Add0~22_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY0|Add0~22_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~8_combout\);

-- Location: FF_X90_Y7_N13
\debounce_KEY0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~8_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(11));

-- Location: LCCOMB_X89_Y7_N2
\debounce_KEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~24_combout\ = (\debounce_KEY0|s_debounceCnt\(12) & ((GND) # (!\debounce_KEY0|Add0~23\))) # (!\debounce_KEY0|s_debounceCnt\(12) & (\debounce_KEY0|Add0~23\ $ (GND)))
-- \debounce_KEY0|Add0~25\ = CARRY((\debounce_KEY0|s_debounceCnt\(12)) # (!\debounce_KEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce_KEY0|Add0~23\,
	combout => \debounce_KEY0|Add0~24_combout\,
	cout => \debounce_KEY0|Add0~25\);

-- Location: LCCOMB_X90_Y7_N2
\debounce_KEY0|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~9_combout\ = (\debounce_KEY0|s_debounceCnt[0]~4_combout\ & \debounce_KEY0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	datad => \debounce_KEY0|Add0~24_combout\,
	combout => \debounce_KEY0|s_debounceCnt~9_combout\);

-- Location: FF_X90_Y7_N3
\debounce_KEY0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~9_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(12));

-- Location: LCCOMB_X89_Y7_N4
\debounce_KEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~26_combout\ = (\debounce_KEY0|s_debounceCnt\(13) & (\debounce_KEY0|Add0~25\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(13) & (!\debounce_KEY0|Add0~25\))
-- \debounce_KEY0|Add0~27\ = CARRY((!\debounce_KEY0|s_debounceCnt\(13) & !\debounce_KEY0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce_KEY0|Add0~25\,
	combout => \debounce_KEY0|Add0~26_combout\,
	cout => \debounce_KEY0|Add0~27\);

-- Location: LCCOMB_X90_Y7_N0
\debounce_KEY0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~17_combout\ = (\debounce_KEY0|s_debounceCnt[0]~0_combout\ & ((\debounce_KEY0|Add0~26_combout\) # (!\debounce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_previousIn~q\,
	datac => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	datad => \debounce_KEY0|Add0~26_combout\,
	combout => \debounce_KEY0|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y7_N1
\debounce_KEY0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~17_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(13));

-- Location: LCCOMB_X89_Y7_N6
\debounce_KEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~28_combout\ = (\debounce_KEY0|s_debounceCnt\(14) & ((GND) # (!\debounce_KEY0|Add0~27\))) # (!\debounce_KEY0|s_debounceCnt\(14) & (\debounce_KEY0|Add0~27\ $ (GND)))
-- \debounce_KEY0|Add0~29\ = CARRY((\debounce_KEY0|s_debounceCnt\(14)) # (!\debounce_KEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce_KEY0|Add0~27\,
	combout => \debounce_KEY0|Add0~28_combout\,
	cout => \debounce_KEY0|Add0~29\);

-- Location: LCCOMB_X89_Y7_N8
\debounce_KEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~30_combout\ = (\debounce_KEY0|s_debounceCnt\(15) & (\debounce_KEY0|Add0~29\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(15) & (!\debounce_KEY0|Add0~29\))
-- \debounce_KEY0|Add0~31\ = CARRY((!\debounce_KEY0|s_debounceCnt\(15) & !\debounce_KEY0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce_KEY0|Add0~29\,
	combout => \debounce_KEY0|Add0~30_combout\,
	cout => \debounce_KEY0|Add0~31\);

-- Location: LCCOMB_X89_Y7_N26
\debounce_KEY0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~6_combout\ = (\debounce_KEY0|Add0~30_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY0|Add0~30_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~6_combout\);

-- Location: FF_X89_Y7_N27
\debounce_KEY0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~6_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(15));

-- Location: LCCOMB_X89_Y7_N10
\debounce_KEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~32_combout\ = (\debounce_KEY0|s_debounceCnt\(16) & ((GND) # (!\debounce_KEY0|Add0~31\))) # (!\debounce_KEY0|s_debounceCnt\(16) & (\debounce_KEY0|Add0~31\ $ (GND)))
-- \debounce_KEY0|Add0~33\ = CARRY((\debounce_KEY0|s_debounceCnt\(16)) # (!\debounce_KEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce_KEY0|Add0~31\,
	combout => \debounce_KEY0|Add0~32_combout\,
	cout => \debounce_KEY0|Add0~33\);

-- Location: LCCOMB_X88_Y7_N4
\debounce_KEY0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~7_combout\ = (\debounce_KEY0|Add0~32_combout\ & \debounce_KEY0|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY0|Add0~32_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	combout => \debounce_KEY0|s_debounceCnt~7_combout\);

-- Location: FF_X88_Y7_N5
\debounce_KEY0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~7_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(16));

-- Location: LCCOMB_X89_Y7_N12
\debounce_KEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~34_combout\ = (\debounce_KEY0|s_debounceCnt\(17) & (\debounce_KEY0|Add0~33\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(17) & (!\debounce_KEY0|Add0~33\))
-- \debounce_KEY0|Add0~35\ = CARRY((!\debounce_KEY0|s_debounceCnt\(17) & !\debounce_KEY0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce_KEY0|Add0~33\,
	combout => \debounce_KEY0|Add0~34_combout\,
	cout => \debounce_KEY0|Add0~35\);

-- Location: LCCOMB_X90_Y7_N30
\debounce_KEY0|s_debounceCnt[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[17]~18_combout\ = (\debounce_KEY0|s_debounceCnt[0]~3_combout\ & (\debounce_KEY0|s_debounceCnt[0]~0_combout\ & ((\debounce_KEY0|Add0~34_combout\) # (!\debounce_KEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_previousIn~q\,
	datab => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	datac => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	datad => \debounce_KEY0|Add0~34_combout\,
	combout => \debounce_KEY0|s_debounceCnt[17]~18_combout\);

-- Location: FF_X90_Y7_N31
\debounce_KEY0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(17));

-- Location: LCCOMB_X89_Y7_N14
\debounce_KEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~36_combout\ = (\debounce_KEY0|s_debounceCnt\(18) & ((GND) # (!\debounce_KEY0|Add0~35\))) # (!\debounce_KEY0|s_debounceCnt\(18) & (\debounce_KEY0|Add0~35\ $ (GND)))
-- \debounce_KEY0|Add0~37\ = CARRY((\debounce_KEY0|s_debounceCnt\(18)) # (!\debounce_KEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce_KEY0|Add0~35\,
	combout => \debounce_KEY0|Add0~36_combout\,
	cout => \debounce_KEY0|Add0~37\);

-- Location: LCCOMB_X90_Y7_N24
\debounce_KEY0|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[18]~19_combout\ = (\debounce_KEY0|s_debounceCnt[0]~0_combout\ & (\debounce_KEY0|s_debounceCnt[0]~3_combout\ & ((\debounce_KEY0|Add0~36_combout\) # (!\debounce_KEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|Add0~36_combout\,
	datab => \debounce_KEY0|s_previousIn~q\,
	datac => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	datad => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	combout => \debounce_KEY0|s_debounceCnt[18]~19_combout\);

-- Location: FF_X90_Y7_N25
\debounce_KEY0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(18));

-- Location: LCCOMB_X89_Y7_N16
\debounce_KEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~38_combout\ = (\debounce_KEY0|s_debounceCnt\(19) & (\debounce_KEY0|Add0~37\ & VCC)) # (!\debounce_KEY0|s_debounceCnt\(19) & (!\debounce_KEY0|Add0~37\))
-- \debounce_KEY0|Add0~39\ = CARRY((!\debounce_KEY0|s_debounceCnt\(19) & !\debounce_KEY0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce_KEY0|Add0~37\,
	combout => \debounce_KEY0|Add0~38_combout\,
	cout => \debounce_KEY0|Add0~39\);

-- Location: LCCOMB_X89_Y7_N24
\debounce_KEY0|s_debounceCnt[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[19]~10_combout\ = (\debounce_KEY0|s_debounceCnt[0]~4_combout\ & (\debounce_KEY0|s_debounceCnt[0]~3_combout\ & \debounce_KEY0|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	datab => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	datad => \debounce_KEY0|Add0~38_combout\,
	combout => \debounce_KEY0|s_debounceCnt[19]~10_combout\);

-- Location: FF_X89_Y7_N25
\debounce_KEY0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(19));

-- Location: LCCOMB_X89_Y7_N18
\debounce_KEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~40_combout\ = (\debounce_KEY0|s_debounceCnt\(20) & ((GND) # (!\debounce_KEY0|Add0~39\))) # (!\debounce_KEY0|s_debounceCnt\(20) & (\debounce_KEY0|Add0~39\ $ (GND)))
-- \debounce_KEY0|Add0~41\ = CARRY((\debounce_KEY0|s_debounceCnt\(20)) # (!\debounce_KEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce_KEY0|Add0~39\,
	combout => \debounce_KEY0|Add0~40_combout\,
	cout => \debounce_KEY0|Add0~41\);

-- Location: LCCOMB_X89_Y7_N30
\debounce_KEY0|s_debounceCnt[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[20]~11_combout\ = (\debounce_KEY0|s_debounceCnt[0]~4_combout\ & (\debounce_KEY0|s_debounceCnt[0]~3_combout\ & \debounce_KEY0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	datab => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	datad => \debounce_KEY0|Add0~40_combout\,
	combout => \debounce_KEY0|s_debounceCnt[20]~11_combout\);

-- Location: FF_X89_Y7_N31
\debounce_KEY0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(20));

-- Location: LCCOMB_X90_Y7_N22
\debounce_KEY0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|LessThan0~0_combout\ = (\debounce_KEY0|s_debounceCnt\(11)) # ((\debounce_KEY0|s_debounceCnt\(12)) # ((\debounce_KEY0|s_debounceCnt\(9) & \debounce_KEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(11),
	datab => \debounce_KEY0|s_debounceCnt\(12),
	datac => \debounce_KEY0|s_debounceCnt\(9),
	datad => \debounce_KEY0|s_debounceCnt\(10),
	combout => \debounce_KEY0|LessThan0~0_combout\);

-- Location: LCCOMB_X89_Y7_N22
\debounce_KEY0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|LessThan0~1_combout\ = (\debounce_KEY0|s_debounceCnt\(15)) # ((\debounce_KEY0|s_debounceCnt\(14)) # ((\debounce_KEY0|s_debounceCnt\(13) & \debounce_KEY0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(15),
	datab => \debounce_KEY0|s_debounceCnt\(14),
	datac => \debounce_KEY0|s_debounceCnt\(13),
	datad => \debounce_KEY0|LessThan0~0_combout\,
	combout => \debounce_KEY0|LessThan0~1_combout\);

-- Location: LCCOMB_X88_Y7_N8
\debounce_KEY0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|LessThan0~2_combout\ = (\debounce_KEY0|s_debounceCnt\(17) & (\debounce_KEY0|s_debounceCnt\(18) & ((\debounce_KEY0|s_debounceCnt\(16)) # (\debounce_KEY0|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(17),
	datab => \debounce_KEY0|s_debounceCnt\(18),
	datac => \debounce_KEY0|s_debounceCnt\(16),
	datad => \debounce_KEY0|LessThan0~1_combout\,
	combout => \debounce_KEY0|LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y7_N4
\debounce_KEY0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|LessThan0~4_combout\ = (\debounce_KEY0|s_debounceCnt\(17) & (\debounce_KEY0|s_debounceCnt\(13) & (\debounce_KEY0|s_debounceCnt\(10) & \debounce_KEY0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(17),
	datab => \debounce_KEY0|s_debounceCnt\(13),
	datac => \debounce_KEY0|s_debounceCnt\(10),
	datad => \debounce_KEY0|s_debounceCnt\(18),
	combout => \debounce_KEY0|LessThan0~4_combout\);

-- Location: LCCOMB_X88_Y7_N10
\debounce_KEY0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|LessThan0~3_combout\ = (\debounce_KEY0|s_debounceCnt\(6)) # ((\debounce_KEY0|s_debounceCnt\(5) & ((\debounce_KEY0|s_debounceCnt\(0)) # (!\debounce_KEY0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(6),
	datab => \debounce_KEY0|s_debounceCnt\(0),
	datac => \debounce_KEY0|s_debounceCnt\(5),
	datad => \debounce_KEY0|s_pulsedOut~5_combout\,
	combout => \debounce_KEY0|LessThan0~3_combout\);

-- Location: LCCOMB_X88_Y7_N16
\debounce_KEY0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|LessThan0~5_combout\ = (\debounce_KEY0|s_debounceCnt\(8) & (\debounce_KEY0|s_debounceCnt\(7) & (\debounce_KEY0|LessThan0~4_combout\ & \debounce_KEY0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(8),
	datab => \debounce_KEY0|s_debounceCnt\(7),
	datac => \debounce_KEY0|LessThan0~4_combout\,
	datad => \debounce_KEY0|LessThan0~3_combout\,
	combout => \debounce_KEY0|LessThan0~5_combout\);

-- Location: LCCOMB_X88_Y7_N2
\debounce_KEY0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|LessThan0~6_combout\ = (\debounce_KEY0|s_debounceCnt\(20)) # ((\debounce_KEY0|s_debounceCnt\(19)) # ((\debounce_KEY0|LessThan0~2_combout\) # (\debounce_KEY0|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(20),
	datab => \debounce_KEY0|s_debounceCnt\(19),
	datac => \debounce_KEY0|LessThan0~2_combout\,
	datad => \debounce_KEY0|LessThan0~5_combout\,
	combout => \debounce_KEY0|LessThan0~6_combout\);

-- Location: LCCOMB_X90_Y7_N26
\debounce_KEY0|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[0]~0_combout\ = (\debounce_KEY0|s_dirtyIn~q\ & ((!\debounce_KEY0|LessThan0~6_combout\) # (!\debounce_KEY0|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(21),
	datab => \debounce_KEY0|s_dirtyIn~q\,
	datad => \debounce_KEY0|LessThan0~6_combout\,
	combout => \debounce_KEY0|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X88_Y7_N26
\debounce_KEY0|s_debounceCnt[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[21]~25_combout\ = (\debounce_KEY0|s_dirtyIn~q\ & ((\debounce_KEY0|s_debounceCnt\(21) & ((!\debounce_KEY0|LessThan0~6_combout\))) # (!\debounce_KEY0|s_debounceCnt\(21) & (\debounce_KEY0|s_debounceCnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(21),
	datab => \debounce_KEY0|s_debounceCnt[0]~2_combout\,
	datac => \debounce_KEY0|s_dirtyIn~q\,
	datad => \debounce_KEY0|LessThan0~6_combout\,
	combout => \debounce_KEY0|s_debounceCnt[21]~25_combout\);

-- Location: LCCOMB_X89_Y7_N20
\debounce_KEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|Add0~42_combout\ = \debounce_KEY0|Add0~41\ $ (!\debounce_KEY0|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounce_KEY0|s_debounceCnt\(21),
	cin => \debounce_KEY0|Add0~41\,
	combout => \debounce_KEY0|Add0~42_combout\);

-- Location: LCCOMB_X90_Y7_N6
\debounce_KEY0|s_debounceCnt[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[21]~26_combout\ = (\debounce_KEY0|s_previousIn~q\ & (((\debounce_KEY0|s_debounceCnt[21]~25_combout\ & \debounce_KEY0|Add0~42_combout\)))) # (!\debounce_KEY0|s_previousIn~q\ & (\debounce_KEY0|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt[0]~0_combout\,
	datab => \debounce_KEY0|s_previousIn~q\,
	datac => \debounce_KEY0|s_debounceCnt[21]~25_combout\,
	datad => \debounce_KEY0|Add0~42_combout\,
	combout => \debounce_KEY0|s_debounceCnt[21]~26_combout\);

-- Location: FF_X90_Y7_N7
\debounce_KEY0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(21));

-- Location: LCCOMB_X88_Y7_N12
\debounce_KEY0|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt[0]~4_combout\ = (\debounce_KEY0|s_dirtyIn~q\ & (\debounce_KEY0|s_previousIn~q\ & ((!\debounce_KEY0|LessThan0~6_combout\) # (!\debounce_KEY0|s_debounceCnt\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(21),
	datab => \debounce_KEY0|s_dirtyIn~q\,
	datac => \debounce_KEY0|s_previousIn~q\,
	datad => \debounce_KEY0|LessThan0~6_combout\,
	combout => \debounce_KEY0|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X88_Y7_N6
\debounce_KEY0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_debounceCnt~5_combout\ = (\debounce_KEY0|s_debounceCnt[0]~4_combout\ & \debounce_KEY0|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt[0]~4_combout\,
	datad => \debounce_KEY0|Add0~28_combout\,
	combout => \debounce_KEY0|s_debounceCnt~5_combout\);

-- Location: FF_X88_Y7_N7
\debounce_KEY0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_debounceCnt~5_combout\,
	ena => \debounce_KEY0|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_debounceCnt\(14));

-- Location: LCCOMB_X88_Y7_N30
\debounce_KEY0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~0_combout\ = (!\debounce_KEY0|s_debounceCnt\(14) & (!\debounce_KEY0|s_debounceCnt\(16) & (!\debounce_KEY0|s_debounceCnt\(15) & !\debounce_KEY0|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(14),
	datab => \debounce_KEY0|s_debounceCnt\(16),
	datac => \debounce_KEY0|s_debounceCnt\(15),
	datad => \debounce_KEY0|s_debounceCnt\(5),
	combout => \debounce_KEY0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X90_Y7_N10
\debounce_KEY0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~3_combout\ = (!\debounce_KEY0|s_debounceCnt\(13) & (!\debounce_KEY0|s_debounceCnt\(18) & (!\debounce_KEY0|s_debounceCnt\(17) & !\debounce_KEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(13),
	datab => \debounce_KEY0|s_debounceCnt\(18),
	datac => \debounce_KEY0|s_debounceCnt\(17),
	datad => \debounce_KEY0|s_debounceCnt\(10),
	combout => \debounce_KEY0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X88_Y7_N14
\debounce_KEY0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~2_combout\ = (!\debounce_KEY0|s_debounceCnt\(8) & (!\debounce_KEY0|s_debounceCnt\(6) & (!\debounce_KEY0|s_debounceCnt\(7) & !\debounce_KEY0|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(8),
	datab => \debounce_KEY0|s_debounceCnt\(6),
	datac => \debounce_KEY0|s_debounceCnt\(7),
	datad => \debounce_KEY0|s_debounceCnt\(9),
	combout => \debounce_KEY0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X89_Y7_N28
\debounce_KEY0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~1_combout\ = (!\debounce_KEY0|s_debounceCnt\(20) & (!\debounce_KEY0|s_debounceCnt\(19) & (!\debounce_KEY0|s_debounceCnt\(11) & !\debounce_KEY0|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(20),
	datab => \debounce_KEY0|s_debounceCnt\(19),
	datac => \debounce_KEY0|s_debounceCnt\(11),
	datad => \debounce_KEY0|s_debounceCnt\(12),
	combout => \debounce_KEY0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X88_Y7_N24
\debounce_KEY0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~4_combout\ = (\debounce_KEY0|s_pulsedOut~0_combout\ & (\debounce_KEY0|s_pulsedOut~3_combout\ & (\debounce_KEY0|s_pulsedOut~2_combout\ & \debounce_KEY0|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_pulsedOut~0_combout\,
	datab => \debounce_KEY0|s_pulsedOut~3_combout\,
	datac => \debounce_KEY0|s_pulsedOut~2_combout\,
	datad => \debounce_KEY0|s_pulsedOut~1_combout\,
	combout => \debounce_KEY0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X90_Y7_N16
\debounce_KEY0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~6_combout\ = (!\debounce_KEY0|s_debounceCnt\(21) & (\debounce_KEY0|s_dirtyIn~q\ & (\debounce_KEY0|s_debounceCnt\(0) & \debounce_KEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY0|s_debounceCnt\(21),
	datab => \debounce_KEY0|s_dirtyIn~q\,
	datac => \debounce_KEY0|s_debounceCnt\(0),
	datad => \debounce_KEY0|s_previousIn~q\,
	combout => \debounce_KEY0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X87_Y7_N4
\debounce_KEY0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY0|s_pulsedOut~7_combout\ = (\debounce_KEY0|s_pulsedOut~4_combout\ & (\debounce_KEY0|s_pulsedOut~6_combout\ & \debounce_KEY0|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_pulsedOut~4_combout\,
	datac => \debounce_KEY0|s_pulsedOut~6_combout\,
	datad => \debounce_KEY0|s_pulsedOut~5_combout\,
	combout => \debounce_KEY0|s_pulsedOut~7_combout\);

-- Location: FF_X87_Y7_N5
\debounce_KEY0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY0|s_pulsedOut~q\);

-- Location: LCCOMB_X75_Y4_N22
\counter0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|Add0~0_combout\ = \counter0|s_cout\(2) $ (((\counter0|s_cout\(0) & (\counter0|s_cout\(1) & \debounce_KEY0|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|s_cout\(2),
	datab => \counter0|s_cout\(0),
	datac => \counter0|s_cout\(1),
	datad => \debounce_KEY0|s_pulsedOut~q\,
	combout => \counter0|Add0~0_combout\);

-- Location: LCCOMB_X75_Y4_N28
\counter0|s_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|s_cout~0_combout\ = (\counter0|Add0~0_combout\ & !\gameNormal|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter0|Add0~0_combout\,
	datad => \gameNormal|Selector4~1_combout\,
	combout => \counter0|s_cout~0_combout\);

-- Location: FF_X75_Y4_N29
\counter0|s_cout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|s_cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|s_cout\(2));

-- Location: LCCOMB_X74_Y4_N12
\gameNormal|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Equal4~0_combout\ = (!\counter0|s_cout\(0) & (!\counter0|s_cout\(1) & \counter0|s_cout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|s_cout\(0),
	datac => \counter0|s_cout\(1),
	datad => \counter0|s_cout\(2),
	combout => \gameNormal|Equal4~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X114_Y22_N9
\debounce_KEY1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_dirtyIn~q\);

-- Location: LCCOMB_X112_Y22_N10
\debounce_KEY1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~0_combout\ = \debounce_KEY1|s_debounceCnt\(0) $ (VCC)
-- \debounce_KEY1|Add0~1\ = CARRY(\debounce_KEY1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce_KEY1|Add0~0_combout\,
	cout => \debounce_KEY1|Add0~1\);

-- Location: FF_X114_Y22_N21
\debounce_KEY1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce_KEY1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_previousIn~q\);

-- Location: LCCOMB_X112_Y22_N12
\debounce_KEY1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~2_combout\ = (\debounce_KEY1|s_debounceCnt\(1) & (\debounce_KEY1|Add0~1\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(1) & (!\debounce_KEY1|Add0~1\))
-- \debounce_KEY1|Add0~3\ = CARRY((!\debounce_KEY1|s_debounceCnt\(1) & !\debounce_KEY1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce_KEY1|Add0~1\,
	combout => \debounce_KEY1|Add0~2_combout\,
	cout => \debounce_KEY1|Add0~3\);

-- Location: LCCOMB_X112_Y22_N4
\debounce_KEY1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~20_combout\ = (\debounce_KEY1|s_debounceCnt[8]~4_combout\ & \debounce_KEY1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	datad => \debounce_KEY1|Add0~2_combout\,
	combout => \debounce_KEY1|s_debounceCnt~20_combout\);

-- Location: LCCOMB_X114_Y22_N30
\debounce_KEY1|s_debounceCnt[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[8]~3_combout\ = ((\debounce_KEY1|s_debounceCnt\(21)) # ((\debounce_KEY1|s_debounceCnt[8]~2_combout\) # (!\debounce_KEY1|s_previousIn~q\))) # (!\debounce_KEY1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_dirtyIn~q\,
	datab => \debounce_KEY1|s_debounceCnt\(21),
	datac => \debounce_KEY1|s_debounceCnt[8]~2_combout\,
	datad => \debounce_KEY1|s_previousIn~q\,
	combout => \debounce_KEY1|s_debounceCnt[8]~3_combout\);

-- Location: FF_X112_Y22_N5
\debounce_KEY1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~20_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(1));

-- Location: LCCOMB_X112_Y22_N14
\debounce_KEY1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~4_combout\ = (\debounce_KEY1|s_debounceCnt\(2) & ((GND) # (!\debounce_KEY1|Add0~3\))) # (!\debounce_KEY1|s_debounceCnt\(2) & (\debounce_KEY1|Add0~3\ $ (GND)))
-- \debounce_KEY1|Add0~5\ = CARRY((\debounce_KEY1|s_debounceCnt\(2)) # (!\debounce_KEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce_KEY1|Add0~3\,
	combout => \debounce_KEY1|Add0~4_combout\,
	cout => \debounce_KEY1|Add0~5\);

-- Location: LCCOMB_X112_Y22_N2
\debounce_KEY1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~21_combout\ = (\debounce_KEY1|s_debounceCnt[8]~4_combout\ & \debounce_KEY1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	datad => \debounce_KEY1|Add0~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~21_combout\);

-- Location: FF_X112_Y22_N3
\debounce_KEY1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~21_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(2));

-- Location: LCCOMB_X112_Y22_N16
\debounce_KEY1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~6_combout\ = (\debounce_KEY1|s_debounceCnt\(3) & (\debounce_KEY1|Add0~5\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(3) & (!\debounce_KEY1|Add0~5\))
-- \debounce_KEY1|Add0~7\ = CARRY((!\debounce_KEY1|s_debounceCnt\(3) & !\debounce_KEY1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce_KEY1|Add0~5\,
	combout => \debounce_KEY1|Add0~6_combout\,
	cout => \debounce_KEY1|Add0~7\);

-- Location: LCCOMB_X112_Y22_N0
\debounce_KEY1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~22_combout\ = (\debounce_KEY1|Add0~6_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|Add0~6_combout\,
	datac => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~22_combout\);

-- Location: FF_X112_Y22_N1
\debounce_KEY1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~22_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(3));

-- Location: LCCOMB_X112_Y22_N18
\debounce_KEY1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~8_combout\ = (\debounce_KEY1|s_debounceCnt\(4) & ((GND) # (!\debounce_KEY1|Add0~7\))) # (!\debounce_KEY1|s_debounceCnt\(4) & (\debounce_KEY1|Add0~7\ $ (GND)))
-- \debounce_KEY1|Add0~9\ = CARRY((\debounce_KEY1|s_debounceCnt\(4)) # (!\debounce_KEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce_KEY1|Add0~7\,
	combout => \debounce_KEY1|Add0~8_combout\,
	cout => \debounce_KEY1|Add0~9\);

-- Location: LCCOMB_X112_Y22_N6
\debounce_KEY1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~23_combout\ = (\debounce_KEY1|Add0~8_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|Add0~8_combout\,
	datac => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y22_N7
\debounce_KEY1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~23_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(4));

-- Location: LCCOMB_X112_Y22_N8
\debounce_KEY1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~5_combout\ = (!\debounce_KEY1|s_debounceCnt\(4) & (!\debounce_KEY1|s_debounceCnt\(2) & (!\debounce_KEY1|s_debounceCnt\(1) & !\debounce_KEY1|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(4),
	datab => \debounce_KEY1|s_debounceCnt\(2),
	datac => \debounce_KEY1|s_debounceCnt\(1),
	datad => \debounce_KEY1|s_debounceCnt\(3),
	combout => \debounce_KEY1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X112_Y22_N20
\debounce_KEY1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~10_combout\ = (\debounce_KEY1|s_debounceCnt\(5) & (\debounce_KEY1|Add0~9\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(5) & (!\debounce_KEY1|Add0~9\))
-- \debounce_KEY1|Add0~11\ = CARRY((!\debounce_KEY1|s_debounceCnt\(5) & !\debounce_KEY1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce_KEY1|Add0~9\,
	combout => \debounce_KEY1|Add0~10_combout\,
	cout => \debounce_KEY1|Add0~11\);

-- Location: LCCOMB_X114_Y22_N26
\debounce_KEY1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~1_combout\ = (\debounce_KEY1|s_debounceCnt[8]~0_combout\ & ((\debounce_KEY1|Add0~10_combout\) # (!\debounce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_previousIn~q\,
	datac => \debounce_KEY1|Add0~10_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	combout => \debounce_KEY1|s_debounceCnt~1_combout\);

-- Location: FF_X114_Y22_N27
\debounce_KEY1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~1_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(5));

-- Location: LCCOMB_X112_Y22_N22
\debounce_KEY1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~12_combout\ = (\debounce_KEY1|s_debounceCnt\(6) & ((GND) # (!\debounce_KEY1|Add0~11\))) # (!\debounce_KEY1|s_debounceCnt\(6) & (\debounce_KEY1|Add0~11\ $ (GND)))
-- \debounce_KEY1|Add0~13\ = CARRY((\debounce_KEY1|s_debounceCnt\(6)) # (!\debounce_KEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce_KEY1|Add0~11\,
	combout => \debounce_KEY1|Add0~12_combout\,
	cout => \debounce_KEY1|Add0~13\);

-- Location: LCCOMB_X114_Y22_N12
\debounce_KEY1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~12_combout\ = (\debounce_KEY1|Add0~12_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|Add0~12_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~12_combout\);

-- Location: FF_X114_Y22_N13
\debounce_KEY1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~12_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(6));

-- Location: LCCOMB_X112_Y22_N24
\debounce_KEY1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~14_combout\ = (\debounce_KEY1|s_debounceCnt\(7) & (\debounce_KEY1|Add0~13\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(7) & (!\debounce_KEY1|Add0~13\))
-- \debounce_KEY1|Add0~15\ = CARRY((!\debounce_KEY1|s_debounceCnt\(7) & !\debounce_KEY1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce_KEY1|Add0~13\,
	combout => \debounce_KEY1|Add0~14_combout\,
	cout => \debounce_KEY1|Add0~15\);

-- Location: LCCOMB_X113_Y22_N10
\debounce_KEY1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~13_combout\ = (\debounce_KEY1|s_debounceCnt[8]~0_combout\ & ((\debounce_KEY1|Add0~14_combout\) # (!\debounce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_previousIn~q\,
	datac => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	datad => \debounce_KEY1|Add0~14_combout\,
	combout => \debounce_KEY1|s_debounceCnt~13_combout\);

-- Location: FF_X113_Y22_N11
\debounce_KEY1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~13_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(7));

-- Location: LCCOMB_X112_Y22_N26
\debounce_KEY1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~16_combout\ = (\debounce_KEY1|s_debounceCnt\(8) & ((GND) # (!\debounce_KEY1|Add0~15\))) # (!\debounce_KEY1|s_debounceCnt\(8) & (\debounce_KEY1|Add0~15\ $ (GND)))
-- \debounce_KEY1|Add0~17\ = CARRY((\debounce_KEY1|s_debounceCnt\(8)) # (!\debounce_KEY1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce_KEY1|Add0~15\,
	combout => \debounce_KEY1|Add0~16_combout\,
	cout => \debounce_KEY1|Add0~17\);

-- Location: LCCOMB_X114_Y22_N18
\debounce_KEY1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~14_combout\ = (\debounce_KEY1|s_debounceCnt[8]~0_combout\ & ((\debounce_KEY1|Add0~16_combout\) # (!\debounce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|Add0~16_combout\,
	datac => \debounce_KEY1|s_previousIn~q\,
	datad => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	combout => \debounce_KEY1|s_debounceCnt~14_combout\);

-- Location: FF_X114_Y22_N19
\debounce_KEY1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~14_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(8));

-- Location: LCCOMB_X112_Y22_N28
\debounce_KEY1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~18_combout\ = (\debounce_KEY1|s_debounceCnt\(9) & (\debounce_KEY1|Add0~17\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(9) & (!\debounce_KEY1|Add0~17\))
-- \debounce_KEY1|Add0~19\ = CARRY((!\debounce_KEY1|s_debounceCnt\(9) & !\debounce_KEY1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce_KEY1|Add0~17\,
	combout => \debounce_KEY1|Add0~18_combout\,
	cout => \debounce_KEY1|Add0~19\);

-- Location: LCCOMB_X114_Y22_N2
\debounce_KEY1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~15_combout\ = (\debounce_KEY1|Add0~18_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|Add0~18_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~15_combout\);

-- Location: FF_X114_Y22_N3
\debounce_KEY1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~15_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(9));

-- Location: LCCOMB_X112_Y22_N30
\debounce_KEY1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~20_combout\ = (\debounce_KEY1|s_debounceCnt\(10) & ((GND) # (!\debounce_KEY1|Add0~19\))) # (!\debounce_KEY1|s_debounceCnt\(10) & (\debounce_KEY1|Add0~19\ $ (GND)))
-- \debounce_KEY1|Add0~21\ = CARRY((\debounce_KEY1|s_debounceCnt\(10)) # (!\debounce_KEY1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce_KEY1|Add0~19\,
	combout => \debounce_KEY1|Add0~20_combout\,
	cout => \debounce_KEY1|Add0~21\);

-- Location: LCCOMB_X114_Y22_N22
\debounce_KEY1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~16_combout\ = (\debounce_KEY1|s_debounceCnt[8]~0_combout\ & ((\debounce_KEY1|Add0~20_combout\) # (!\debounce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_previousIn~q\,
	datab => \debounce_KEY1|Add0~20_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	combout => \debounce_KEY1|s_debounceCnt~16_combout\);

-- Location: FF_X114_Y22_N23
\debounce_KEY1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~16_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(10));

-- Location: LCCOMB_X112_Y21_N0
\debounce_KEY1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~22_combout\ = (\debounce_KEY1|s_debounceCnt\(11) & (\debounce_KEY1|Add0~21\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(11) & (!\debounce_KEY1|Add0~21\))
-- \debounce_KEY1|Add0~23\ = CARRY((!\debounce_KEY1|s_debounceCnt\(11) & !\debounce_KEY1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce_KEY1|Add0~21\,
	combout => \debounce_KEY1|Add0~22_combout\,
	cout => \debounce_KEY1|Add0~23\);

-- Location: LCCOMB_X113_Y21_N16
\debounce_KEY1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~8_combout\ = (\debounce_KEY1|Add0~22_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|Add0~22_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~8_combout\);

-- Location: FF_X113_Y21_N17
\debounce_KEY1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~8_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(11));

-- Location: LCCOMB_X112_Y21_N2
\debounce_KEY1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~24_combout\ = (\debounce_KEY1|s_debounceCnt\(12) & ((GND) # (!\debounce_KEY1|Add0~23\))) # (!\debounce_KEY1|s_debounceCnt\(12) & (\debounce_KEY1|Add0~23\ $ (GND)))
-- \debounce_KEY1|Add0~25\ = CARRY((\debounce_KEY1|s_debounceCnt\(12)) # (!\debounce_KEY1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce_KEY1|Add0~23\,
	combout => \debounce_KEY1|Add0~24_combout\,
	cout => \debounce_KEY1|Add0~25\);

-- Location: LCCOMB_X113_Y21_N22
\debounce_KEY1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~9_combout\ = (\debounce_KEY1|Add0~24_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|Add0~24_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~9_combout\);

-- Location: FF_X113_Y21_N23
\debounce_KEY1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~9_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(12));

-- Location: LCCOMB_X112_Y21_N4
\debounce_KEY1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~26_combout\ = (\debounce_KEY1|s_debounceCnt\(13) & (\debounce_KEY1|Add0~25\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(13) & (!\debounce_KEY1|Add0~25\))
-- \debounce_KEY1|Add0~27\ = CARRY((!\debounce_KEY1|s_debounceCnt\(13) & !\debounce_KEY1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce_KEY1|Add0~25\,
	combout => \debounce_KEY1|Add0~26_combout\,
	cout => \debounce_KEY1|Add0~27\);

-- Location: LCCOMB_X112_Y21_N6
\debounce_KEY1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~28_combout\ = (\debounce_KEY1|s_debounceCnt\(14) & ((GND) # (!\debounce_KEY1|Add0~27\))) # (!\debounce_KEY1|s_debounceCnt\(14) & (\debounce_KEY1|Add0~27\ $ (GND)))
-- \debounce_KEY1|Add0~29\ = CARRY((\debounce_KEY1|s_debounceCnt\(14)) # (!\debounce_KEY1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce_KEY1|Add0~27\,
	combout => \debounce_KEY1|Add0~28_combout\,
	cout => \debounce_KEY1|Add0~29\);

-- Location: LCCOMB_X113_Y22_N4
\debounce_KEY1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~5_combout\ = (\debounce_KEY1|Add0~28_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|Add0~28_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~5_combout\);

-- Location: FF_X113_Y22_N5
\debounce_KEY1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~5_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(14));

-- Location: LCCOMB_X112_Y21_N8
\debounce_KEY1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~30_combout\ = (\debounce_KEY1|s_debounceCnt\(15) & (\debounce_KEY1|Add0~29\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(15) & (!\debounce_KEY1|Add0~29\))
-- \debounce_KEY1|Add0~31\ = CARRY((!\debounce_KEY1|s_debounceCnt\(15) & !\debounce_KEY1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce_KEY1|Add0~29\,
	combout => \debounce_KEY1|Add0~30_combout\,
	cout => \debounce_KEY1|Add0~31\);

-- Location: LCCOMB_X112_Y21_N30
\debounce_KEY1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~6_combout\ = (\debounce_KEY1|Add0~30_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|Add0~30_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~6_combout\);

-- Location: FF_X112_Y21_N31
\debounce_KEY1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~6_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(15));

-- Location: LCCOMB_X112_Y21_N10
\debounce_KEY1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~32_combout\ = (\debounce_KEY1|s_debounceCnt\(16) & ((GND) # (!\debounce_KEY1|Add0~31\))) # (!\debounce_KEY1|s_debounceCnt\(16) & (\debounce_KEY1|Add0~31\ $ (GND)))
-- \debounce_KEY1|Add0~33\ = CARRY((\debounce_KEY1|s_debounceCnt\(16)) # (!\debounce_KEY1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce_KEY1|Add0~31\,
	combout => \debounce_KEY1|Add0~32_combout\,
	cout => \debounce_KEY1|Add0~33\);

-- Location: LCCOMB_X112_Y21_N24
\debounce_KEY1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~7_combout\ = (\debounce_KEY1|Add0~32_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|Add0~32_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~7_combout\);

-- Location: FF_X112_Y21_N25
\debounce_KEY1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~7_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(16));

-- Location: LCCOMB_X112_Y21_N12
\debounce_KEY1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~34_combout\ = (\debounce_KEY1|s_debounceCnt\(17) & (\debounce_KEY1|Add0~33\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(17) & (!\debounce_KEY1|Add0~33\))
-- \debounce_KEY1|Add0~35\ = CARRY((!\debounce_KEY1|s_debounceCnt\(17) & !\debounce_KEY1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce_KEY1|Add0~33\,
	combout => \debounce_KEY1|Add0~34_combout\,
	cout => \debounce_KEY1|Add0~35\);

-- Location: LCCOMB_X113_Y22_N22
\debounce_KEY1|s_debounceCnt[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[17]~18_combout\ = (\debounce_KEY1|s_debounceCnt[8]~3_combout\ & (\debounce_KEY1|s_debounceCnt[8]~0_combout\ & ((\debounce_KEY1|Add0~34_combout\) # (!\debounce_KEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	datab => \debounce_KEY1|s_previousIn~q\,
	datac => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	datad => \debounce_KEY1|Add0~34_combout\,
	combout => \debounce_KEY1|s_debounceCnt[17]~18_combout\);

-- Location: FF_X113_Y22_N23
\debounce_KEY1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(17));

-- Location: LCCOMB_X112_Y21_N14
\debounce_KEY1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~36_combout\ = (\debounce_KEY1|s_debounceCnt\(18) & ((GND) # (!\debounce_KEY1|Add0~35\))) # (!\debounce_KEY1|s_debounceCnt\(18) & (\debounce_KEY1|Add0~35\ $ (GND)))
-- \debounce_KEY1|Add0~37\ = CARRY((\debounce_KEY1|s_debounceCnt\(18)) # (!\debounce_KEY1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce_KEY1|Add0~35\,
	combout => \debounce_KEY1|Add0~36_combout\,
	cout => \debounce_KEY1|Add0~37\);

-- Location: LCCOMB_X113_Y22_N16
\debounce_KEY1|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[18]~19_combout\ = (\debounce_KEY1|s_debounceCnt[8]~3_combout\ & (\debounce_KEY1|s_debounceCnt[8]~0_combout\ & ((\debounce_KEY1|Add0~36_combout\) # (!\debounce_KEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	datab => \debounce_KEY1|s_previousIn~q\,
	datac => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	datad => \debounce_KEY1|Add0~36_combout\,
	combout => \debounce_KEY1|s_debounceCnt[18]~19_combout\);

-- Location: FF_X113_Y22_N17
\debounce_KEY1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(18));

-- Location: LCCOMB_X112_Y21_N16
\debounce_KEY1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~38_combout\ = (\debounce_KEY1|s_debounceCnt\(19) & (\debounce_KEY1|Add0~37\ & VCC)) # (!\debounce_KEY1|s_debounceCnt\(19) & (!\debounce_KEY1|Add0~37\))
-- \debounce_KEY1|Add0~39\ = CARRY((!\debounce_KEY1|s_debounceCnt\(19) & !\debounce_KEY1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce_KEY1|Add0~37\,
	combout => \debounce_KEY1|Add0~38_combout\,
	cout => \debounce_KEY1|Add0~39\);

-- Location: LCCOMB_X113_Y22_N18
\debounce_KEY1|s_debounceCnt[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[19]~10_combout\ = (\debounce_KEY1|s_debounceCnt[8]~3_combout\ & (\debounce_KEY1|Add0~38_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	datac => \debounce_KEY1|Add0~38_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt[19]~10_combout\);

-- Location: FF_X113_Y22_N19
\debounce_KEY1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(19));

-- Location: LCCOMB_X112_Y21_N18
\debounce_KEY1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~40_combout\ = (\debounce_KEY1|s_debounceCnt\(20) & ((GND) # (!\debounce_KEY1|Add0~39\))) # (!\debounce_KEY1|s_debounceCnt\(20) & (\debounce_KEY1|Add0~39\ $ (GND)))
-- \debounce_KEY1|Add0~41\ = CARRY((\debounce_KEY1|s_debounceCnt\(20)) # (!\debounce_KEY1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce_KEY1|Add0~39\,
	combout => \debounce_KEY1|Add0~40_combout\,
	cout => \debounce_KEY1|Add0~41\);

-- Location: LCCOMB_X113_Y22_N0
\debounce_KEY1|s_debounceCnt[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[20]~11_combout\ = (\debounce_KEY1|s_debounceCnt[8]~4_combout\ & (\debounce_KEY1|s_debounceCnt[8]~3_combout\ & \debounce_KEY1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	datac => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	datad => \debounce_KEY1|Add0~40_combout\,
	combout => \debounce_KEY1|s_debounceCnt[20]~11_combout\);

-- Location: FF_X113_Y22_N1
\debounce_KEY1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(20));

-- Location: LCCOMB_X113_Y22_N8
\debounce_KEY1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|LessThan0~4_combout\ = (\debounce_KEY1|s_debounceCnt\(7) & (\debounce_KEY1|s_debounceCnt\(18) & (\debounce_KEY1|s_debounceCnt\(17) & \debounce_KEY1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(7),
	datab => \debounce_KEY1|s_debounceCnt\(18),
	datac => \debounce_KEY1|s_debounceCnt\(17),
	datad => \debounce_KEY1|s_debounceCnt\(10),
	combout => \debounce_KEY1|LessThan0~4_combout\);

-- Location: LCCOMB_X113_Y22_N2
\debounce_KEY1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|LessThan0~3_combout\ = (\debounce_KEY1|s_debounceCnt\(6)) # ((\debounce_KEY1|s_debounceCnt\(5) & ((\debounce_KEY1|s_debounceCnt\(0)) # (!\debounce_KEY1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(5),
	datab => \debounce_KEY1|s_debounceCnt\(0),
	datac => \debounce_KEY1|s_debounceCnt\(6),
	datad => \debounce_KEY1|s_pulsedOut~5_combout\,
	combout => \debounce_KEY1|LessThan0~3_combout\);

-- Location: LCCOMB_X113_Y22_N6
\debounce_KEY1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|LessThan0~5_combout\ = (\debounce_KEY1|s_debounceCnt\(13) & (\debounce_KEY1|s_debounceCnt\(8) & (\debounce_KEY1|LessThan0~4_combout\ & \debounce_KEY1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(13),
	datab => \debounce_KEY1|s_debounceCnt\(8),
	datac => \debounce_KEY1|LessThan0~4_combout\,
	datad => \debounce_KEY1|LessThan0~3_combout\,
	combout => \debounce_KEY1|LessThan0~5_combout\);

-- Location: LCCOMB_X114_Y22_N0
\debounce_KEY1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|LessThan0~0_combout\ = (\debounce_KEY1|s_debounceCnt\(12)) # ((\debounce_KEY1|s_debounceCnt\(11)) # ((\debounce_KEY1|s_debounceCnt\(10) & \debounce_KEY1|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(10),
	datab => \debounce_KEY1|s_debounceCnt\(9),
	datac => \debounce_KEY1|s_debounceCnt\(12),
	datad => \debounce_KEY1|s_debounceCnt\(11),
	combout => \debounce_KEY1|LessThan0~0_combout\);

-- Location: LCCOMB_X114_Y22_N10
\debounce_KEY1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|LessThan0~1_combout\ = (\debounce_KEY1|s_debounceCnt\(14)) # ((\debounce_KEY1|s_debounceCnt\(15)) # ((\debounce_KEY1|s_debounceCnt\(13) & \debounce_KEY1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(13),
	datab => \debounce_KEY1|s_debounceCnt\(14),
	datac => \debounce_KEY1|s_debounceCnt\(15),
	datad => \debounce_KEY1|LessThan0~0_combout\,
	combout => \debounce_KEY1|LessThan0~1_combout\);

-- Location: LCCOMB_X114_Y22_N24
\debounce_KEY1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|LessThan0~2_combout\ = (\debounce_KEY1|s_debounceCnt\(17) & (\debounce_KEY1|s_debounceCnt\(18) & ((\debounce_KEY1|s_debounceCnt\(16)) # (\debounce_KEY1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(17),
	datab => \debounce_KEY1|s_debounceCnt\(16),
	datac => \debounce_KEY1|s_debounceCnt\(18),
	datad => \debounce_KEY1|LessThan0~1_combout\,
	combout => \debounce_KEY1|LessThan0~2_combout\);

-- Location: LCCOMB_X114_Y22_N28
\debounce_KEY1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|LessThan0~6_combout\ = (\debounce_KEY1|s_debounceCnt\(20)) # ((\debounce_KEY1|s_debounceCnt\(19)) # ((\debounce_KEY1|LessThan0~5_combout\) # (\debounce_KEY1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(20),
	datab => \debounce_KEY1|s_debounceCnt\(19),
	datac => \debounce_KEY1|LessThan0~5_combout\,
	datad => \debounce_KEY1|LessThan0~2_combout\,
	combout => \debounce_KEY1|LessThan0~6_combout\);

-- Location: LCCOMB_X114_Y22_N20
\debounce_KEY1|s_debounceCnt[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[8]~0_combout\ = (\debounce_KEY1|s_dirtyIn~q\ & ((!\debounce_KEY1|LessThan0~6_combout\) # (!\debounce_KEY1|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(21),
	datac => \debounce_KEY1|s_dirtyIn~q\,
	datad => \debounce_KEY1|LessThan0~6_combout\,
	combout => \debounce_KEY1|s_debounceCnt[8]~0_combout\);

-- Location: LCCOMB_X113_Y22_N12
\debounce_KEY1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~17_combout\ = (\debounce_KEY1|s_debounceCnt[8]~0_combout\ & ((\debounce_KEY1|Add0~26_combout\) # (!\debounce_KEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_previousIn~q\,
	datac => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	datad => \debounce_KEY1|Add0~26_combout\,
	combout => \debounce_KEY1|s_debounceCnt~17_combout\);

-- Location: FF_X113_Y22_N13
\debounce_KEY1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~17_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(13));

-- Location: LCCOMB_X113_Y22_N14
\debounce_KEY1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~3_combout\ = (!\debounce_KEY1|s_debounceCnt\(13) & (!\debounce_KEY1|s_debounceCnt\(18) & (!\debounce_KEY1|s_debounceCnt\(17) & !\debounce_KEY1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(13),
	datab => \debounce_KEY1|s_debounceCnt\(18),
	datac => \debounce_KEY1|s_debounceCnt\(17),
	datad => \debounce_KEY1|s_debounceCnt\(10),
	combout => \debounce_KEY1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X114_Y22_N4
\debounce_KEY1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~2_combout\ = (!\debounce_KEY1|s_debounceCnt\(6) & (!\debounce_KEY1|s_debounceCnt\(9) & (!\debounce_KEY1|s_debounceCnt\(7) & !\debounce_KEY1|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(6),
	datab => \debounce_KEY1|s_debounceCnt\(9),
	datac => \debounce_KEY1|s_debounceCnt\(7),
	datad => \debounce_KEY1|s_debounceCnt\(8),
	combout => \debounce_KEY1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X114_Y22_N14
\debounce_KEY1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~1_combout\ = (!\debounce_KEY1|s_debounceCnt\(20) & (!\debounce_KEY1|s_debounceCnt\(19) & (!\debounce_KEY1|s_debounceCnt\(12) & !\debounce_KEY1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(20),
	datab => \debounce_KEY1|s_debounceCnt\(19),
	datac => \debounce_KEY1|s_debounceCnt\(12),
	datad => \debounce_KEY1|s_debounceCnt\(11),
	combout => \debounce_KEY1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X114_Y22_N6
\debounce_KEY1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~0_combout\ = (!\debounce_KEY1|s_debounceCnt\(5) & (!\debounce_KEY1|s_debounceCnt\(14) & (!\debounce_KEY1|s_debounceCnt\(16) & !\debounce_KEY1|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt\(5),
	datab => \debounce_KEY1|s_debounceCnt\(14),
	datac => \debounce_KEY1|s_debounceCnt\(16),
	datad => \debounce_KEY1|s_debounceCnt\(15),
	combout => \debounce_KEY1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X114_Y22_N16
\debounce_KEY1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~4_combout\ = (\debounce_KEY1|s_pulsedOut~3_combout\ & (\debounce_KEY1|s_pulsedOut~2_combout\ & (\debounce_KEY1|s_pulsedOut~1_combout\ & \debounce_KEY1|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_pulsedOut~3_combout\,
	datab => \debounce_KEY1|s_pulsedOut~2_combout\,
	datac => \debounce_KEY1|s_pulsedOut~1_combout\,
	datad => \debounce_KEY1|s_pulsedOut~0_combout\,
	combout => \debounce_KEY1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X114_Y22_N8
\debounce_KEY1|s_debounceCnt[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[8]~2_combout\ = ((\debounce_KEY1|s_debounceCnt\(0)) # (!\debounce_KEY1|s_pulsedOut~4_combout\)) # (!\debounce_KEY1|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_pulsedOut~5_combout\,
	datab => \debounce_KEY1|s_debounceCnt\(0),
	datad => \debounce_KEY1|s_pulsedOut~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt[8]~2_combout\);

-- Location: LCCOMB_X113_Y22_N26
\debounce_KEY1|s_debounceCnt[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[21]~25_combout\ = (\debounce_KEY1|s_dirtyIn~q\ & ((\debounce_KEY1|s_debounceCnt\(21) & ((!\debounce_KEY1|LessThan0~6_combout\))) # (!\debounce_KEY1|s_debounceCnt\(21) & (\debounce_KEY1|s_debounceCnt[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_dirtyIn~q\,
	datab => \debounce_KEY1|s_debounceCnt[8]~2_combout\,
	datac => \debounce_KEY1|s_debounceCnt\(21),
	datad => \debounce_KEY1|LessThan0~6_combout\,
	combout => \debounce_KEY1|s_debounceCnt[21]~25_combout\);

-- Location: LCCOMB_X112_Y21_N20
\debounce_KEY1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|Add0~42_combout\ = \debounce_KEY1|s_debounceCnt\(21) $ (!\debounce_KEY1|Add0~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_debounceCnt\(21),
	cin => \debounce_KEY1|Add0~41\,
	combout => \debounce_KEY1|Add0~42_combout\);

-- Location: LCCOMB_X113_Y22_N30
\debounce_KEY1|s_debounceCnt[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[21]~26_combout\ = (\debounce_KEY1|s_previousIn~q\ & (\debounce_KEY1|s_debounceCnt[21]~25_combout\ & ((\debounce_KEY1|Add0~42_combout\)))) # (!\debounce_KEY1|s_previousIn~q\ & (((\debounce_KEY1|s_debounceCnt[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_debounceCnt[21]~25_combout\,
	datab => \debounce_KEY1|s_previousIn~q\,
	datac => \debounce_KEY1|s_debounceCnt[8]~0_combout\,
	datad => \debounce_KEY1|Add0~42_combout\,
	combout => \debounce_KEY1|s_debounceCnt[21]~26_combout\);

-- Location: FF_X113_Y22_N31
\debounce_KEY1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(21));

-- Location: LCCOMB_X113_Y22_N20
\debounce_KEY1|s_debounceCnt[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt[8]~4_combout\ = (\debounce_KEY1|s_dirtyIn~q\ & (\debounce_KEY1|s_previousIn~q\ & ((!\debounce_KEY1|LessThan0~6_combout\) # (!\debounce_KEY1|s_debounceCnt\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_dirtyIn~q\,
	datab => \debounce_KEY1|s_previousIn~q\,
	datac => \debounce_KEY1|s_debounceCnt\(21),
	datad => \debounce_KEY1|LessThan0~6_combout\,
	combout => \debounce_KEY1|s_debounceCnt[8]~4_combout\);

-- Location: LCCOMB_X113_Y22_N24
\debounce_KEY1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_debounceCnt~24_combout\ = (\debounce_KEY1|Add0~0_combout\ & \debounce_KEY1|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_KEY1|Add0~0_combout\,
	datad => \debounce_KEY1|s_debounceCnt[8]~4_combout\,
	combout => \debounce_KEY1|s_debounceCnt~24_combout\);

-- Location: FF_X113_Y22_N25
\debounce_KEY1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_debounceCnt~24_combout\,
	ena => \debounce_KEY1|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_debounceCnt\(0));

-- Location: LCCOMB_X113_Y22_N28
\debounce_KEY1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~6_combout\ = (\debounce_KEY1|s_dirtyIn~q\ & (\debounce_KEY1|s_debounceCnt\(0) & (\debounce_KEY1|s_previousIn~q\ & !\debounce_KEY1|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_dirtyIn~q\,
	datab => \debounce_KEY1|s_debounceCnt\(0),
	datac => \debounce_KEY1|s_previousIn~q\,
	datad => \debounce_KEY1|s_debounceCnt\(21),
	combout => \debounce_KEY1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X110_Y22_N24
\debounce_KEY1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_KEY1|s_pulsedOut~7_combout\ = (\debounce_KEY1|s_pulsedOut~6_combout\ & (\debounce_KEY1|s_pulsedOut~4_combout\ & \debounce_KEY1|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_KEY1|s_pulsedOut~6_combout\,
	datab => \debounce_KEY1|s_pulsedOut~4_combout\,
	datad => \debounce_KEY1|s_pulsedOut~5_combout\,
	combout => \debounce_KEY1|s_pulsedOut~7_combout\);

-- Location: FF_X110_Y22_N25
\debounce_KEY1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_KEY1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_KEY1|s_pulsedOut~q\);

-- Location: LCCOMB_X75_Y4_N16
\counter1|s_cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_cout~2_combout\ = (!\gameNormal|Selector4~1_combout\ & (\debounce_KEY1|s_pulsedOut~q\ $ (\counter1|s_cout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY1|s_pulsedOut~q\,
	datac => \counter1|s_cout\(0),
	datad => \gameNormal|Selector4~1_combout\,
	combout => \counter1|s_cout~2_combout\);

-- Location: FF_X75_Y4_N17
\counter1|s_cout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter1|s_cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|s_cout\(0));

-- Location: LCCOMB_X75_Y4_N14
\counter1|s_cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_cout~1_combout\ = (!\gameNormal|Selector4~1_combout\ & (\counter1|s_cout\(1) $ (((\counter1|s_cout\(0) & \debounce_KEY1|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(0),
	datab => \debounce_KEY1|s_pulsedOut~q\,
	datac => \counter1|s_cout\(1),
	datad => \gameNormal|Selector4~1_combout\,
	combout => \counter1|s_cout~1_combout\);

-- Location: FF_X75_Y4_N15
\counter1|s_cout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter1|s_cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|s_cout\(1));

-- Location: LCCOMB_X74_Y4_N26
\counter1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|Add0~0_combout\ = \counter1|s_cout\(2) $ (((\counter1|s_cout\(0) & (\counter1|s_cout\(1) & \debounce_KEY1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(2),
	datab => \counter1|s_cout\(0),
	datac => \counter1|s_cout\(1),
	datad => \debounce_KEY1|s_pulsedOut~q\,
	combout => \counter1|Add0~0_combout\);

-- Location: LCCOMB_X74_Y4_N24
\counter1|s_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1|s_cout~0_combout\ = (\counter1|Add0~0_combout\ & !\gameNormal|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter1|Add0~0_combout\,
	datad => \gameNormal|Selector4~1_combout\,
	combout => \counter1|s_cout~0_combout\);

-- Location: FF_X74_Y4_N25
\counter1|s_cout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter1|s_cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|s_cout\(2));

-- Location: LCCOMB_X74_Y4_N10
\gameNormal|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector0~0_combout\ = (\gameNormal|Equal4~0_combout\ & (\counter1|s_cout\(2) & (!\counter1|s_cout\(1) & !\counter1|s_cout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|Equal4~0_combout\,
	datab => \counter1|s_cout\(2),
	datac => \counter1|s_cout\(1),
	datad => \counter1|s_cout\(0),
	combout => \gameNormal|Selector0~0_combout\);

-- Location: LCCOMB_X76_Y4_N30
\gameNormal|comb_proc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~5_combout\ = (!\counter1|s_cout\(2) & (!\counter0|s_cout\(0) & (!\counter1|s_cout\(0) & !\counter0|s_cout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(2),
	datab => \counter0|s_cout\(0),
	datac => \counter1|s_cout\(0),
	datad => \counter0|s_cout\(2),
	combout => \gameNormal|comb_proc~5_combout\);

-- Location: LCCOMB_X76_Y4_N12
\gameNormal|comb_proc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~6_combout\ = (\counter1|s_cout\(1) & (\gameNormal|comb_proc~5_combout\ & !\counter0|s_cout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(1),
	datac => \gameNormal|comb_proc~5_combout\,
	datad => \counter0|s_cout\(1),
	combout => \gameNormal|comb_proc~6_combout\);

-- Location: LCCOMB_X74_Y4_N28
\gameNormal|comb_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~2_combout\ = (!\counter1|s_cout\(1) & \counter1|s_cout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter1|s_cout\(1),
	datad => \counter1|s_cout\(2),
	combout => \gameNormal|comb_proc~2_combout\);

-- Location: LCCOMB_X74_Y4_N14
\gameNormal|comb_proc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~3_combout\ = (!\counter0|s_cout\(1) & \counter0|s_cout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter0|s_cout\(1),
	datad => \counter0|s_cout\(2),
	combout => \gameNormal|comb_proc~3_combout\);

-- Location: LCCOMB_X74_Y4_N20
\gameNormal|comb_proc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~4_combout\ = (\gameNormal|comb_proc~2_combout\ & (\counter1|s_cout\(0) & ((\counter0|s_cout\(0)) # (!\gameNormal|comb_proc~3_combout\)))) # (!\gameNormal|comb_proc~2_combout\ & (((\gameNormal|comb_proc~3_combout\ & 
-- \counter0|s_cout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|comb_proc~2_combout\,
	datab => \counter1|s_cout\(0),
	datac => \gameNormal|comb_proc~3_combout\,
	datad => \counter0|s_cout\(0),
	combout => \gameNormal|comb_proc~4_combout\);

-- Location: LCCOMB_X75_Y4_N4
\gameNormal|s_currentState.E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|s_currentState.E0~0_combout\ = (\gameNormal|Selector0~0_combout\) # ((\gameNormal|s_currentState.E0~q\) # (\gameNormal|comb_proc~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|Selector0~0_combout\,
	datac => \gameNormal|s_currentState.E0~q\,
	datad => \gameNormal|comb_proc~4_combout\,
	combout => \gameNormal|s_currentState.E0~0_combout\);

-- Location: FF_X75_Y4_N5
\gameNormal|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gameNormal|s_currentState.E0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gameNormal|s_currentState.E0~q\);

-- Location: LCCOMB_X76_Y4_N0
\gameNormal|comb_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~0_combout\ = (!\counter0|s_cout\(1) & (!\counter0|s_cout\(2) & (!\counter1|s_cout\(2) & !\counter1|s_cout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|s_cout\(1),
	datab => \counter0|s_cout\(2),
	datac => \counter1|s_cout\(2),
	datad => \counter1|s_cout\(1),
	combout => \gameNormal|comb_proc~0_combout\);

-- Location: LCCOMB_X76_Y4_N10
\gameNormal|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector0~1_combout\ = (\gameNormal|s_currentState.E1~q\ & ((\counter0|s_cout\(0) $ (!\counter1|s_cout\(0))) # (!\gameNormal|comb_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E1~q\,
	datab => \counter0|s_cout\(0),
	datac => \counter1|s_cout\(0),
	datad => \gameNormal|comb_proc~0_combout\,
	combout => \gameNormal|Selector0~1_combout\);

-- Location: LCCOMB_X76_Y4_N16
\gameNormal|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector2~0_combout\ = (\gameNormal|s_currentState.E1~q\ & (\counter0|s_cout\(0) & (!\counter1|s_cout\(0) & \gameNormal|comb_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E1~q\,
	datab => \counter0|s_cout\(0),
	datac => \counter1|s_cout\(0),
	datad => \gameNormal|comb_proc~0_combout\,
	combout => \gameNormal|Selector2~0_combout\);

-- Location: LCCOMB_X76_Y4_N6
\gameNormal|comb_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~1_combout\ = (\counter0|s_cout\(0) & (\counter1|s_cout\(0) & \gameNormal|comb_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|s_cout\(0),
	datac => \counter1|s_cout\(0),
	datad => \gameNormal|comb_proc~0_combout\,
	combout => \gameNormal|comb_proc~1_combout\);

-- Location: LCCOMB_X76_Y4_N18
\gameNormal|comb_proc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|comb_proc~7_combout\ = (!\counter1|s_cout\(1) & (\gameNormal|comb_proc~5_combout\ & \counter0|s_cout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(1),
	datac => \gameNormal|comb_proc~5_combout\,
	datad => \counter0|s_cout\(1),
	combout => \gameNormal|comb_proc~7_combout\);

-- Location: LCCOMB_X77_Y4_N24
\gameNormal|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector2~1_combout\ = (\gameNormal|Selector2~0_combout\) # ((!\gameNormal|comb_proc~1_combout\ & (\gameNormal|s_currentState.E3~q\ & !\gameNormal|comb_proc~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|Selector2~0_combout\,
	datab => \gameNormal|comb_proc~1_combout\,
	datac => \gameNormal|s_currentState.E3~q\,
	datad => \gameNormal|comb_proc~7_combout\,
	combout => \gameNormal|Selector2~1_combout\);

-- Location: FF_X77_Y4_N25
\gameNormal|s_currentState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gameNormal|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gameNormal|s_currentState.E3~q\);

-- Location: LCCOMB_X76_Y4_N26
\gameNormal|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector4~0_combout\ = (\gameNormal|comb_proc~1_combout\ & ((\gameNormal|s_currentState.E3~q\) # (\gameNormal|s_currentState.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gameNormal|s_currentState.E3~q\,
	datac => \gameNormal|s_currentState.E2~q\,
	datad => \gameNormal|comb_proc~1_combout\,
	combout => \gameNormal|Selector4~0_combout\);

-- Location: LCCOMB_X75_Y4_N0
\gameNormal|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector0~2_combout\ = (\gameNormal|Selector0~1_combout\) # ((\gameNormal|Selector4~0_combout\) # ((\gameNormal|Selector0~0_combout\ & !\gameNormal|s_currentState.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|Selector0~0_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|Selector0~1_combout\,
	datad => \gameNormal|Selector4~0_combout\,
	combout => \gameNormal|Selector0~2_combout\);

-- Location: FF_X75_Y4_N1
\gameNormal|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gameNormal|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gameNormal|s_currentState.E1~q\);

-- Location: LCCOMB_X76_Y4_N2
\gameNormal|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector1~0_combout\ = (\gameNormal|s_currentState.E1~q\ & (!\counter0|s_cout\(0) & (\counter1|s_cout\(0) & \gameNormal|comb_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E1~q\,
	datab => \counter0|s_cout\(0),
	datac => \counter1|s_cout\(0),
	datad => \gameNormal|comb_proc~0_combout\,
	combout => \gameNormal|Selector1~0_combout\);

-- Location: LCCOMB_X76_Y4_N4
\gameNormal|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector1~1_combout\ = (\gameNormal|Selector1~0_combout\) # ((!\gameNormal|comb_proc~6_combout\ & (\gameNormal|s_currentState.E2~q\ & !\gameNormal|comb_proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|comb_proc~6_combout\,
	datab => \gameNormal|Selector1~0_combout\,
	datac => \gameNormal|s_currentState.E2~q\,
	datad => \gameNormal|comb_proc~1_combout\,
	combout => \gameNormal|Selector1~1_combout\);

-- Location: FF_X76_Y4_N5
\gameNormal|s_currentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gameNormal|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gameNormal|s_currentState.E2~q\);

-- Location: LCCOMB_X76_Y4_N28
\gameNormal|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector3~0_combout\ = (!\gameNormal|s_currentState.E2~q\ & (!\gameNormal|s_currentState.E1~q\ & !\gameNormal|s_currentState.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gameNormal|s_currentState.E2~q\,
	datac => \gameNormal|s_currentState.E1~q\,
	datad => \gameNormal|s_currentState.E3~q\,
	combout => \gameNormal|Selector3~0_combout\);

-- Location: LCCOMB_X76_Y4_N20
\gameNormal|s_currentState.E4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|s_currentState.E4~0_combout\ = (\gameNormal|s_currentState.E3~q\ & (((\gameNormal|comb_proc~7_combout\)))) # (!\gameNormal|s_currentState.E3~q\ & (\gameNormal|comb_proc~6_combout\ & (\gameNormal|s_currentState.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|comb_proc~6_combout\,
	datab => \gameNormal|s_currentState.E3~q\,
	datac => \gameNormal|s_currentState.E2~q\,
	datad => \gameNormal|comb_proc~7_combout\,
	combout => \gameNormal|s_currentState.E4~0_combout\);

-- Location: LCCOMB_X75_Y4_N30
\gameNormal|s_currentState.E4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|s_currentState.E4~1_combout\ = (\gameNormal|s_currentState.E4~0_combout\) # ((\gameNormal|s_currentState.E4~q\) # ((\gameNormal|Selector3~0_combout\ & \gameNormal|comb_proc~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~0_combout\,
	datab => \gameNormal|Selector3~0_combout\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \gameNormal|comb_proc~4_combout\,
	combout => \gameNormal|s_currentState.E4~1_combout\);

-- Location: FF_X75_Y4_N31
\gameNormal|s_currentState.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gameNormal|s_currentState.E4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gameNormal|s_currentState.E4~q\);

-- Location: LCCOMB_X75_Y4_N2
\gameNormal|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|Selector4~1_combout\ = (\gameNormal|s_currentState.E4~q\) # ((\gameNormal|Selector4~0_combout\) # ((\gameNormal|Selector0~0_combout\ & \gameNormal|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|Selector0~0_combout\,
	datab => \gameNormal|Selector3~0_combout\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \gameNormal|Selector4~0_combout\,
	combout => \gameNormal|Selector4~1_combout\);

-- Location: LCCOMB_X75_Y4_N18
\counter0|s_cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|s_cout~1_combout\ = (!\gameNormal|Selector4~1_combout\ & (\debounce_KEY0|s_pulsedOut~q\ $ (\counter0|s_cout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_KEY0|s_pulsedOut~q\,
	datac => \counter0|s_cout\(0),
	datad => \gameNormal|Selector4~1_combout\,
	combout => \counter0|s_cout~1_combout\);

-- Location: FF_X75_Y4_N19
\counter0|s_cout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|s_cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|s_cout\(0));

-- Location: LCCOMB_X75_Y4_N8
\counter0|s_cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|s_cout~2_combout\ = (!\gameNormal|Selector4~1_combout\ & (\counter0|s_cout\(1) $ (((\counter0|s_cout\(0) & \debounce_KEY0|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|s_cout\(0),
	datab => \debounce_KEY0|s_pulsedOut~q\,
	datac => \counter0|s_cout\(1),
	datad => \gameNormal|Selector4~1_combout\,
	combout => \counter0|s_cout~2_combout\);

-- Location: FF_X75_Y4_N9
\counter0|s_cout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter0|s_cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|s_cout\(1));

-- Location: LCCOMB_X73_Y4_N16
\gameNormal|deuceMode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gameNormal|deuceMode~0_combout\ = (\gameNormal|s_currentState.E4~q\) # (!\gameNormal|s_currentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datac => \gameNormal|s_currentState.E0~q\,
	combout => \gameNormal|deuceMode~0_combout\);

-- Location: LCCOMB_X76_Y4_N24
\hexDecoder|decOutA0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA0~10_combout\ = (\counter0|s_cout\(2) $ (((!\counter0|s_cout\(1) & !\counter0|s_cout\(0))))) # (!\gameNormal|deuceMode~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|s_cout\(1),
	datab => \counter0|s_cout\(0),
	datac => \gameNormal|deuceMode~0_combout\,
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|decOutA0~10_combout\);

-- Location: LCCOMB_X74_Y4_N16
\hexDecoder|decOutA1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~10_combout\ = (\counter0|s_cout\(0) & !\counter0|s_cout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|s_cout\(0),
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|decOutA1~10_combout\);

-- Location: LCCOMB_X74_Y4_N30
\hexDecoder|decOutA0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA0~11_combout\ = (\counter1|s_cout\(1) & (((\counter1|s_cout\(0) & !\counter0|s_cout\(0))) # (!\counter0|s_cout\(1)))) # (!\counter1|s_cout\(1) & (\counter1|s_cout\(0) & (!\counter0|s_cout\(1) & !\counter0|s_cout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(1),
	datab => \counter1|s_cout\(0),
	datac => \counter0|s_cout\(1),
	datad => \counter0|s_cout\(0),
	combout => \hexDecoder|decOutA0~11_combout\);

-- Location: LCCOMB_X74_Y4_N4
\hexDecoder|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|LessThan0~0_combout\ = (\counter1|s_cout\(1) & (!\counter1|s_cout\(0) & (\counter0|s_cout\(1) & \counter0|s_cout\(0)))) # (!\counter1|s_cout\(1) & ((\counter0|s_cout\(1)) # ((!\counter1|s_cout\(0) & \counter0|s_cout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(1),
	datab => \counter1|s_cout\(0),
	datac => \counter0|s_cout\(1),
	datad => \counter0|s_cout\(0),
	combout => \hexDecoder|LessThan0~0_combout\);

-- Location: LCCOMB_X74_Y4_N0
\hexDecoder|decOutA0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA0~13_combout\ = (\counter1|s_cout\(2) & (((\hexDecoder|decOutA0~11_combout\ & !\hexDecoder|LessThan0~0_combout\)) # (!\counter0|s_cout\(2)))) # (!\counter1|s_cout\(2) & (\hexDecoder|decOutA0~11_combout\ & 
-- (!\hexDecoder|LessThan0~0_combout\ & !\counter0|s_cout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|decOutA0~11_combout\,
	datab => \counter1|s_cout\(2),
	datac => \hexDecoder|LessThan0~0_combout\,
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|decOutA0~13_combout\);

-- Location: LCCOMB_X75_Y4_N20
\hexDecoder|decOutA0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA0~14_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & (!\hexDecoder|decOutA1~10_combout\)) # (!\gameNormal|s_currentState.E4~q\ & ((\hexDecoder|decOutA0~13_combout\))))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|decOutA1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|decOutA1~10_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \hexDecoder|decOutA0~13_combout\,
	combout => \hexDecoder|decOutA0~14_combout\);

-- Location: LCCOMB_X76_Y4_N22
\hexDecoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|Mux4~0_combout\ = \counter0|s_cout\(2) $ (((\counter0|s_cout\(1)) # (\counter0|s_cout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|s_cout\(1),
	datab => \counter0|s_cout\(0),
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y4_N10
\hexDecoder|decOutA0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA0~15_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & ((!\hexDecoder|Mux4~0_combout\))) # (!\gameNormal|s_currentState.E4~q\ & (\hexDecoder|decOutA0~13_combout\)))) # (!\gameNormal|s_currentState.E0~q\ 
-- & (((!\hexDecoder|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|decOutA0~13_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \hexDecoder|Mux4~0_combout\,
	combout => \hexDecoder|decOutA0~15_combout\);

-- Location: LCCOMB_X76_Y4_N8
\hexDecoder|decOutA0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA0~12_combout\ = (\counter0|s_cout\(0)) # (\counter0|s_cout\(1) $ (!\counter0|s_cout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|s_cout\(1),
	datab => \counter0|s_cout\(0),
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|decOutA0~12_combout\);

-- Location: LCCOMB_X75_Y4_N12
\hexDecoder|decOutA0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA0~16_combout\ = (\gameNormal|s_currentState.E4~q\ & (((\hexDecoder|decOutA0~12_combout\)))) # (!\gameNormal|s_currentState.E4~q\ & ((\gameNormal|s_currentState.E0~q\ & ((\hexDecoder|decOutA0~13_combout\))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (\hexDecoder|decOutA0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \hexDecoder|decOutA0~12_combout\,
	datad => \hexDecoder|decOutA0~13_combout\,
	combout => \hexDecoder|decOutA0~16_combout\);

-- Location: LCCOMB_X74_Y4_N6
\hexDecoder|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|LessThan0~1_combout\ = (\counter1|s_cout\(2) & (\hexDecoder|LessThan0~0_combout\ & \counter0|s_cout\(2))) # (!\counter1|s_cout\(2) & ((\hexDecoder|LessThan0~0_combout\) # (\counter0|s_cout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1|s_cout\(2),
	datac => \hexDecoder|LessThan0~0_combout\,
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|LessThan0~1_combout\);

-- Location: LCCOMB_X75_Y4_N6
\hexDecoder|decOutA1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~15_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & (!\hexDecoder|decOutA1~10_combout\)) # (!\gameNormal|s_currentState.E4~q\ & ((!\hexDecoder|LessThan0~1_combout\))))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|decOutA1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|decOutA1~10_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \hexDecoder|LessThan0~1_combout\,
	datad => \gameNormal|s_currentState.E4~q\,
	combout => \hexDecoder|decOutA1~15_combout\);

-- Location: LCCOMB_X75_Y4_N24
\hexDecoder|decOutA1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~16_combout\ = (\gameNormal|s_currentState.E4~q\ & (((\hexDecoder|Mux4~0_combout\)))) # (!\gameNormal|s_currentState.E4~q\ & ((\gameNormal|s_currentState.E0~q\ & (\hexDecoder|LessThan0~1_combout\)) # (!\gameNormal|s_currentState.E0~q\ 
-- & ((\hexDecoder|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \hexDecoder|LessThan0~1_combout\,
	datad => \hexDecoder|Mux4~0_combout\,
	combout => \hexDecoder|decOutA1~16_combout\);

-- Location: LCCOMB_X74_Y4_N18
\hexDecoder|decOutA1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~11_combout\ = ((\counter0|s_cout\(2)) # ((\gameNormal|s_currentState.E0~q\ & !\gameNormal|s_currentState.E4~q\))) # (!\counter0|s_cout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E0~q\,
	datab => \counter0|s_cout\(0),
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|decOutA1~11_combout\);

-- Location: LCCOMB_X74_Y4_N8
\hexDecoder|decOutA1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~12_combout\ = (\gameNormal|deuceMode~0_combout\ & (((\counter0|s_cout\(1))) # (!\hexDecoder|decOutA1~10_combout\))) # (!\gameNormal|deuceMode~0_combout\ & (((!\hexDecoder|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|deuceMode~0_combout\,
	datab => \hexDecoder|decOutA1~10_combout\,
	datac => \counter0|s_cout\(1),
	datad => \hexDecoder|LessThan0~1_combout\,
	combout => \hexDecoder|decOutA1~12_combout\);

-- Location: LCCOMB_X76_Y4_N14
\hexDecoder|decOutA1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~13_combout\ = (\counter0|s_cout\(1)) # (\counter0|s_cout\(0) $ (!\counter0|s_cout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|s_cout\(1),
	datab => \counter0|s_cout\(0),
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|decOutA1~13_combout\);

-- Location: LCCOMB_X75_Y4_N26
\hexDecoder|decOutA1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~17_combout\ = (\gameNormal|s_currentState.E4~q\ & (((\hexDecoder|decOutA1~13_combout\)))) # (!\gameNormal|s_currentState.E4~q\ & ((\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|LessThan0~1_combout\)) # 
-- (!\gameNormal|s_currentState.E0~q\ & ((\hexDecoder|decOutA1~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \hexDecoder|LessThan0~1_combout\,
	datad => \hexDecoder|decOutA1~13_combout\,
	combout => \hexDecoder|decOutA1~17_combout\);

-- Location: LCCOMB_X74_Y4_N22
\hexDecoder|decOutA1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~14_combout\ = (\counter0|s_cout\(0) & ((\counter0|s_cout\(2)) # (!\counter0|s_cout\(1)))) # (!\counter0|s_cout\(0) & ((\counter0|s_cout\(1)) # (!\counter0|s_cout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter0|s_cout\(0),
	datac => \counter0|s_cout\(1),
	datad => \counter0|s_cout\(2),
	combout => \hexDecoder|decOutA1~14_combout\);

-- Location: LCCOMB_X73_Y4_N0
\hexDecoder|decOutA1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutA1~18_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & ((\hexDecoder|decOutA1~14_combout\))) # (!\gameNormal|s_currentState.E4~q\ & (!\hexDecoder|LessThan0~1_combout\)))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (((\hexDecoder|decOutA1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|LessThan0~1_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \hexDecoder|decOutA1~14_combout\,
	combout => \hexDecoder|decOutA1~18_combout\);

-- Location: LCCOMB_X73_Y4_N22
\hexDecoder|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|Mux10~0_combout\ = \counter1|s_cout\(2) $ (((\counter1|s_cout\(0)) # (\counter1|s_cout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1|s_cout\(2),
	datac => \counter1|s_cout\(0),
	datad => \counter1|s_cout\(1),
	combout => \hexDecoder|Mux10~0_combout\);

-- Location: LCCOMB_X73_Y4_N10
\hexDecoder|decOutB0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB0~13_combout\ = ((!\gameNormal|s_currentState.E4~q\ & \gameNormal|s_currentState.E0~q\)) # (!\hexDecoder|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \hexDecoder|Mux10~0_combout\,
	combout => \hexDecoder|decOutB0~13_combout\);

-- Location: LCCOMB_X73_Y4_N24
\hexDecoder|decOutB1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~10_combout\ = (!\counter1|s_cout\(2) & \counter1|s_cout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1|s_cout\(2),
	datac => \counter1|s_cout\(0),
	combout => \hexDecoder|decOutB1~10_combout\);

-- Location: LCCOMB_X73_Y4_N8
\hexDecoder|decOutB0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB0~14_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & ((!\hexDecoder|decOutB1~10_combout\))) # (!\gameNormal|s_currentState.E4~q\ & (\hexDecoder|LessThan0~1_combout\)))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (((!\hexDecoder|decOutB1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|LessThan0~1_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \hexDecoder|decOutB1~10_combout\,
	combout => \hexDecoder|decOutB0~14_combout\);

-- Location: LCCOMB_X73_Y4_N6
\hexDecoder|decOutB0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB0~15_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & (!\hexDecoder|Mux10~0_combout\)) # (!\gameNormal|s_currentState.E4~q\ & ((\hexDecoder|LessThan0~1_combout\))))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|Mux10~0_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \hexDecoder|LessThan0~1_combout\,
	combout => \hexDecoder|decOutB0~15_combout\);

-- Location: LCCOMB_X73_Y4_N30
\hexDecoder|decOutB0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB0~12_combout\ = (\counter1|s_cout\(0)) # (\counter1|s_cout\(2) $ (!\counter1|s_cout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1|s_cout\(2),
	datac => \counter1|s_cout\(0),
	datad => \counter1|s_cout\(1),
	combout => \hexDecoder|decOutB0~12_combout\);

-- Location: LCCOMB_X73_Y4_N12
\hexDecoder|decOutB0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB0~16_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & (\hexDecoder|decOutB0~12_combout\)) # (!\gameNormal|s_currentState.E4~q\ & ((\hexDecoder|LessThan0~1_combout\))))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (\hexDecoder|decOutB0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexDecoder|decOutB0~12_combout\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \hexDecoder|LessThan0~1_combout\,
	combout => \hexDecoder|decOutB0~16_combout\);

-- Location: LCCOMB_X74_Y4_N2
\hexDecoder|decOutB1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~15_combout\ = (\gameNormal|s_currentState.E0~q\ & ((\gameNormal|s_currentState.E4~q\ & (!\hexDecoder|decOutB1~10_combout\)) # (!\gameNormal|s_currentState.E4~q\ & ((!\hexDecoder|decOutA0~13_combout\))))) # 
-- (!\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|decOutB1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E0~q\,
	datab => \hexDecoder|decOutB1~10_combout\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \hexDecoder|decOutA0~13_combout\,
	combout => \hexDecoder|decOutB1~15_combout\);

-- Location: LCCOMB_X73_Y4_N18
\hexDecoder|decOutB1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~16_combout\ = (\gameNormal|s_currentState.E4~q\ & (((!\hexDecoder|Mux10~0_combout\)))) # (!\gameNormal|s_currentState.E4~q\ & ((\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|decOutA0~13_combout\)) # 
-- (!\gameNormal|s_currentState.E0~q\ & ((!\hexDecoder|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \hexDecoder|decOutA0~13_combout\,
	datad => \hexDecoder|Mux10~0_combout\,
	combout => \hexDecoder|decOutB1~16_combout\);

-- Location: LCCOMB_X73_Y4_N4
\hexDecoder|decOutB1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~11_combout\ = ((\counter1|s_cout\(2)) # ((\gameNormal|s_currentState.E0~q\ & !\gameNormal|s_currentState.E4~q\))) # (!\counter1|s_cout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(0),
	datab => \gameNormal|s_currentState.E0~q\,
	datac => \gameNormal|s_currentState.E4~q\,
	datad => \counter1|s_cout\(2),
	combout => \hexDecoder|decOutB1~11_combout\);

-- Location: LCCOMB_X73_Y4_N26
\hexDecoder|decOutB1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~12_combout\ = (\gameNormal|deuceMode~0_combout\ & ((\counter1|s_cout\(1)) # ((!\hexDecoder|decOutB1~10_combout\)))) # (!\gameNormal|deuceMode~0_combout\ & (((!\hexDecoder|decOutA0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|s_cout\(1),
	datab => \gameNormal|deuceMode~0_combout\,
	datac => \hexDecoder|decOutA0~13_combout\,
	datad => \hexDecoder|decOutB1~10_combout\,
	combout => \hexDecoder|decOutB1~12_combout\);

-- Location: LCCOMB_X73_Y4_N28
\hexDecoder|decOutB1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~13_combout\ = (\counter1|s_cout\(1)) # (\counter1|s_cout\(2) $ (!\counter1|s_cout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1|s_cout\(2),
	datac => \counter1|s_cout\(0),
	datad => \counter1|s_cout\(1),
	combout => \hexDecoder|decOutB1~13_combout\);

-- Location: LCCOMB_X73_Y4_N20
\hexDecoder|decOutB1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~17_combout\ = (\gameNormal|s_currentState.E4~q\ & (((\hexDecoder|decOutB1~13_combout\)))) # (!\gameNormal|s_currentState.E4~q\ & ((\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|decOutA0~13_combout\)) # 
-- (!\gameNormal|s_currentState.E0~q\ & ((\hexDecoder|decOutB1~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datab => \hexDecoder|decOutA0~13_combout\,
	datac => \gameNormal|s_currentState.E0~q\,
	datad => \hexDecoder|decOutB1~13_combout\,
	combout => \hexDecoder|decOutB1~17_combout\);

-- Location: LCCOMB_X73_Y4_N2
\hexDecoder|decOutB1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~14_combout\ = (\counter1|s_cout\(2) & ((\counter1|s_cout\(0)) # (\counter1|s_cout\(1)))) # (!\counter1|s_cout\(2) & ((!\counter1|s_cout\(1)) # (!\counter1|s_cout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1|s_cout\(2),
	datac => \counter1|s_cout\(0),
	datad => \counter1|s_cout\(1),
	combout => \hexDecoder|decOutB1~14_combout\);

-- Location: LCCOMB_X73_Y4_N14
\hexDecoder|decOutB1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexDecoder|decOutB1~18_combout\ = (\gameNormal|s_currentState.E4~q\ & (((\hexDecoder|decOutB1~14_combout\)))) # (!\gameNormal|s_currentState.E4~q\ & ((\gameNormal|s_currentState.E0~q\ & (!\hexDecoder|decOutA0~13_combout\)) # 
-- (!\gameNormal|s_currentState.E0~q\ & ((\hexDecoder|decOutB1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gameNormal|s_currentState.E4~q\,
	datab => \hexDecoder|decOutA0~13_combout\,
	datac => \gameNormal|s_currentState.E0~q\,
	datad => \hexDecoder|decOutB1~14_combout\,
	combout => \hexDecoder|decOutB1~18_combout\);

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


