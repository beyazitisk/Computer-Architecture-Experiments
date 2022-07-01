--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:34:40 03/24/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/alu/thirtytwotest.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD_SUB_UNIT
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
 
ENTITY thirtytwotest IS
END thirtytwotest;
 
ARCHITECTURE behavior OF thirtytwotest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD_SUB_UNIT
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         op : IN  std_logic;
         Result : OUT  std_logic_vector(31 downto 0);
         carry : OUT  std_logic;
         zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal op : std_logic := '0';

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   signal carry : std_logic;
   signal zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD_SUB_UNIT PORT MAP (
          A => A,
          B => B,
          op => op,
          Result => Result,
          carry => carry,
          zero => zero
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
	  
      wait for 100 ns;
	  op<='1';	  
	  A<=x"00001000";
	  B<=x"00000110";
      wait for 100 ns;
	  op<='0';		  
	  A<=x"00011100";
	  B<=x"00000100";
	  wait for 100 ns;
	  op<='1';		  
	  A<=x"00000000";
	  B<=x"00000000";
	  wait for 100 ns;
	  op<='1';		  
	  A<=x"00000000";
	  B<=x"00000000";
	  wait for 100 ns;
	  op<='1';		  
	  A<=x"FFF10000";
	  B<=x"00001100";
	  wait for 100 ns;
	  op<='0';		  
	  A<=x"1FF11111";
	  B<=x"11111111";
      -- insert stimulus here 

      wait;
   end process;

END;
