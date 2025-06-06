-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	
component mux_4 is
  port (
    inp : in std_logic_vector(3 downto 0);
	 s1, s0 : in  std_logic;
    Y   : out std_logic
  );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux_4 port map (
	  inp(3)    => input_vector(5),
     inp(2)    => input_vector(4),
     inp(1)    => input_vector(3),
     inp(0)    => input_vector(2),
     s1        => input_vector(1),
	  s0        => input_vector(0),
	  Y         => output_vector(0)
   );

end DutWrap;

