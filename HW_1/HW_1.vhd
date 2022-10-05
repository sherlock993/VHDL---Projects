library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Add_Sub  is
  port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			B : in  STD_LOGIC_VECTOR(3 downto 0);
			M: in std_logic;
			S : out  STD_LOGIC_VECTOR(3 downto 0); Cout: out std_logic);
end entity Add_sub;

architecture Struct of Add_Sub is
	component fulladder is
		port(A, B, Cin: in std_logic;
			S, Cout: out std_logic);
	end component fulladder;
	
	for all: fulladder
		use entity work.fulladder(trivial);
		
  signal x3, x2, x1, x0, CO_1, CO_2, CO_3 : std_logic;
begin
  -- component instances
  -- XOR Gates
  
  XOR0: XOR_2 port map ( A => B(0) , B => M, Y => X0);
  XOR1: XOR_2 port map ( A => B(1) , B => M, Y => X1);
  XOR2: XOR_2 port map ( A => B(2) , B => M, Y => X2);
  XOR3: XOR_2 port map ( A => B(3) , B => M, Y => X3);
 
 -- Full Adders 
 
  FA0: fulladder port map ( A => A(0) , B => x0 , Cin => M , S => S(0) , Cout => Co_1);
  FA1: fulladder port map ( A => A(1) , B => x1 , Cin => Co_1 , S => S(1) , Cout => Co_2);
  FA2: fulladder port map ( A => A(2) , B => x2 , Cin => Co_2 , S => S(2) , Cout => Co_3);
  FA3: fulladder port map ( A => A(3) , B => x3 , Cin => Co_3 , S => S(3) , Cout => Cout);
   
  
end Struct;