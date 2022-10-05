-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component DEMUX_3 is
     port(A_3, A_2, A_1, A_0, S_0, S_1: in std_logic;
         Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: DEMUX_3 
			port map (
					-- order of inputs B A
					A_3 => input_vector(5),
					A_2 => input_vector(4),
					A_1 => input_vector(3),
					A_0 => input_vector(2),
					S_0 => input_vector(1),
					S_1 => input_vector(0),
               -- order of output OUTPUT
					Y15 => output_vector(15),
					Y14 => output_vector(14),
					Y13 => output_vector(13),
					Y12 => output_vector(12),
					Y11 => output_vector(11),
					Y10 => output_vector(10),
					Y9 => output_vector(9),
					Y8 => output_vector(8),
					Y7 => output_vector(7),
					Y6 => output_vector(6),
					Y5 => output_vector(5),
					Y4 => output_vector(4),
					Y3 => output_vector(3),
					Y2 => output_vector(2),
					Y1 => output_vector(1),
					Y0 => output_vector(0)
					);
end DutWrap;