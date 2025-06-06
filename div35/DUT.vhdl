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
	
component div35 is
  port (
    A : in  std_logic_vector(4 downto 0);
	 D : in std_logic;
    Y	: out std_logic
  );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: div35 port map (
	  D	 => input_vector(5),
	  A    => input_vector(4 downto 0),
	  Y	 => output_vector(0)
);

end DutWrap;

