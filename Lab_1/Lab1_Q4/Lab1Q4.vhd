library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Full_Sub  is
  port (A, B, C: in std_logic; F_F, G_G: out std_logic);
end entity Full_Sub;

architecture Struct of Full_Sub is
  signal A_B, B_B, C_C, D_D, E_E, T_T, S_S : std_logic;
begin
  -- component instances
  NAND1: NAND_2 port map (A => A, B => B, Y => B_B);
  NAND2: NAND_2 port map (A => A, B => B_B, Y => A_B);
  NAND3: NAND_2 port map (A => B_B, B => B, Y => C_C);
  NAND4: NAND_2 port map (A => A_B, B => C_C, Y => D_D);
  NAND5: NAND_2 port map (A => D_D, B => C, Y => E_E);
  NAND6: NAND_2 port map (A => D_D, B => E_E, Y => T_T);
  NAND7: NAND_2 port map (A => E_E, B => C, Y => S_S);
  NAND8: NAND_2 port map (A => T_T, B => S_S, Y => G_G);
  NAND9: NAND_2 port map (A => S_S, B => C_C, Y => F_F);
end Struct;