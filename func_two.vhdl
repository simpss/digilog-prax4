-- func_two.vhdl created on 1:16  2015.9.28

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity func_two is Port ( 
	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
	b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
	o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func_two;

architecture mixed of func_two is

--declare components and inner signals here if needed

begin --beginning of the architecture
	o <= a+b;
end mixed;