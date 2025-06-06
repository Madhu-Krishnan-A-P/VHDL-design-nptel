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




library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux_4 is
  port (inp : in  std_logic_vector(3 downto 0);  -- 4-bit input
  s   		: in std_logic_vector(1 downto 0);  -- 4-bit input
  Yout      : out std_logic);
end entity mux_4;

architecture Struct of mux_4 is
  signal W0, W1: std_logic;
 begin
   -- component instances

mux1: entity work.mux_2 port map (in0 => inp(0), in1 => inp(1), S => s(0), Y => W0);
mux2: entity work.mux_2 port map (in0 => inp(2), in1 => inp(3), S => s(0), Y => W1);
mux3: entity work.mux_2 port map (in0 => W0, in1 => W1, S => s(1), Y => Yout);

end Struct;



library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux_4bit is
  port (d : in  std_logic_vector(3 downto 0);
  c       : in  std_logic_vector(3 downto 0);
  b       : in  std_logic_vector(3 downto 0);
  a       : in  std_logic_vector(3 downto 0);
  s       : in  std_logic_vector(1 downto 0);
  Y		 : out std_logic_vector(3 downto 0)
  );
end entity mux_4bit;

architecture Struct of mux_4bit is
 begin
   -- component instances

mux3: entity work.mux_4 port map (inp(3) => d(3), inp(2) => c(3), inp(1) => b(3), inp(0) => a(3), s => s, Yout => Y(3));
mux2: entity work.mux_4 port map (inp(3) => d(2), inp(2) => c(2), inp(1) => b(2), inp(0) => a(2), s => s, Yout => Y(2));
mux1: entity work.mux_4 port map (inp(3) => d(1), inp(2) => c(1), inp(1) => b(1), inp(0) => a(1), s => s, Yout => Y(1));
mux0: entity work.mux_4 port map (inp(3) => d(0), inp(2) => c(0), inp(1) => b(0), inp(0) => a(0), s => s, Yout => Y(0));

end Struct;