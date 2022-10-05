library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity shifter  is
  port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
			B : in  STD_LOGIC_VECTOR(2 downto 0);
			L : in std_logic;
			S : out  STD_LOGIC_VECTOR(7 downto 0));
end entity shifter;

architecture Struct of shifter is
	component mux  is
  port ( I : in  STD_LOGIC_VECTOR(1 downto 0);
			
			S : in std_logic;
			Y : out  STD_LOGIC);
end component mux;
	
	signal q,w,e,r:  std_logic_vector(7 downto 0);
			 
			 
	
			 
			 
begin
  -- component instances
  
  -- rev1
   rev1_bit : for i in 0 to 7 generate
  
	
	
	
	b1: mux port map(I(0) => a(i), I(1) => a(7-i), S => L, Y => q(i));
	
	
	
	end generate rev1_bit ;
	
	
  
  --n4
 
   n4_bit : for i in 0 to 7 generate
  
	lsb: if i < 4 generate
	
	b2: mux port map(I(0) => q(i), I(1) => q(i+4), S => b(2), Y => w(i));
	
	end generate lsb;
	
	msb: if i > 3 generate
	
	b2: mux port map(I(0) => q(i), I(1) => '0', S => b(2), Y => w(i));
	
	end generate msb;
	
	end generate n4_bit;
	
  
  -- n2
  
   n2_bit : for i in 0 to 7 generate
  
	lsb: if i < 6 generate
	
	b2: mux port map(I(0) => w(i), I(1) => w(i+2), S => b(1), Y => e(i));
	
	end generate lsb;
	
	msb: if i > 5 generate
	
	b2: mux port map(I(0) => w(i), I(1) => '0', S => b(1), Y => e(i));
	
	end generate msb;
	
	end generate n2_bit;
  
  -- n1
  
   n1_bit : for i in 0 to 7 generate
  
	lsb: if i < 7 generate
	
	b2: mux port map(I(0) => e(i), I(1) => e(i+1), S => b(0), Y => r(i));
	
	end generate lsb;
	
	msb: if i > 6 generate
	
	b2: mux port map(I(0) => e(i), I(1) => '0', S => b(0), Y => r(i));
	
	end generate msb;
	
	end generate n1_bit;
	
	--rev2
	rev2_bit : for i in 0 to 7 generate
  
	
	
	
	b1: mux port map(I(0) => r(i), I(1) => r(7-i), S => L, Y => S(i));
	
	
	
	end generate rev2_bit ;
  
  
  
end Struct; 