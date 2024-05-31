library ieee;
use ieee.std_logic_1164.all; 

entity mux2to1 is
  port (SW : in std_logic;
     LEDG : out std_logic); 
end mux2to1;

architecture behaviour of mux2to1 is 
begin
  process (w0, w1, s)
  begin
    if s = ‘0’ then
      f <= w0;
    else
      f <= w1;
    end if;
  end process;
end behaviour;