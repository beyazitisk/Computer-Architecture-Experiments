--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:28:10 03/09/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB1/test_bench.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM
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
 
ENTITY test_bench IS
END test_bench;
 
ARCHITECTURE behavior OF test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         STARTA : IN  std_logic;
         LOADB : IN  std_logic;
         en : IN  std_logic;
         SHIFTA : OUT  std_logic;
         LATCHB : OUT  std_logic;
         LATCHC : OUT  std_logic;
         SHIFTC : OUT  std_logic;
         STARTC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal STARTA : std_logic := '0';
   signal LOADB : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal SHIFTA : std_logic;
   signal LATCHB : std_logic;
   signal LATCHC : std_logic;
   signal SHIFTC : std_logic;
   signal STARTC : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          clk => clk,
          reset => reset,
          STARTA => STARTA,
          LOADB => LOADB,
          en => en,
          SHIFTA => SHIFTA,
          LATCHB => LATCHB,
          LATCHC => LATCHC,
          SHIFTC => SHIFTC,
          STARTC => STARTC
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
		en <='1';
		reset<='0';
		LOADB<='1';
		STARTA<='1';
      wait for clk_period*10;
		

      -- insert stimulus here 

      wait;
   end process;

END;
