library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterMod8 is
	port(clk    : in  std_logic;
		  enable : in  std_logic;
		  reset  : in  std_logic;
		  cout   : out std_logic_vector(2 downto 0));
end CounterMod8;

architecture Behavioral of CounterMod8 is
	signal s_cout : unsigned(2 downto 0) := "000";
begin
	process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_cout <= (others => '0');
			elsif (enable = '0') then
				s_cout <= s_cout + 1;
			end if;
		end if;
	end process;
	
	cout <= std_logic_vector(s_cout);
end Behavioral;