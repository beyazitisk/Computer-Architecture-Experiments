--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:08:46 11/28/2021
-- Design Name:   
-- Module Name:   C:/Users/Beyazit/Desktop/xlinx_projects/alu/subtract_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_subtract
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
 
ENTITY subtract_test IS
END subtract_test;
 
ARCHITECTURE behavior OF subtract_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_subtract
    PORT(
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         sout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal in2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_subtract PORT MAP (
          in1 => in1,
          in2 => in2,
          sout => sout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		in1<="0000";
		in2<="0001";
      wait for 100 ns;	
		in1<="0010";
		in2<="0001";
      wait for 100 ns;	
		in1<="0111";
		in2<="0100";
      wait for 100 ns;	
		in1<="0011";
		in2<="1111";			
      wait for 100 ns;	
		in1<="1110";
		in2<="0001";
      wait for 100 ns;
		in1<="1111";
		in2<="1111";		


      -- insert stimulus here 

      wait;
   end process;

END;
