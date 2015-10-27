-- func_three.vhdl created on 1:16  2015.9.28

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity func_three is Port ( 
	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
	o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func_three;

architecture mixed of func_three is

--declare components and inner signals here if needed
variable temp : std_logic_vector( 3 downto 0 );

begin --beginning of the architecture
    o <= not a;
end mixed;