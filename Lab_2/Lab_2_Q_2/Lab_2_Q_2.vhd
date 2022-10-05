library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DEMUX_2  is
  port (I_0, S_2, S_1: in std_logic; Y_3, Y_2, Y_1, Y_0: out std_logic);
end entity Demux_2;

architecture Struct of DEMUX_2 is

component DEMUX  is
  port (S, D: in std_logic; I_0, I_1: out std_logic);
end component DEMUX;
  signal X_0, X_1 : std_logic;
begin
  -- component instances
  Demux_1: DEMUX port map (S => S_1 , D => I_0, I_0 => X_0, I_1 => X_1);
  Demux_2: DEMUX port map ( S => S_2 , D => X_0, I_0 => Y_3, I_1 => Y_2);
  Demux_3: DEMUX port map ( S => S_2 , D => X_1, I_0 => Y_1, I_1 => Y_0);
  
  
  
end Struct;