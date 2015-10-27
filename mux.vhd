library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			c : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			d : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			op : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end MUX;

architecture RTL of MUX is

--declare components and inner signals here if needed

begin --beginning of the architecture
	proc: process ( a, b, c, d, op ) begin
		case op is
			when "00" =>
				o <= a;
			when "01" =>
				o <= b;
			when "10" =>
				o <= c;
			when "11" =>
				o <= d;
		end case;
	end process proc; 
end RTL;