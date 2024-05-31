library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Fase1 is
	port(CLOCK_50 : in  std_logic;
		  KEY      : in  std_logic_vector(1 downto 0);
		  HEX4     : out std_logic_vector(6 downto 0);
		  HEX5     : out std_logic_vector(6 downto 0);
		  HEX6     : out std_logic_vector(6 downto 0);
		  HEX7     : out std_logic_vector(6 downto 0));
end Fase1;

architecture Shell of Fase1 is
	signal s_deuceMode       : std_logic := '0';
	signal s_resetCounter    : std_logic := '0';
	signal s_gameWin         : std_logic := '0';
	signal s_gameWinner      : std_logic_vector(1 downto 0);
	signal debouncedKey0     : std_logic;
	signal debouncedKey1     : std_logic;
	signal counterOut0       : std_logic_vector(2 downto 0);
	signal counterOut1       : std_logic_vector(2 downto 0);
begin
	debounce_KEY0: entity work.DebounceUnit(Behavioral)
							generic map (kHzClkFreq     => 50000,
											 mSecMinInWidth => 50,
											 inPolarity     => '1',
											 outPolarity    => '0')
						port map(refClk    => CLOCK_50,
									dirtyIn   => KEY(0),
									pulsedOut => debouncedKey0);
	
	debounce_KEY1: entity work.DebounceUnit(Behavioral)
							generic map (kHzClkFreq     => 50000,
											 mSecMinInWidth => 50,
											 inPolarity     => '1',
											 outPolarity    => '0')
							port map(refClk    => CLOCK_50,
										dirtyIn   => KEY(1),
										pulsedOut => debouncedKey1);	
										
	counter0  : entity work.CounterMod8(Behavioral)
							port map(clk    => CLOCK_50,
										enable => debouncedKey0,
										reset  => s_resetCounter,
										cout   => counterOut0);
	
	counter1  : entity work.CounterMod8(Behavioral)
							port map(clk    => CLOCK_50,
							         enable => debouncedKey1,
										reset  => s_resetCounter,
										cout   => counterOut1);

	gameNormal : entity work.GameNormal(Behavioral)
							port map(clk          => CLOCK_50,
										countPlayerA => counterOut0,
										countPlayerB => counterOut1,
										resetCounter => s_resetCounter,
										deuceMode    => s_deuceMode,
										gameWin      => s_gameWin,
										gameWinner   => s_gameWinner);
										
	hexDecoder : entity work.HexDecoders(Behavioral)
							port map(enable       => '1',
										deuceMode    => s_deuceMode,
										countPlayerA => counterOut0,
										countPlayerB => counterOut1,
										decOutA0     => HEX4,
										decOutA1     => HEX5,
										decOutB0     => HEX6,
										decOutB1     => HEX7);
end Shell;