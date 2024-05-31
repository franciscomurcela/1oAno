library ieee;
use ieee.std_logic_1164.all; 

entity mux2to1 is
  port (import : in std_logic_vector(2 downto 0);
     LEDG : out std_logic(1 downto 0); 
	  
end mux2to1;
architecture Behavioral of Mux2_1 is
begin
	process (sel, import0, import1)
		begin
			case  sel="0" is
			when "0" => muxOut <= import0,
			when "1" => muxOut <= import1,
			when others => muxOut <= "x",
		end case;
	end process;
end Behavioral;