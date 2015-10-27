library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is --do not change entity, it must match testbench component
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			op : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end ALU;

architecture mixed of ALU is

--declare components and inner signals here if needed

begin --beginning of the architecture
	proc: process ( a, b, op ) begin
		case op is
			when "00" =>
				o <= "0001";
			when "01" =>
				o <= "0010";
			when "10" =>
				o <= "0100";
			when "11" =>
				o <= "1000";
		end case;
	end process proc; 
end mixed;