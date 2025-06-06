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


library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity addersub is
	port (a        : in  std_logic_vector(3 downto 0);  -- 4-bit input
        b         : in  std_logic_vector(3 downto 0);  -- 4-bit input
        M         : in  std_logic;                     -- 1-bit mode select
		  carryout  : out std_logic;                     -- 1-bit carry-out
        sum       : out std_logic_vector(3 downto 0)   -- 4-bit sum output
    );
	 
end entity addersub;

architecture Struct of addersub is
  signal c0, c1, c2, x0, x1, x2, x3: std_logic;
 begin
  g1: XOR_2 port map (A => M, B => b(0), Y => x0);
  g2: XOR_2 port map (A => M, B => b(1), Y => x1);
  g3: XOR_2 port map (A => M, B => b(2), Y => x2);
  g4: XOR_2 port map (A => M, B => b(3), Y => x3);
  
  FA1: entity work.fulladder port map (A => x0, B => a(0), Cin => M, S => sum(0), Cout => c0);
  FA2: entity work.fulladder port map (A => x1, B => a(1), Cin => c0, S => sum(1), Cout => c1);
  FA3: entity work.fulladder port map (A => x2, B => a(2), Cin => c1, S => sum(2), Cout => c2);
  FA4: entity work.fulladder port map (A => x3, B => a(3), Cin => c2, S => sum(3), Cout => carryout);

  end Struct;
 