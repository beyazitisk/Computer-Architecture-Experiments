--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:11:56 04/15/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB3/ADDER_test.vhd
-- Project Name:  LAB3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADDER
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
 
ENTITY ADDER_test IS
END ADDER_test;
 
ARCHITECTURE behavior OF ADDER_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDER
    PORT(
         in_A : IN  std_logic_vector(7 downto 0);
         in_B : IN  std_logic_vector(7 downto 0);
         out_sum_carry : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_A : std_logic_vector(7 downto 0) := (others => '0');
   signal in_B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out_sum_carry : std_logic_vector(8 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER PORT MAP (
          in_A => in_A,
          in_B => in_B,
          out_sum_carry => out_sum_carry
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  in_A <= "01000000";
	  in_B <= "00001101";
	  wait for 100 ns;	
	  in_A <= "11111101";
	  in_B <= "00001101";
     

      -- insert stimulus here 

      wait;
   end process;

END;
