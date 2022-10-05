library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux  is
  port ( I : in  STD_LOGIC_VECTOR(1 downto 0);
			
			S : in std_logic;
			Y : out  STD_LOGIC);
end entity mux;

architecture Struct of mux is
	
	
	signal X,Z,S_BAR : std_logic;
			 
			 
			 
begin
  -- component instances
   AND1 : AND_2 port map (A => I(1), B => S, Y => X);
	INV : INVERTER port map (A => S, Y => S_BAR);
	AND2 : AND_2 port map (A => S_BAR, B => I(0), Y => Z);
	OR1 : OR_2 port map (A => X, B => Z, Y => Y);
  
  

end Struct; 