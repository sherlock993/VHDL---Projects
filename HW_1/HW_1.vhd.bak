library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Fibo  is
  port (x1, x2, x3, x0: in std_logic; y: out std_logic);
end entity Fibo;

architecture Struct of Fibo is
  signal x3_BAR, x2_BAR, x1_BAR, x0_BAR, O_1, O_2, O_3 : std_logic;
begin
  -- component instances
  INV1: INVERTER port map(A => x3 , Y => x3_BAR);
  INV2: INVERTER port map(A => x2 , Y => x2_BAR);
  INV3: INVERTER port map(A => x1 , Y => x1_BAR);
  INV4: INVERTER port map(A => x0 , Y => x0_BAR);
  
  AND1: AND_2 port map ( A => x3_BAR , B => x2_BAR, Y => O_1);
  AND2: AND_3 port map (A => x2, B => x1_BAR, C => x0, Y => O_2);
  AND3: AND_3 port map (A => x2_BAR, B => x1_BAR, C => x0_BAR, Y => O_3);
  OR_fin: OR_3 port map (A => O_1, B => O_2, C => O_3, Y => y);
  
  
  
end Struct;