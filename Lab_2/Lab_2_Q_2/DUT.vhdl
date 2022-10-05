-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component DEMUX_2 is
     port(S_2, S_1, I_0: in std_logic;
         Y_3, Y_2, Y_1, Y_0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: DEMUX_2 
			port map (
					-- order of inputs B A
					S_2 => input_vector(2),
					S_1 => input_vector(1),
					I_0 => input_vector(0),
               -- order of output OUTPUT
					Y_3 => output_vector(0),
					Y_2 => output_vector(2),
					Y_1 => output_vector(1),
					Y_0 => output_vector(3));
end DutWrap;