library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity div35  is
  port (A: in std_logic_vector(4 downto 0);
		  D: in std_logic;
        Y: out std_logic);
end entity div35;


architecture Struct of div35 is
  signal A0, A1, A2, A3, A4, D0	: std_logic;  -- NOT out of A(4) through A(0) and D
  signal M		: std_logic_vector(9 downto 0); -- Literal 1 and 2
  signal N		: std_logic_vector(8 downto 0); -- Literal 3 and 4
  signal P		: std_logic_vector(8 downto 0); -- Literal 5 and 6
  signal Q		: std_logic_vector(9 downto 0); -- Literal 7 and 8
  signal R		: std_logic_vector(9 downto 0); -- Literal 9 and 10
  signal S		: std_logic_vector(9 downto 0); -- Literal 11 and 12
  signal T		: std_logic_vector(9 downto 0); -- Literal 13 and 14
  
  signal W		: std_logic_vector(11 downto 0); -- OR gate output wires
begin

  -- component instances
  g_inv_A0: INVERTER port map (A => A(0), Y => A0);
  g_inv_A1: INVERTER port map (A => A(1), Y => A1);
  g_inv_A2: INVERTER port map (A => A(2), Y => A2);
  g_inv_A3: INVERTER port map (A => A(3), Y => A3);
  g_inv_A4: INVERTER port map (A => A(4), Y => A4);
  g_inv_D : INVERTER port map (A => D,    Y => D0);
  
  g_and_L11: AND_2 port map (A => D0,   B => A4,   Y => M(9));
  g_and_L12: AND_2 port map (A => M(9), B => A3,   Y => M(8));
  g_and_L13: AND_2 port map (A => M(8), B => A(2), Y => M(7));
  g_and_L14: AND_2 port map (A => M(7), B => A1,   Y => M(6));
  g_and_L15: AND_2 port map (A => M(6), B => A(0), Y => M(5));
  
  g_and_L21: AND_2 port map (A => D0,   B => A4,   Y => M(4));
  g_and_L22: AND_2 port map (A => M(4), B => A(3), Y => M(3));
  g_and_L23: AND_2 port map (A => M(3), B => A2,   Y => M(2));
  g_and_L24: AND_2 port map (A => M(2), B => A(1), Y => M(1));
  g_and_L25: AND_2 port map (A => M(1), B => A0,   Y => M(0));
  
  g_and_L31: AND_2 port map (A => A4,   B => A(3), Y => N(8));
  g_and_L32: AND_2 port map (A => N(8), B => A(2), Y => N(7));
  g_and_L33: AND_2 port map (A => N(7), B => A(1), Y => N(6));
  g_and_L34: AND_2 port map (A => N(6), B => A(0), Y => N(5));

  g_and_L41: AND_2 port map (A => D0,   B => A(4), Y => N(4));
  g_and_L42: AND_2 port map (A => N(4), B => A3,   Y => N(3));
  g_and_L43: AND_2 port map (A => N(3), B => A(2), Y => N(2));
  g_and_L44: AND_2 port map (A => N(2), B => A1,   Y => N(1));
  g_and_L45: AND_2 port map (A => N(1), B => A0,   Y => N(0));
  
  g_and_L51: AND_2 port map (A => D0,   B => A(4), Y => P(8));
  g_and_L52: AND_2 port map (A => P(8), B => A(3), Y => P(7));
  g_and_L53: AND_2 port map (A => P(7), B => A2,   Y => P(6));
  g_and_L54: AND_2 port map (A => P(6), B => A1,   Y => P(5));
  g_and_L55: AND_2 port map (A => P(5), B => A(0), Y => P(4));

  g_and_L61: AND_2 port map (A => A(4), B => A(3), Y => P(3));
  g_and_L62: AND_2 port map (A => P(3), B => A(2), Y => P(2));
  g_and_L63: AND_2 port map (A => P(2), B => A(1), Y => P(1));
  g_and_L64: AND_2 port map (A => P(1), B => A0,   Y => P(0));
  
  g_and_L71: AND_2 port map (A => D,    B => A4,   Y => Q(9));
  g_and_L72: AND_2 port map (A => Q(9), B => A3,   Y => Q(8));
  g_and_L73: AND_2 port map (A => Q(8), B => A2,   Y => Q(7));
  g_and_L74: AND_2 port map (A => Q(7), B => A(1), Y => Q(6));
  g_and_L75: AND_2 port map (A => Q(6), B => A(0), Y => Q(5));
  
  g_and_L81: AND_2 port map (A => D,    B => A4,   Y => Q(4));
  g_and_L82: AND_2 port map (A => Q(4), B => A3,   Y => Q(3));
  g_and_L83: AND_2 port map (A => Q(3), B => A(2), Y => Q(2));
  g_and_L84: AND_2 port map (A => Q(2), B => A(1), Y => Q(1));
  g_and_L85: AND_2 port map (A => Q(1), B => A0,   Y => Q(0));

  g_and_L91: AND_2 port map (A => D,    B => A4,   Y => R(9));
  g_and_L92: AND_2 port map (A => R(9), B => A(3), Y => R(8));
  g_and_L93: AND_2 port map (A => R(8), B => A2,   Y => R(7));
  g_and_L94: AND_2 port map (A => R(7), B => A1,   Y => R(6));
  g_and_L95: AND_2 port map (A => R(6), B => A(0), Y => R(5));
  
  g_and_L101: AND_2 port map (A => D,    B => A4,   Y => R(4));
  g_and_L102: AND_2 port map (A => R(4), B => A(3), Y => R(3));
  g_and_L103: AND_2 port map (A => R(3), B => A(2), Y => R(2));
  g_and_L104: AND_2 port map (A => R(2), B => A1,   Y => R(1));
  g_and_L105: AND_2 port map (A => R(1), B => A0,   Y => R(0));
  
  g_and_L111: AND_2 port map (A => D,    B => A(4), Y => S(9));
  g_and_L112: AND_2 port map (A => S(9), B => A3,   Y => S(8));
  g_and_L113: AND_2 port map (A => S(8), B => A2,   Y => S(7));
  g_and_L114: AND_2 port map (A => S(7), B => A(1), Y => S(6));
  g_and_L115: AND_2 port map (A => S(6), B => A0,   Y => S(5));
  
  g_and_L121: AND_2 port map (A => D,    B => A(4), Y => S(4));
  g_and_L122: AND_2 port map (A => S(4), B => A3,   Y => S(3));
  g_and_L123: AND_2 port map (A => S(3), B => A(2), Y => S(2));
  g_and_L124: AND_2 port map (A => S(2), B => A1,   Y => S(1));
  g_and_L125: AND_2 port map (A => S(1), B => A(0), Y => S(0));
  
  g_and_L131: AND_2 port map (A => D,    B => A(4), Y => T(9));
  g_and_L132: AND_2 port map (A => T(9), B => A(3), Y => T(8));
  g_and_L133: AND_2 port map (A => T(8), B => A2,   Y => T(7));
  g_and_L134: AND_2 port map (A => T(7), B => A1,   Y => T(6));
  g_and_L135: AND_2 port map (A => T(6), B => A0,   Y => T(5));
  
  g_and_L141: AND_2 port map (A => D,    B => A(4), Y => T(4));
  g_and_L142: AND_2 port map (A => T(4), B => A(3), Y => T(3));
  g_and_L143: AND_2 port map (A => T(3), B => A2,   Y => T(2));
  g_and_L144: AND_2 port map (A => T(2), B => A(1), Y => T(1));
  g_and_L145: AND_2 port map (A => T(1), B => A(0), Y => T(0));
  
  g_or_1	: OR_2 port map (A => M(5),  B => M(0), Y => W(11));
  g_or_2	: OR_2 port map (A => W(11), B => N(5), Y => W(10));
  g_or_3	: OR_2 port map (A => W(10), B => N(0), Y => W(9));
  g_or_4	: OR_2 port map (A => W(9),  B => P(4), Y => W(8));
  g_or_5	: OR_2 port map (A => W(8),  B => P(0), Y => W(7));
  g_or_6	: OR_2 port map (A => W(7),  B => Q(5), Y => W(6));
  g_or_7	: OR_2 port map (A => W(6),  B => Q(0), Y => W(5));
  g_or_8	: OR_2 port map (A => W(5),  B => R(5), Y => W(4));
  g_or_9	: OR_2 port map (A => W(4),  B => R(0), Y => W(3));
  g_or_10: OR_2 port map (A => W(3),  B => S(5), Y => W(2));
  g_or_11: OR_2 port map (A => W(2),  B => S(0), Y => W(1));
  g_or_12: OR_2 port map (A => W(1),  B => T(5), Y => W(0));
  g_or_13: OR_2 port map (A => W(0),  B => T(0), Y => Y);
  
  
end Struct;
