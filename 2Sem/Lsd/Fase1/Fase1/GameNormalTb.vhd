library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Entidade sem portos
entity GameNormalTb is
end GameNormalTb;
architecture Stimulus of GameNormalTb is
-- Sinais para ligar às entradas da uut
signal s_clk : std_logic;
signal s_playerA : std_logic_vector(2 downto 0);
signal s_playerB : std_logic_vector(2 downto 0);
-- Sinal para ligar às saídas da uut
signal s_resetCounter : std_logic;
signal s_deucemode : std_logic;
signal s_gameWin : std_logic;
begin
-- Instanciação da Unit Under Test (UUT)
uut: entity work.GameNormal(Behavioral)
port map(clk => s_clk,
countPlayerA => s_playerA,
countPlayerB => s_playerB,
resetCounter => s_resetCounter,
deuceMode => s_deucemode,
gameWin => s_gameWin);

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
s_playerA <= "010";
s_playerB <= "001";
wait for 100 ns;
s_playerA <= "001";
s_playerB <= "011";
wait for 100 ns;
s_playerA <= "100";
s_playerB <= "100";
wait for 100 ns;
s_playerA <= "000";
s_playerB <= "001";
wait for 100 ns;
s_playerA <= "001";
s_playerB <= "000";
wait for 100 ns;
s_playerA <= "000";
s_playerB <= "001";
wait for 100 ns;
s_playerA <= "000";
s_playerB <= "010";
wait for 100 ns;
end process;
end Stimulus;
	