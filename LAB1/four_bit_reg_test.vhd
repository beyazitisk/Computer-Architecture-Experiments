--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:59:33 03/10/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB1/four_bit_reg_test.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_register
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_reg_test IS
END four_bit_reg_test;
 
ARCHITECTURE behavior OF four_bit_reg_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_register
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         en : IN  std_logic;
         B : IN  std_logic_vector(15 downto 0);
         LATCHB : IN  std_logic;
         B_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal en : std_logic := '0';
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal LATCHB : std_logic := '0';

 	--Outputs
   signal B_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_register PORT MAP (
          clk => clk,
          rst => rst,
          en => en,
          B => B,
          LATCHB => LATCHB,
          B_out => B_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      en<='1';
		B<=x"00A1";
		LATCHB<='1';
		
		wait for 10ns;
		LATCHB<='0';
		B<=x"0101";
		LATCHB<='1';
		
		wait for 10ns;
		LATCHB<='0';
		B<=x"0111";
		LATCHB<='1';
		wait for 10ns;
		wait for clk_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;
