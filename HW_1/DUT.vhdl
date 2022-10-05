-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
   component Add_Sub is
     port( A : in  STD_LOGIC_VECTOR(3 downto 0);
			  B : in  STD_LOGIC_VECTOR(3 downto 0);
			  M : in std_logic;
			  S : out  STD_LOGIC_VECTOR(3 downto 0); Cout: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Add_Sub 
			port map (
					-- order of inputs B A
					A(3) => input_vector(8),
					A(2) => input_vector(7),
					A(1) => input_vector(6),
					A(0) => input_vector(5),
					B(3) => input_vector(4),
					B(2) => input_vector(3),
					B(1) => input_vector(2),
					B(0) => input_vector(1),
					  M  => input_vector(0),
               -- order of output OUTPUT
					S(3) => output_vector(3),
					S(2) => output_vector(2),
					S(1) => output_vector(1),
					S(0) => output_vector(0),
					Cout => output_vector(4));
end DutWrap;