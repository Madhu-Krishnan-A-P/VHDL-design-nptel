 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity fulladder  is
  port (A, B, Cin: in std_logic; S, Cout: out std_logic);
end entity fulladder;

architecture Struct of fulladder is
  signal W1, W2, W3, W4, W5, W6, W7: std_logic;
begin
  -- component instances
  g1: NAND_2 port map (A => A, B => B, Y => W1);
  g2: NAND_2 port map (A => A, B => W1, Y => W2);
  g3: NAND_2 port map (A => W1, B => B, Y => W3);
  g4: NAND_2 port map (A => W2, B => W3, Y => W4);
  g5: NAND_2 port map (A => W4, B => Cin, Y => W5);  
  g6: NAND_2 port map (A => W4, B => W5, Y => W6);
  g7: NAND_2 port map (A => W5, B => Cin, Y => W7);
  g8: NAND_2 port map (A => W6, B => W7, Y => S);
  g9: NAND_2 port map (A => W5, B => W1, Y => Cout);
end Struct;
