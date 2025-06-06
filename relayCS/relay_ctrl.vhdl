library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity relay_ctrl  is
  port (A, B, C, D, E	: in std_logic;
		  F					: out std_logic);
end entity relay_ctrl;


architecture Struct of relay_ctrl is
  signal A0, C0, D0, E0, W1, W2, W3, W4, W5, W6: std_logic;
begin
  -- component instances
  ga: INVERTER port map (A => A, Y => A0);
  gc: INVERTER port map (A => C, Y => C0);
  gd: INVERTER port map (A => D, Y => D0);
  ge: INVERTER port map (A => E, Y => E0);
  
  g1: AND_2 port map (A => C0, B => E0, Y => W1);
  
  g2: AND_2 port map (A => A,  B => C0, Y => W2);
  g3: AND_2 port map (A => W2, B => D,  Y => W3);

  g6: AND_2 port map (A => A0, B => C,  Y => W4);
  g7: AND_2 port map (A => W4, B => E,  Y => W5);
  
  g8: OR_2  port map (A => W1,  B => W3, Y => W6);
  g9: OR_2  port map (A => W6,  B => W5, Y => F);
end Struct;
