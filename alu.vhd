library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is --do not change entity, it must match testbench component
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			op : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end ALU;

architecture mixed of ALU is

component MUX is Port ( 
			a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			c : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			d : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			op : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end component MUX;

component func_one is Port (
	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
	b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
	o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end component func_one;

--declare components and inner signals here if needed

signal f1, f2, f3, f4 : STD_LOGIC_VECTOR (3 downto 0);

begin --beginning of the architecture
	--f1 <= "0001";
	f2 <= "0010";
	f3 <= "0100";
	f4 <= "1000";
	
	func_1 : func_one port map(
		a => a,
		b => b,
		o => f1
	);
	
	mux_1 : MUX port map(
		a=>	f1,
		b=> f2,
		c=> f3,
		d=> f4,
		op=> op,
		o=> o
	);
	
end mixed;