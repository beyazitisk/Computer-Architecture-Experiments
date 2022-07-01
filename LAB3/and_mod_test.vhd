--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:03:54 04/15/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB3/add_mod_test.vhd
-- Project Name:  LAB3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD_MOD
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
 
ENTITY AND_MOD_TEST IS
END AND_MOD_TEST;
 
ARCHITECTURE behavior OF AND_MOD_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AND_MOD
    PORT(
         in_multiplier0 : IN  std_logic;
         in_multiplicand : IN  std_logic_vector(7 downto 0);
         out_dataout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_multiplier0 : std_logic := '0';
   signal in_multiplicand : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out_dataout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AND_MOD PORT MAP (
          in_multiplier0 => in_multiplier0,
          in_multiplicand => in_multiplicand,
          out_dataout => out_dataout
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  in_multiplier0<='1';
	  in_multiplicand<="00110010";
	  wait for 100 ns;	
	  in_multiplier0<='0';
	  in_multiplicand<="00110010";
	  wait for 100 ns;	
	  in_multiplier0<='1';
	  in_multiplicand<="00110010";
      

      -- insert stimulus here 

      wait;
   end process;

END;
