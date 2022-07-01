--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:36:07 11/28/2021
-- Design Name:   
-- Module Name:   C:/Users/Beyazit/Desktop/xlinx_projects/alu/incerement_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: increment
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY incerement_test IS
END incerement_test;
 
ARCHITECTURE behavior OF incerement_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT increment
    PORT(
         in1 : IN  std_logic_vector(3 downto 0);
         sout : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sout : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: increment PORT MAP (
          in1 => in1,
          sout => sout,
          cout => cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		in1 <= "0000";
      wait for 100 ns;	
      
		in1 <= "0100";
      wait for 100 ns;	
		
		in1 <= "1011";
      wait for 100 ns;	
		
		in1 <= "0111";
      wait for 100 ns;	
		
		in1 <= "1111";
      wait for 100 ns;	
		
		in1 <= "1010";
      wait for 100 ns;	
		
		in1 <= "0101";		
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
