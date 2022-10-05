library ieee;
use ieee.std_logic_1164.all;


entity alu_beh is

generic(
operand_width : integer:=4);

port (
A: in std_logic_vector(operand_width-1 downto 0);
B: in std_logic_vector(operand_width-1 downto 0);
Y: out std_logic_vector(5 downto 0)) ;

end alu_beh;

architecture a1 of alu_beh is

---ADD
function add(A: in std_logic_vector(5 downto 0);
				 B: in std_logic_vector(5 downto 0))
return std_logic_vector is
	variable sum : std_logic_vector(5 downto 0);
	variable carry : std_logic_vector(5 downto 0);

begin 	
		L1: for i in 0 to 5 loop
			if i = 0 then 
				sum(i) := A(i) XOR B(i) XOR '0';
				carry(i) := A(i) and B(i);
			else 
				sum(i) := A(i) XOR B(i) XOR carry (i-1);
				carry(i) := (A(i) and B(i)) or (carry(i-1) and (A(i) or B(i)));
			end if;
		end loop L1;
	return  sum;
end add;
-----AND

function aand(A: in std_logic_vector(operand_width-1 downto 0);
				  B: in std_logic_vector(operand_width-1 downto 0))

return std_logic_vector is

	variable output : std_logic_vector(operand_width-1 downto 0)
;

begin
		L1: for i in 0 to (operand_width-1) loop
			output(i) := A(i) and B(i);
	
		end loop L1;


return output;

end aand;

----MAX(A,B)

function MAX(A: in std_logic_vector(operand_width-1 downto 0);
	B: in std_logic_vector(operand_width-1 downto 0))
		return std_logic_vector is
			variable max_ab: std_logic_vector (5 downto 0):= (others=>'0');
		begin
			
			if	A > B then
				max_ab(3 downto 0) := A;
			elsif B > A then
				max_ab(3 downto 0) := B;
			else
				max_ab := (others=>'0');
			end if;
			return max_ab;
	end MAX;

--- MUL
function MUL(A: in std_logic_vector(3 downto 0)
				 )

return std_logic_vector is

	variable output : std_logic_vector(5 downto 0);
	variable output2 : std_logic_vector(5 downto 0);
	variable a_1  : std_logic_vector(5 downto 0);

begin
		a_1 := "00" & A;
		output := add(a_1,a_1);
		output2 := add(output,  a_1);

return output2;

end MUL;

----EQ
function EQ(A: in std_logic_vector(operand_width-1 downto 0);
				 B: in std_logic_vector(operand_width-1 downto 0))

return std_logic_vector is

	variable M : std_logic_vector(operand_width-1 downto 0);
	


begin
		  
		  if (A(3) = B(3) and A(2) = B(2) and A(1) = B(1) and A(0) = B(0)) then
		   M := A;
		  else
		   M :="0000" ;
			end if;	
		
return M;

end EQ;




begin


alu : process( A, B)

variable sel : std_logic_vector(1 downto 0);

variable X : std_logic_vector(3 downto 0);
--declare other variables

begin
-- complete VHDL code for various outputs of ALU based on select lines

sel := A(3) & B(3);

case sel is

when "00" => Y <=  MAX(A,B);
when "01" => Y <= "00" & aand(A,B);
when "10" => Y <= MUL(A);
when others =>  Y <= "00" & EQ(A,B);



end case;
-- Hint: use if/else statement
--
-- add function usage :
-- signal_name <= add(A,B)
-- variable_name := add(A,B)
--
-- concatenate operator usage:
-- "0000"&A
end process ; -- alu
end a1 ; -- a1