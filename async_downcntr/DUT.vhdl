-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
	
component sync_downcntr is
  port (
    clk	: in  std_logic;
	 rst	: in  std_logic;
    q	: out std_logic_vector(2 downto 0)
  );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: sync_downcntr port map (
	  clk => input_vector(1),
	  rst => input_vector(0),
     q   => output_vector(2 downto 0)
);

end DutWrap;

