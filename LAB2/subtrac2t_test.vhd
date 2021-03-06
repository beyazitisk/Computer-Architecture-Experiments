--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:42:27 03/27/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/alu/subtrac2t_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: thirtytwobitsubtractor
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
 
ENTITY subtrac2t_test IS
END subtrac2t_test;
 
ARCHITECTURE behavior OF subtrac2t_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT thirtytwobitsubtractor
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         sout : OUT  std_logic_vector(31 downto 0);
         cout : OUT  std_logic;
         zout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal sout : std_logic_vector(31 downto 0);
   signal cout : std_logic;
   signal zout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: thirtytwobitsubtractor PORT MAP (
          A => A,
          B => B,
          sout => sout,
          cout => cout,
          zout => zout
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  A<=X"00000010";	
	  B<=X"00000010";	
      -- insert stimulus here 

      wait;
   end process;

END;
