library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port(clk		: in  std_logic;
		  C		: in  std_logic;
		  V		: in  std_logic;
		  reset	: out std_logic;
		  Abrir	: out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type TState is (E0, E1, E2, E3, E4, E5);
	signal s_currentState, s_nextState : TState;
	signal s_reset: std_logic;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (s_reset = '1') then
				s_currentState <= E0;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, V, C)
	begin
		case (s_currentState) is
		when E0 =>
			Abrir <= '0';
			s_reset <= '0';
			if (V = '1') then
				s_nextState <= E1;
			elsif (C = '1') then
				s_nextState <= E3;
			else
				s_nextState <= E0;
			end if;

		when E1 =>
			Abrir <= '0';
			s_reset <= '0';
			if (V = '1') then
				s_nextState <= E2;
			elsif (C = '1') then
				s_nextState <= E3;
			else
				s_nextState <= E1;
			end if;

		when E2 =>
			Abrir <= '0';
			s_reset <= '0';
			if (V = '1') then
				s_nextState <= E3;
			elsif (C = '1') then
				s_nextState <= E5;
			else
				s_nextState <= E2;
			end if;
			
		when E3 =>
			Abrir <= '0';
			s_reset <= '0';
			if (V = '1') then
				s_nextState <= E4;
			elsif (C = '1') then
				s_nextState <= E5;
			else 
				s_nextState <= E3;
			end if;
		
		when E4 =>
			Abrir <= '0';
			s_reset <= '0';
			if (V = '1' or C = '1') then
				s_nextState <= E5;
			else
				s_nextState <= E4;
			end if;
			
		when E5 =>
			Abrir <= '1';
			s_reset <= '1';
			
		end case;

	end process;
	
	reset <= s_reset;

end Behavioral;