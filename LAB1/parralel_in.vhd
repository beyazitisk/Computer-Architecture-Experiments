--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:33:52 03/12/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB1/parralel_in.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: paralel_in_ser_out
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
-- arithmetic functions with Signed or Unsigned value

--USE ieee.numeric_std.ALL;
 
ENTITY parralel_in IS
END parralel_in;
 
ARCHITECTURE behavior OF parralel_in IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT paralel_in_ser_out
    PORT(
         clk : IN  std_logic;
         LATCHC : IN  std_logic;
         SHIFTC : IN  std_logic;
         inp_4bit : IN  std_logic_vector(3 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal LATCHC : std_logic := '0';
   signal SHIFTC : std_logic := '0';
   signal inp_4bit : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal C_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: paralel_in_ser_out PORT MAP (
          clk => clk,
          LATCHC => LATCHC,
          SHIFTC => SHIFTC,
          inp_4bit => inp_4bit,
          C_out => C_out
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
        inp_4bit<="0110";
		wait for clk_period;
		LATCHC<='1';
		SHIFTC<='1';
		
		
		wait for clk_period*20;

		inp_4bit<="1100";
		LATCHC<='1';
		SHIFTC<='1';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
