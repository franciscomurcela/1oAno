library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Entidade sem portos
entity CounterMod16_Tb is
end CounterMod16_Tb;
architecture Stimulus of CounterMod16_Tb is
 -- Sinais para ligar às entradas da UUT
 
 signal s_clk : std_logic;
 signal s_enable : std_logic;
 signal s_reset : std_logic;
 
 -- Sinal para ligar às saídas da UUT
 signal s_cout : std_logic_vector(3 downto 0);
begin
 -- Instanciação da Unit Under Test (UUT)
 uut: entity work.CounterMod16_Tb(Behavioral)
 port map(clk => s_clk,
			 enable => s_enable,
			 reset => s_reset,
			 cout => s_cout);

	
 --Process stim
  stim_proc : process
 begin
	 wait for 100 ns;
	 s_enable <= '0';
	 wait for 100 ns;
	 s_enable <= '1';
	 wait for 100 ns;
	 s_reset <= '1';
	 wait for 50 ns;
	 s_reset <= '0';
	 wait for 50 ns;
	 s_enable <= '0';
	 wait for 100 ns;
	 s_enable <= '1';
	 wait for 100 ns;
 end process;
 
 proc : process
 begin
	 s_clk <= '0';
	 wait for 50 ns;
	 s_clk <= '1';
	 wait for 50 ns;
 end process;
end Stimulus; 