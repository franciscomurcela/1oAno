library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Entidade sem portos
entity DrinksFSMTb is
end DrinksFSMTb;
architecture Stimulus of DrinksFSMTb is
-- Sinais para ligar às entradas da uut
signal s_C : std_logic;
signal s_V : std_logic;
signal s_clk : std_logic;
-- Sinal para ligar às saídas da uut
signal s_reset : std_logic;
signal s_Abrir : std_logic;
begin
-- Instanciação da Unit Under Test (UUT)
uut: entity work.DrinksFSM(Behavioral)
port map(clk => s_clk,
C => s_C,
V => s_V,
reset => s_reset,
Abrir => s_Abrir);
stim_proc : process
begin

wait for 100 ns;
s_C <= '1';
wait for 100 ns;
s_V <= '1';
wait for 100 ns;
s_V <= '1';
wait for 100 ns;
s_reset <= '1';
wait for 100 ns;
s_C <= '1';
wait for 100 ns;
s_C <= '1';
wait for 100 ns;
end process;
end Stimulus;
	