library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity priencoder  is
  port (A, B, C, D	: in std_logic;
		  V				: out std_logic;
		  Y				: out std_logic_vector(1 downto 0));
end entity priencoder;


architecture Struct of priencoder is
  signal B0, W1, W2, W3: std_logic;
begin
  -- component instances
  
  g1: OR_2 port map (A => A, B => B, Y => Y(1));
  
  g2: INVERTER port map (A => B, Y => B0);
  g3: AND_2 port map (A => B0, B => C, Y => W1);
  g4: OR_2 port map (A => A, B => W1, Y => Y(0));
  
  g5: OR_2 port map (A => A, B => B, Y => W2);
  g6: OR_2 port map (A => W2, B => C, Y => W3);
  g7: OR_2 port map (A => W3, B => D, Y => V);
end Struct;
