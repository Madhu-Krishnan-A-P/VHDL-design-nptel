library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity bitreverse  is
  port (	A : in std_logic_vector (7 downto 0);
			L : in std_logic;
			S : out std_logic_vector (7 downto 0));
end entity bitreverse;


architecture Struct of bitreverse is
  signal W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, W14, W15, W16, L0 : std_logic;
begin
  -- component instances
  g1: INVERTER port map (A => L, Y => L0);
  
  g2: AND_2 port map (A => A(0), B => L0, Y => W1  );
  g3: AND_2 port map (A => A(7), B => L,  Y => W2  );
  g4: OR_2  port map (A => W1,   B => W2, Y => S(0));
  
  g5: AND_2 port map (A => A(1), B => L0, Y => W3  );
  g6: AND_2 port map (A => A(6), B => L,  Y => W4  );
  g7: OR_2  port map (A => W3,   B => W4, Y => S(1));
  
  g8: AND_2 port map (A => A(2), B => L0, Y => W5  );
  g9: AND_2 port map (A => A(5), B => L,  Y => W6  );
  g10: OR_2  port map (A => W5,   B => W6, Y => S(2));
  
  g11: AND_2 port map (A => A(3), B => L0, Y => W7  );
  g12: AND_2 port map (A => A(4), B => L,  Y => W8  );
  g13: OR_2  port map (A => W7,   B => W8, Y => S(3));
  
  g14: AND_2 port map (A => A(4), B => L0, Y => W9  );
  g15: AND_2 port map (A => A(3), B => L,  Y => W10 );
  g16: OR_2  port map (A => W9,   B => W10,Y => S(4));
  
  g17: AND_2 port map (A => A(5), B => L0, Y => W11 );
  g18: AND_2 port map (A => A(2), B => L,  Y => W12 );
  g19: OR_2  port map (A => W11,  B => W12,Y => S(5));
  
  g20: AND_2 port map (A => A(6), B => L0, Y => W13 );
  g21: AND_2 port map (A => A(1), B => L,  Y => W14 );
  g22: OR_2  port map (A => W13,  B => W14,Y => S(6));
  
  g23: AND_2 port map (A => A(7), B => L0, Y => W15 );
  g24: AND_2 port map (A => A(0), B => L,  Y => W16 );
  g25: OR_2  port map (A => W15,  B => W16,Y => S(7));
end Struct;

-------------------------------------------------------------------
-------------------------------------------------------------------

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

-------------------------------------------------------------------
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity shift_4 is
  port ( A : in std_logic_vector (7 downto 0);
			B2: in std_logic;
			S : out std_logic_vector (7 downto 0)
			);
end entity shift_4;

architecture Struct of shift_4 is
begin
mux7: entity work.mux_2 port map ( in0 => A(7), in1 => '0',  S => B2, Y => S(7));
mux6: entity work.mux_2 port map ( in0 => A(6), in1 => '0',  S => B2, Y => S(6));
mux5: entity work.mux_2 port map ( in0 => A(5), in1 => '0',  S => B2, Y => S(5));
mux4: entity work.mux_2 port map ( in0 => A(4), in1 => '0',  S => B2, Y => S(4));
mux3: entity work.mux_2 port map ( in0 => A(3), in1 => A(7), S => B2, Y => S(3));
mux2: entity work.mux_2 port map ( in0 => A(2), in1 => A(6), S => B2, Y => S(2));
mux1: entity work.mux_2 port map ( in0 => A(1), in1 => A(5), S => B2, Y => S(1));
mux0: entity work.mux_2 port map ( in0 => A(0), in1 => A(4), S => B2, Y => S(0));
end Struct;

-------------------------------------------------------------------
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity shift_2 is
  port ( A : in std_logic_vector (7 downto 0);
			B1: in std_logic;
			S : out std_logic_vector (7 downto 0)
			);
end entity shift_2;

architecture Struct of shift_2 is
begin
mux7: entity work.mux_2 port map ( in0 => A(7), in1 => '0',  S => B1, Y => S(7));
mux6: entity work.mux_2 port map ( in0 => A(6), in1 => '0',  S => B1, Y => S(6));
mux5: entity work.mux_2 port map ( in0 => A(5), in1 => A(7), S => B1, Y => S(5));
mux4: entity work.mux_2 port map ( in0 => A(4), in1 => A(6), S => B1, Y => S(4));
mux3: entity work.mux_2 port map ( in0 => A(3), in1 => A(5), S => B1, Y => S(3));
mux2: entity work.mux_2 port map ( in0 => A(2), in1 => A(4), S => B1, Y => S(2));
mux1: entity work.mux_2 port map ( in0 => A(1), in1 => A(3), S => B1, Y => S(1));
mux0: entity work.mux_2 port map ( in0 => A(0), in1 => A(2), S => B1, Y => S(0));
end Struct;


-------------------------------------------------------------------
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity shift_1 is
  port ( A : in std_logic_vector (7 downto 0);
			B0: in std_logic;
			S : out std_logic_vector (7 downto 0)
			);
end entity shift_1;

architecture Struct of shift_1 is
begin
mux7: entity work.mux_2 port map ( in0 => A(7), in1 => '0',  S => B0, Y => S(7));
mux6: entity work.mux_2 port map ( in0 => A(6), in1 => A(7), S => B0, Y => S(6));
mux5: entity work.mux_2 port map ( in0 => A(5), in1 => A(6), S => B0, Y => S(5));
mux4: entity work.mux_2 port map ( in0 => A(4), in1 => A(5), S => B0, Y => S(4));
mux3: entity work.mux_2 port map ( in0 => A(3), in1 => A(4), S => B0, Y => S(3));
mux2: entity work.mux_2 port map ( in0 => A(2), in1 => A(3), S => B0, Y => S(2));
mux1: entity work.mux_2 port map ( in0 => A(1), in1 => A(2), S => B0, Y => S(1));
mux0: entity work.mux_2 port map ( in0 => A(0), in1 => A(1), S => B0, Y => S(0));
end Struct;

-------------------------------------------------------------------
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity barrelshift is
  port ( A : in std_logic_vector (7 downto 0);
			B : in std_logic_vector (2 downto 0);
		   L : in std_logic;
			S : out std_logic_vector (7 downto 0)
			);
end entity barrelshift;


architecture Struct of barrelshift is
  signal P, Q, R, U : std_logic_vector(7 downto 0);
begin

bitreverse_1 : entity work.bitreverse port map (A => A, L => L, S => P);
shifter4     : entity work.shift_4 port map (A => P, B2 => B(2),S => Q);
shifter2     : entity work.shift_2 port map (A => Q, B1 => B(1),S => R);
shifter1     : entity work.shift_1 port map (A => R, B0 => B(0),S => U);
bitreverse_2 : entity work.bitreverse port map (A => U, L => L, S => S);

end Struct;