--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:45:13 04/15/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB3/multiplier_test.vhd
-- Project Name:  LAB3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MULTIPLIER
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
 
ENTITY multiplier_test IS
END multiplier_test;
 
ARCHITECTURE behavior OF multiplier_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MULTIPLIER
    PORT(
         in_clk : IN  std_logic;
         in_load : IN  std_logic;
         in_shift_right : IN  std_logic;
         in_datain : IN  std_logic_vector(7 downto 0);
         out_dataout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_clk : std_logic := '0';
   signal in_load : std_logic := '0';
   signal in_shift_right : std_logic := '0';
   signal in_datain : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out_dataout : std_logic;

   -- Clock period definitions
   constant in_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MULTIPLIER PORT MAP (
          in_clk => in_clk,
          in_load => in_load,
          in_shift_right => in_shift_right,
          in_datain => in_datain,
          out_dataout => out_dataout
        );

   -- Clock process definitions
   in_clk_process :process
   begin
		in_clk <= '0';
		wait for in_clk_period/2;
		in_clk <= '1';
		wait for in_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      in_load<='1';
	  in_datain<="01001011";
      wait for in_clk_period;
	  in_load<='0';
	  in_shift_right<='1';
      wait for in_clk_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;
