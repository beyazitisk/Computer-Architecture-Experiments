--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:13:50 04/15/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/LAB3/seq_multiplier_test.vhd
-- Project Name:  LAB3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seq_multiplier
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
 
ENTITY seq_multiplier_test IS
END seq_multiplier_test;
 
ARCHITECTURE behavior OF seq_multiplier_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seq_multiplier
    PORT(
         in_clk : IN  std_logic;
         in_reset : IN  std_logic;
         in_start : IN  std_logic;
         in_A : IN  std_logic_vector(7 downto 0);
         in_B : IN  std_logic_vector(7 downto 0);
         out_ready : OUT  std_logic;
         out_product : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_clk : std_logic := '0';
   signal in_reset : std_logic := '0';
   signal in_start : std_logic := '0';
   signal in_A : std_logic_vector(7 downto 0) := (others => '0');
   signal in_B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out_ready : std_logic;
   signal out_product : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant in_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seq_multiplier PORT MAP (
          in_clk => in_clk,
          in_reset => in_reset,
          in_start => in_start,
          in_A => in_A,
          in_B => in_B,
          out_ready => out_ready,
          out_product => out_product
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
	  wait for 100 ns;

      in_reset<='0';
	  in_start<='1';
	  in_A<= "00010111";
	  in_B<= "00010010";
	  wait for in_clk_period;
	  in_start<='0';	
      wait for in_clk_period*10;
	  wait for 140 ns;
	  in_reset<='0';
	  in_start<='1';
	  in_A<= "00000111";
	  in_B<= "00000110";
	  wait for in_clk_period;
	  in_start<='0';	
      wait for in_clk_period*10;
	  wait for 140 ns;
	  in_reset<='0';
	  in_start<='1';
	  in_A<= "01100111";
	  in_B<= "11111000";
	  wait for in_clk_period;
	  in_start<='0';	
      wait for in_clk_period*10;
	  wait for 140 ns;
	  in_reset<='0';
      wait;
   end process;

END;
