library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AdderN is
	generic(N:positive);
	port( operand0: in std_logic_vector(N-1 downto 0);
		operand1: in std_logic_vector(N-1 downto 0);
		result: out std_logic_vector(N-1 downto 0);
end AdderN;

Architecture Behavioral of AdderN is
begin
	result <= std_logic_vector(signed(operand0) + signed(operand1));
end Behavioral