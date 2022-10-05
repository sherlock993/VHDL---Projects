library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XNOR_Gate  is
  port (A, B: in std_logic; OUTPUT: out std_logic);
end entity XNOR_Gate;

architecture Struct of XNOR_Gate is
  signal A_BAR, B_BAR, C_BAR, D_BAR : std_logic;
begin
  -- component instances
  NAND1: NAND_2 port map (A => A, B => B, Y => A_BAR );
  NAND2: NAND_2 port map (A => A, B => A, Y => B_BAR);
  NAND3: NAND_2 port map (A => B, B => B, Y => C_BAR);
  NAND4: NAND_2 port map (A => B_BAR, B => C_BAR, Y => D_BAR);
  
   -- final XNOR
  NAND5: NAND_2 port map (A => A_BAR, B => D_BAR, Y => OUTPUT);
 
  
end Struct;