-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(9 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	
component alu_beh is
  port (
    A	: in  std_logic_vector(7 downto 4);
	 B	: in  std_logic_vector(3 downto 0);
	 sel: in std_logic_vector(1 downto 0);
    op	: out std_logic_vector(7 downto 0)
  );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: alu_beh port map (
	  A    => input_vector(7 downto 4),
	  B    => input_vector(3 downto 0),
	  sel  => input_vector(9 downto 8),
     op    => output_vector(7 downto 0)
);

end DutWrap;

