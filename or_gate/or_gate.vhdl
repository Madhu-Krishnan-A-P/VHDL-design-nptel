 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity or_gate  is
  port (A, B: in std_logic; C: out std_logic);
end entity or_gate;

architecture Struct of or_gate is
  signal W1, W2, W3: std_logic;
begin
  -- component instances
  g1: NAND_2 port map (A => A, B => A, Y => W1);
  g2: NAND_2 port map (A => B, B => B, Y => W2);
  g4: NAND_2 port map (A => W1, B => W2, Y => C);
end Struct;
