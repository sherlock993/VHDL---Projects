library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_Sub  is
  port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			B : in  STD_LOGIC_VECTOR(3 downto 0);
			
			OUTPUT : out  STD_LOGIC_VECTOR(4 downto 0));
end entity BCD_Sub;

architecture Struct of BCD_Sub is
	component Add_Sub  is
  port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			B : in  STD_LOGIC_VECTOR(3 downto 0);
			M: in std_logic;
			S : out  STD_LOGIC_VECTOR(3 downto 0); Cout: out std_logic);
end component Add_sub;
	
	
	
	signal X,Y,Z,Cout : std_logic_vector(3 downto 0);
			 
			 
	signal is_Gt_9, final_m, c_bar:  std_logic;
			 
			 
begin
  -- component instances
  -- Adder Subtractors 
  
  Box1: Add_Sub port map ( A => "1010", B => B, S => X, M => '1',  Cout => Cout(1));
  Box2: Add_Sub port map ( A => A, B => X, S => Y, M => '0', Cout => Cout(2));
  
  
  -- Logic Gates
  -- GT_9 is detecting is the entered number id greater than 9
  
  GT9 : GT_9 port map ( A => Y(3), B => Y(2), C => Y(1), D => Y(0), Y => is_GT_9 );
  OR1: OR_2 port map ( A => Cout(2), B => is_GT_9, Y => final_m);
  Box3: Add_Sub port map ( A => Y, B(3) => '0', B(2) => final_m, B(1) => final_m, B(0) => '0', S => Z, M => '0', Cout => Cout(3));
  
  NOR1 : NOR_2 port map ( A => Cout(3), B => Cout(2), Y => c_bar);
  
  Box4: Add_Sub port map ( A(3) => c_bar, A(2) => '0', A(1) => c_bar, A(0) => '0', B => Z, M => c_bar,  Cout => OUTPUT(4), S(3) => OUTPUT(3), S(2) => OUTPUT(2), S(1) => OUTPUT(1), S(0) => OUTPUT(0));
  

  
end Struct; 