library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity miniP_P13 is
	port(clk    : in  std_logic;
		  enable : in  std_logic;
		  reset  : in  std_logic;
		  cout   : out std_logic_vector(3 downto 0));
end miniP_P13;

architecture Behavioral of miniP_P13 is
	signal s_cout : unsigned(3 downto 0) := "0000";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_cout <= (others => '0');
			elsif (enable = '1') then
				if (s_cout = "0000") then
					s_cout <= (others => '1');
				else
					s_cout <= s_cout - 1;
				end if;
			end if;
		end if;
	end process;
	
	cout <= std_logic_vector(s_cout);
end Behavioral;