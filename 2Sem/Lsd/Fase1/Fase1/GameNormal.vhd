library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity GameNormal is
	port(clk          : in  std_logic;
		  countPlayerA : in  std_logic_vector(2 downto 0);
		  countPlayerB : in  std_logic_vector(2 downto 0);
		  resetCounter : out std_logic;
		  deuceMode    : out std_logic;
		  gameWin	   : out std_logic;
		  gameWinner   : out std_logic_vector(1 downto 0));
end GameNormal;

architecture Behavioral of GameNormal is
	type TState is (E0, E1, E2, E3, E4);
	signal s_currentState, s_nextState : TState := E0;
begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			s_currentState <= s_nextState;
		end if;
	end process;

	comb_proc : process(s_currentState, countPlayerA, countPlayerB)
	begin
		resetCounter <= '0';
		gameWin <= '0';
		gameWinner <= "00";
		deuceMode <= '0';

		case (s_currentState) is
		when E0 =>
			if ((countPlayerA = "101" and countPlayerB /= "100") or (countPlayerA /= "100" and countPlayerB = "101")) then
				s_nextState <= E4;
			elsif (countPlayerA = "100" and countPlayerB = "100") then
				s_nextState <= E1;
				resetCounter <= '1';
			else
				s_nextState <= E0;
			end if;

		when E1 =>
			deuceMode <= '1';
			if (countPlayerA = "000" and countPlayerB = "001") then
				s_nextState <= E2;
			elsif (countPlayerA = "001" and countPlayerB = "000") then
				s_nextState <= E3;
			else
				s_nextState <= E1;
			end if;

		when E2 =>
			deuceMode <= '1';
			if (countPlayerA = "000" and countPlayerB = "010") then
				s_nextState <= E4;
			elsif (countPlayerA = "001" and countPlayerB = "001") then
				s_nextState <= E1;
				resetCounter <= '1';
			else
				s_nextState <= E2;
			end if;

		when E3 =>
			deuceMode <= '1';
			if (countPlayerA = "010" and countPlayerB = "000") then
				s_nextState <= E4;
			elsif (countPlayerA = "001" and countPlayerB = "001") then
				s_nextState <= E1;
				resetCounter <= '1';
			else
				s_nextState <= E3;
			end if;

		when E4 =>
			-- nao mudar estado, deve esperar pelo reset
			gameWin <= '1';
			s_nextState <= E4;
			resetCounter <= '1';
			
			if (countPlayerA > countPlayerB) then
				gameWinner <= "01";
			else
				gameWinner <= "10";
			end if;
		end case;
	end process;
end Behavioral;