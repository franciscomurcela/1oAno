library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(clk		: in  std_logic;
		  Xin		: in  std_logic;
		  reset	: in std_logic;
		  Yout	: out std_logic);
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is

	type TState is (E0, E1, E2, E3);
	signal s_currentState, s_nextState : TState;

begin
	sync_proB: process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= E0;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proB: process(s_currentState, Xin, reset)
	begin
		Yout <= '0';
		case (s_currentState) is
		when E0 =>
			
			if (Xin= '1') then
				s_nextState <= E1;
			else
				s_nextState <= E0;
			end if;

		when E1 =>
			if (Xin= '0') then
				s_nextState <= E2;
			else
				s_nextState <= E1;
			end if;

		when E2 =>
			if (Xin= '0') then
				s_nextState <= E3;
			else
				s_nextState <= E1;
			end if;
			
		when E3 =>
			if (Xin= '1') then
				Yout <= '1';
				s_nextState <= E1;
			else 
				s_nextState <= E0;
			end if;
		
		when others =>
			s_nextState <= E0;
			
		end case;

	end process;
	
end MealyArch;