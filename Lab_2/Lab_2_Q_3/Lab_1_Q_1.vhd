library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DEMUX  is
  port (S, D: in std_logic; I_0, I_1: out std_logic);
end entity DEMUX;

architecture Struct of DEMUX is
  signal S_BAR : std_logic;
begin
  -- component instances
  INV1: INVERTER port map(A => S , Y => S_BAR);
  AND1: AND_2 port map ( A => S_BAR , B => D, Y => I_0);
  AND2: AND_2 port map (A => S, B => D, Y => I_1);
  
  
  
end Struct;