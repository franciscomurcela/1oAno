library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Entidade sem portos
entity Fase1_Tb is
end Fase1_Tb;
architecture Stimulus of SeqDetFSMTB is
-- Sinais para ligar às entradas da uut
signal s_Xin : std_logic;
signal s_clk : std_logic;
-- Sinal para ligar às saídas da uut
signal s_reset : std_logic;
signal s_Yout : std_logic;
begin
-- Instanciação da Unit Under Test (UUT)
uut: entity work.SeqDetFSM(MealyArch)
port map(clk => s_clk,
Xin => s_Xin,
reset => s_reset,
Yout => s_Yout);

clk_proc : process
begin 
s_clk <= '1';
wait for 50 ns;
s_clk <= '0';
wait for 50 ns;
end process;

stim_proc : process
begin

wait for 100 ns;
s_Xin <= '1';
wait for 100 ns;
s_Xin <= '0';
wait for 100 ns;
s_Xin <= '0';
wait for 100 ns;
s_Xin <= '0';
wait for 100 ns;
s_Xin <= '1';
wait for 100 ns;
s_Xin <= '0';
wait for 100 ns;
s_Xin <= '0';
wait for 100 ns;
s_Xin <= '1';
wait for 100 ns;
end process;
end Stimulus;