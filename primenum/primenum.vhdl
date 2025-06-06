library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity primenum  is
  port (A: in std_logic_vector(4 downto 0);
        Y: out std_logic);
end entity primenum;


architecture Struct of primenum is
  signal A0, A1, A2, A3, A4	: std_logic;						  -- NOT out of A(4) through A(0)
  signal M							: std_logic_vector(2 downto 0); -- Literal 1
  signal N							: std_logic_vector(2 downto 0); -- Literal 2
  signal P							: std_logic_vector(2 downto 0); -- Literal 3
  signal Q							: std_logic_vector(2 downto 0); -- Literal 4
  signal R							: std_logic_vector(2 downto 0); -- Literal 5
  signal S							: std_logic_vector(2 downto 0); -- Literal 6
  signal W							: std_logic_vector(3 downto 0); -- Literal OR gate wires
begin

  -- component instances
  g_inv_A0: INVERTER port map (A => A(0), Y => A0);
  g_inv_A1: INVERTER port map (A => A(1), Y => A1);
  g_inv_A2: INVERTER port map (A => A(2), Y => A2);
  g_inv_A3: INVERTER port map (A => A(3), Y => A3);
  g_inv_A4: INVERTER port map (A => A(4), Y => A4);
  
  g_and_L11: AND_2 port map (A => A4,   B => A3,   Y => M(2));
  g_and_L12: AND_2 port map (A => M(2), B => A2,   Y => M(1));
  g_and_L13: AND_2 port map (A => M(1), B => A(1), Y => M(0));
  
  g_and_L21: AND_2 port map (A => A4,   B => A2,   Y => N(2));
  g_and_L22: AND_2 port map (A => N(2), B => A(1), Y => N(1));
  g_and_L23: AND_2 port map (A => N(1), B => A(0), Y => N(0));
  
  g_and_L31: AND_2 port map (A => A4,   B => A3,   Y => P(2));
  g_and_L32: AND_2 port map (A => P(2), B => A(2), Y => P(1));
  g_and_L33: AND_2 port map (A => P(1), B => A(0), Y => P(0));
  
  g_and_L41: AND_2 port map (A => A(3), B => A(2), Y => Q(2));
  g_and_L42: AND_2 port map (A => Q(2), B => A1,   Y => Q(1));
  g_and_L43: AND_2 port map (A => Q(1), B => A(0), Y => Q(0));
  
  g_and_L51: AND_2 port map (A => A(4), B => A(2), Y => R(2));
  g_and_L52: AND_2 port map (A => R(2), B => A(1), Y => R(1));
  g_and_L53: AND_2 port map (A => R(1), B => A(0), Y => R(0));
  
  g_and_L61: AND_2 port map (A => A(4), B => A3,   Y => S(2));
  g_and_L62: AND_2 port map (A => S(2), B => A2,   Y => S(1));
  g_and_L63: AND_2 port map (A => S(1), B => A(0), Y => S(0));
  
  g_or_1: OR_2 port map (A => M(0), B => N(0),   Y => W(3));
  g_or_2: OR_2 port map (A => W(3), B => P(0),   Y => W(2));
  g_or_3: OR_2 port map (A => W(2), B => Q(0),   Y => W(1));
  g_or_4: OR_2 port map (A => W(1), B => R(0),   Y => W(0));
  g_or_5: OR_2 port map (A => W(0), B => S(0),   Y => Y);
  
end Struct;
