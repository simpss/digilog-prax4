LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library
 
ENTITY ALU_TB IS --entity of the testbench is always empty
END ALU_TB;

ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	component ALU is
	    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
				b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
				op : in STD_LOGIC_VECTOR (1 downto 0); --1 downto 0
				o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
	end component;
    
   --Inputs from the testbench
   signal a_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal b_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal op_tb : std_logic_vector(1 downto 0) := (others => '0');

 	--Output from the testbench
   signal o_tb : std_logic_vector(3 downto 0);

begin
		--component port map
	   uut: ALU PORT MAP (
          a => a_tb,
          b => b_tb,
          op => op_tb,
          o => o_tb
        ); 
	--write your testbench behaviour here
	Stimulus: process
	   begin
	      a_tb <= "0000" after 0ns, "0001" after 5ns, 
	              "0000" after 10ns, "0001" after 15ns, 
	              "0000" after 20ns, "0101" after 25ns,
	              "0000" after 30ns, "1010" after 35ns,
	              "UUUU" after 40ns;
	      b_tb <= "0000" after 0ns, "0001" after 5ns, 
	              "UUUU" after 10ns, "UUUU" after 15ns, --b is not used
	              "UUUU" after 20ns, "UUUU" after 25ns, --b is not used
	              "0000" after 30ns, "0101" after 35ns,
	              "UUUU" after 40ns;
	      op_tb <= "00" after 0ns, "01" after 10ns, "10" after 20ns, "11" after 30ns, "UU" after 40ns;
	      
	   wait;  --Suspend
	end process Stimulus;
	
end behavior;