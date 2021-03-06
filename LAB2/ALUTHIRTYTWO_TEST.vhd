--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:10:38 03/27/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/alu/ALUTHIRTYTWO_TEST.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_thirtywo
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
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALUTHIRTYTWO_TEST IS
END ALUTHIRTYTWO_TEST;
 
ARCHITECTURE behavior OF ALUTHIRTYTWO_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_thirtywo
    PORT(
         op : IN  std_logic_vector(5 downto 0);
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(5 downto 0) := (others => '0');
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_thirtywo PORT MAP (
          op => op,
          A => A,
          B => B,
          Result => Result
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  op<="110011";	
	  A<=x"80000044";
	  B<=x"FFFF0008";
      -- insert stimulus here 

      wait;
   end process;

END;
