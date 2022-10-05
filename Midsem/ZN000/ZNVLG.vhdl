library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
  port (X, Y: in std_logic_vector(3 downto 0); Z,N,V,L,G: out std_logic);
end entity ZNVLG;

architecture Struct of ZNVLG is

component Add_Sub  is
  port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			B : in  STD_LOGIC_VECTOR(3 downto 0);
			M: in std_logic;
			S : out  STD_LOGIC_VECTOR(3 downto 0); Cout: out std_logic);

end component Add_sub;

signal  carry0,carry1, carry2, S3bar, S2bar, S1bar, S0bar : std_logic;
signal S , X1,X_BAR,X1_BAR,X2_BAR: std_logic_vector(3 downto 0);
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


Bar3 : INVERTER port map ( A => S(3) , Y => S3bar);
Bar2 : INVERTER port map ( A => S(2) , Y => S2bar);
Bar1 : INVERTER port map ( A => S(1) , Y => S1bar);
Bar0 : INVERTER port map ( A => S(0) , Y => S0bar);
AND1 : AND_4 port map ( A => S3bar, B => S2bar, C => S1bar, D => S0bar, Y => Z);
AND2 : AND_2 port map ( A => S(3) , B => '1', Y => N);
V <= '0';
L <= '0';
G <= '0';


end Struct; 
