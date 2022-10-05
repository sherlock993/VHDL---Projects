library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity halfadder is
	port(a, b: in std_logic;
		s, cout: out std_logic);
end entity halfadder;

architecture trivial of halfadder is
	-- cout is going to a and b and sum would be a xor b
	
	for all: AND_2
		use entity work.AND_2(Equations);
		
	for all: XOR_2
		use entity work.XOR_2(Equations);
	
	begin
		and1: component AND_2
			port map(a, b, cout);
		
		xor1: component XOR_2
			port map(a,b, s);
end architecture trivial;
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.gates.all;

entity fulladder is
	port(a, b, cin: in std_logic;
		s, cout: out std_logic);
end entity fulladder;

architecture trivial of fulladder is
	-- cout is going to a.b+b.cin+a.cin and sum would be c xor (a xor b)
	component halfadder is
		port(a, b: in std_logic;
			s, cout: out std_logic);
	end component halfadder;
	
	for all: OR_2
		use entity work.OR_2(Equations);
	
	for all: halfadder
		use entity work.halfadder(trivial);
		
	signal s1,s2,s3:std_logic;
	
	begin
		half1: component halfadder
			port map(a, b,s1, s2);
			
		half2: component halfadder
			port map(s1, cin,s, s3);
		
		or1: component OR_2
			port map(s2,s3, cout);
end architecture trivial;
----------------------------------------------------