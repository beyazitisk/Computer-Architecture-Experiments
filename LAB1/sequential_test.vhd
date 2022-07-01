--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:20:06 03/12/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB1/sequential_test.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sequential_adder
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
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sequential_test IS
END sequential_test;

ARCHITECTURE behavior OF sequential_test IS 

    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sequential_adder
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         starta : IN  std_logic;
         a : IN  std_logic;
         loadb : IN  std_logic;
         b : IN  std_logic_vector(3 downto 0);
         c : OUT  std_logic;
         startc : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal starta : std_logic := '0';
   signal a : std_logic := '0';
   signal loadb : std_logic := '0';
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal c : std_logic;
   signal startc : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sequential_adder PORT MAP (
          clk => clk,
          reset => reset,
          starta => starta,
          a => a,
          loadb => loadb,
          b => b,
          c => c,
          startc => startc
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
	  
	  b<="0010";
	  loadb<='1';
	  starta<='1';
	  wait for clk_period;
	  a<='1';
	  wait for clk_period;
	  a<='0';
	  wait for clk_period;
	  a<='0';
	  wait for clk_period;
	  a<='1';
      wait for clk_period*6;
	  starta<='0';
	  assert false report "Finish" severity failure;
      -- insert stimulus here 

      wait;
   end process;

END;
