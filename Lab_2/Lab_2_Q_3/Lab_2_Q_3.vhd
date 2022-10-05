library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity DEMUX_3  is
  port (A_3, A_2, A_1, A_0, S_0, S_1: in std_logic; Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);
end entity DEMUX_3;

architecture Struct of DEMUX_3 is

component DEMUX_1xx4  is
  port (I_0, S_2, S_1: in std_logic; Y_3, Y_2, Y_1, Y_0: out std_logic);
end component DEMUX_1xx4;
  signal X_0, X_1 : std_logic;
begin
  -- component instances
  Demux_1: DEMUX_1xx4 port map ( I_0 => A_3 , S_2 => S_1, S_1 => S_0, Y_0 => Y15, Y_2 => Y11 , Y_1 => Y7, Y_3 => Y3);
  Demux_2: DEMUX_1xx4 port map ( I_0 => A_2 , S_2 => S_1, S_1 => S_0, Y_0 => Y14, Y_2 => Y10 , Y_1 => Y6, Y_3 => Y2);
  Demux_3: DEMUX_1xx4 port map ( I_0 => A_1 , S_2 => S_1, S_1 => S_0, Y_0 => Y13, Y_2 => Y9 , Y_1 => Y5, Y_3 => Y1);
  Demux_4: DEMUX_1xx4 port map ( I_0 => A_0 , S_2 => S_1, S_1 => S_0, Y_0 => Y12, Y_2 => Y8 , Y_1 => Y4, Y_3 => Y0);
  
  
  
end Struct;