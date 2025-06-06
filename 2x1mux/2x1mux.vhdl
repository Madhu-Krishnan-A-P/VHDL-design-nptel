library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux_2  is
  port (in0, in1, S: in std_logic; Y: out std_logic);
end entity mux_2;


architecture Struct of mux_2 is
  signal W1, W2, W3: std_logic;
begin
  -- component instances
  g1: INVERTER port map (A => S, Y => W1);
  g2: AND_2 port map (A => in0, B => W1, Y => W2);
  g3: AND_2 port map (A => in1, B => S, Y => W3);
  g4: OR_2 port map (A => W2, B => W3, Y => Y);
end Struct;