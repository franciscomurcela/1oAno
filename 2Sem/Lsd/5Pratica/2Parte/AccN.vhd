library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AccN is
	generic(N : positive => N);
	port(dataIn: in std_logic_vector(N-1 downto 0);
		enable: in std_logic;
		clk: in std_logic;
		dataOut: out std_logic_vector(N-1 downto 0);
		s_adderOut: out std_logic_vector(N-1 downto 0)
		s_regOut: out std_logic_vector(N-1 downto 0));
end AccN;

Architecture Behavioral of AccN is 
begin

	
s_adderOut : entity work.AdderN(Behavioral)
	port map(dataIn => operand0);
	
	
s_regOut : entity work.RegN(Behavioral)
	port map(dataOut => operand1);
	
	
process(clk)
if (rising_edge(clk)) then
			if (enable = '1') then
				if (reset = '1') then
					dataOut <= (others => '0);
				else

											