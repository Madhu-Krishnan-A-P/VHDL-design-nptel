 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity AND_gate  is
  port (A, B: in std_logic; C: out std_logic);
end entity and_gate;

architecture Struct of and_gate is
  signal W1: std_logic;
begin
  -- component instances
  g1: NAND_2 port map (A => A, B => B, Y => W1);
  g2: NAND_2 port map (A => W1, B => W1, Y => C);
end Struct;
