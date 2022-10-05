-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(2 downto 0);
	      
			output_vector: out std_logic_vector(1 downto 0)
       	);
end entity;

architecture DutWrap of DUT is
   component Full_Sub is
     port(A, B, C: in std_logic;
         F_F: out std_logic;
			G_G: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Full_Sub 
			port map (
					-- order of inputs B A
					A => input_vector(2),
					B => input_vector(1),
					C => input_vector(0),
               -- order of output OUTPUT
					F_F => output_vector(0),
					G_G => output_vector(1));
end DutWrap;