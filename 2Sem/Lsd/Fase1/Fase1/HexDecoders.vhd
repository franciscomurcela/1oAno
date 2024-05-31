library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HexDecoders is
	port(enable       : in  std_logic;
		  deuceMode    : in  std_logic;
		  countPlayerA : in  std_logic_vector(2 downto 0);
		  countPlayerB : in  std_logic_vector(2 downto 0);
		  decOutA0     : out std_logic_vector(6 downto 0);
		  decOutA1     : out std_logic_vector(6 downto 0);
		  decOutB0     : out std_logic_vector(6 downto 0);
		  decOutB1     : out std_logic_vector(6 downto 0));
end HexDecoders;

architecture Behavioral of HexDecoders is
begin
	process(enable, countPlayerA, countPlayerB, deuceMode)
	begin
		if (enable = '1') then
			if (deuceMode = '1') then
				if (countPlayerA > countPlayerB) then
					decOutB0 <= "1111111";
					decOutB1 <= "1111111";
					decOutA1 <= "0001000"; -- a
					decOutA0 <= "0100001"; -- d
				elsif (countPlayerB > countPlayerA) then
					decOutA0 <= "1111111";
					decOutA1 <= "1111111";
					decOutB1 <= "0001000"; -- a
					decOutB0 <= "0100001"; -- d
				else
					decOutA1 <= "1111111";
					decOutB1 <= "1111111";
					decOutA0 <= "0100001"; -- d
					decOutB0 <= "0100001"; -- d
				end if;
			else
				case countPlayerA is
					when "001" => decOutA1 <= "1000000"; decOutA0 <= "1000000"; -- 00
					when "010" => decOutA1 <= "1111001"; decOutA0 <= "0010010"; -- 15
					when "011" => decOutA1 <= "0110000"; decOutA0 <= "1000000"; -- 30
					when "100" => decOutA1 <= "0011001"; decOutA0 <= "1000000"; -- 40
					when others => decOutA1 <= "1111111"; decOutA0 <= "1111111";
				end case;
				
				case countPlayerB is
					when "001" => decOutB1 <= "1000000"; decOutB0 <= "1000000"; -- 00
					when "010" => decOutB1 <= "1111001"; decOutB0 <= "0010010"; -- 15
					when "011" => decOutB1 <= "0110000"; decOutB0 <= "1000000"; -- 30
					when "100" => decOutB1 <= "0011001"; decOutB0 <= "1000000"; -- 40
					when others => decOutB1 <= "1111111"; decOutB0 <= "1111111";
				end case;
			end if;
		else
			decOutA0 <= "1111111";
			decOutA1 <= "1111111";
			decOutB0 <= "1111111";
			decOutB1 <= "1111111";
		end if;
	end process;
end Behavioral;