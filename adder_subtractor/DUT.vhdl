-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
	
component addersub is
  port (
    a, b       : in  std_logic_vector(3 downto 0);
    M          : in  std_logic;  -- Mode: 0 for add, 1 for subtract
    sum        : out std_logic_vector(3 downto 0);
    carryout   : out std_logic
  );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: addersub port map (
     a    => input_vector(8 downto 5),
     b    => input_vector(4 downto 1),
     M    => input_vector(0),
	  carryout => output_vector(4),
     sum    => output_vector(3 downto 0)
   );

end DutWrap;

