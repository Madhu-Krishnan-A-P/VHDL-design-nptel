library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity decoder_4  is
  port (a 	: in std_logic_vector(1 downto 0);
		  en	: in std_logic;
		  Y	: out std_logic_vector(3 downto 0));
end entity decoder_4;


architecture Struct of decoder_4 is
  signal W0, W1, W3, W4, W5, W6: std_logic;
begin
  -- component instances
  g1: INVERTER port map (A => a(1), Y => W1);
  g2: INVERTER port map (A => a(0), Y => W0);
  
  g3: AND_2 port map (A => a(1), B => a(0), Y => W3);
  g4: AND_2 port map (A => a(1), B => W0,   Y => W4);
  g5: AND_2 port map (A => W1,   B => a(0), Y => W5);
  g6: AND_2 port map (A => W1,   B => W0,   Y => W6);
  
  g7: AND_2  port map (A => W3, B => en, Y => Y(3));
  g8: AND_2  port map (A => W4, B => en, Y => Y(2));
  g9: AND_2  port map (A => W5, B => en, Y => Y(1));
  g10: AND_2 port map (A => W6, B => en, Y => Y(0));
end Struct;