 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity xor_gate  is
  port (A, B: in std_logic; C: out std_logic);
end entity xor_gate;

architecture Struct of xor_gate is
  signal W1, W2, W3: std_logic;
begin
  -- component instances
  g1: NAND_2 port map (A => A, B => B, Y => W1);
  g2: NAND_2 port map (A => A, B => W1, Y => W2);
  g3: NAND_2 port map (A => B, B => W1, Y => W3);
  g4: NAND_2 port map (A => W2, B => W3, Y => C);
end Struct;
