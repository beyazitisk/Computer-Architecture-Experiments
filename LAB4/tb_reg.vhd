--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:51:38 05/09/2022
-- Design Name:   
-- Module Name:   G:/xlinx_projects/computer_arch/lab4/tb_reg.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
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
 
ENTITY tb_reg IS
END tb_reg;
 
ARCHITECTURE behavior OF tb_reg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         in_clk : IN  std_logic;
         in_wren : IN  std_logic;
         in_aa : IN  std_logic_vector(4 downto 0);
         in_ab : IN  std_logic_vector(4 downto 0);
         in_aw : IN  std_logic_vector(4 downto 0);
         in_wrdata : IN  std_logic_vector(31 downto 0);
         out_ra : OUT  std_logic_vector(31 downto 0);
         out_rb : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_clk : std_logic := '0';
   signal in_wren : std_logic := '0';
   signal in_aa : std_logic_vector(4 downto 0) := (others => '0');
   signal in_ab : std_logic_vector(4 downto 0) := (others => '0');
   signal in_aw : std_logic_vector(4 downto 0) := (others => '0');
   signal in_wrdata : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal out_ra : std_logic_vector(31 downto 0);
   signal out_rb : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant in_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          in_clk => in_clk,
          in_wren => in_wren,
          in_aa => in_aa,
          in_ab => in_ab,
          in_aw => in_aw,
          in_wrdata => in_wrdata,
          out_ra => out_ra,
          out_rb => out_rb
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
	    wait for 10 ns;	
	    in_wren <= '1';
		in_aw <= "01011";--11
		in_wrdata <= x"1a23fa31";
		
		wait for in_clk_period;
		
		in_wren <= '0';
		in_aa <= "01011";--11
		in_ab <= "01011";--11
		wait for in_clk_period;

		in_wren <= '1';
		in_aw <= "01000";--8
		in_wrdata <= x"bef00111";
		wait for in_clk_period;
		
		 in_wren <= '0';
		in_aa <= "01000";--8
		in_ab <= "01000";--8
		wait for in_clk_period;

		in_wren <= '1';
		in_aw <= "00001";--1
		in_wrdata <= x"aa22bb00";
		wait for in_clk_period;

		in_wren <= '0';
		in_aa <= "00001";--1
		in_ab <= "00001";--1
		wait for in_clk_period;

      wait;
   end process;

END;
