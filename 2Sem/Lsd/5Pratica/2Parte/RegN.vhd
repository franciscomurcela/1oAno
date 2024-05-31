library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RegN is
	generic(N:positive);
	port( datain: in std_logic_vector(N-1 downto 0);
		clk: in std_logic;
		enable: in std_logic;
		reset: in std_logic;
		dataOut: out std_logic_vector(N-1 downto 0);
end AdderN;

Architecture Behavioral of RegN is
begin
process(clk)
		if (rising_edge(clk)) then
			if (enable = '1') then
				if (reset = '1') then
					dataOut <= (others => '0');
				else 
					dataOut <= dataIn;
			end if;
		end if;
	end if;
 end process;
end Behavioral;