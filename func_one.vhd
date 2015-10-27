-- func_one.vhd created on 0:59  2015.9.28

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity func_one is Port ( 
	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
	b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
	o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func_one;

architecture mixed of func_one is

--declare components and inner signals here if needed

begin --beginning of the architecture
	o <= a+b;
end mixed;