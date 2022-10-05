library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
  port (X, Y: in std_logic_vector(3 downto 0); S: out std_logic_vector(3 downto 0));
end entity ZNVLG;

architecture Struct of ZNVLG is

component Add_Sub  is
  port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			B : in  STD_LOGIC_VECTOR(3 downto 0);
			M: in std_logic;
			S : out  STD_LOGIC_VECTOR(3 downto 0); Cout: out std_logic);

end component Add_sub;

signal  carry1, carry2,carry0 : std_logic;
signal  X1,X_BAR,X1_BAR,X2_BAR: std_logic_vector(3 downto 0);
begin
INV3 : INVERTER port map(A => X(3) , Y => X_BAR(3));
INV2 : INVERTER port map(A => X(2) , Y => X_BAR(2));
INV1 : INVERTER port map(A => X(1) , Y => X_BAR(1));
INV0 : INVERTER port map(A => X(0) , Y => X_BAR(0));
Adder0 : Add_sub port map (A => X_BAR , B => "0001" , M => '0', Cout => carry0, S => X1 );
Adder1 : Add_sub port map (A => X1 , B => Y , M => '0', Cout => carry1, S => X1_BAR );

INV8 : INVERTER port map(A => X1_BAR(3) , Y => X2_BAR(3));
INV7 : INVERTER port map(A => X1_BAR(2) , Y => X2_BAR(2));
INV6 : INVERTER port map(A => X1_BAR(1) , Y => X2_BAR(1));
INV5 : INVERTER port map(A => X1_BAR(0) , Y => X2_BAR(0));


Adder2 : Add_Sub port map (A => "0001" , B => X2_BAR , M => '0', Cout => carry2, S => S);

end Struct; 
