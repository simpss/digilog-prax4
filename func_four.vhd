-- func_three.vhdl created on 1:16  2015.9.28

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity func_four is Port ( 
	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
	b : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
	o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func_four;

architecture mixed of func_four is

--declare components and inner signals here if needed

begin --beginning of the architecture
    o <= a xor b;
end mixed;