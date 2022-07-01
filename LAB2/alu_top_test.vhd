--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:30:32 11/29/2021
-- Design Name:   
-- Module Name:   C:/Users/Beyazit/Desktop/xlinx_projects/alu/alu_top_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_top
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
 
ENTITY alu_top_test IS
END alu_top_test;
 
ARCHITECTURE behavior OF alu_top_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_top
    PORT(
         clk : IN  std_logic;
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         op_sel : IN  std_logic_vector(2 downto 0);
         flag_out : OUT  std_logic_vector(2 downto 0);
         seg_out : OUT  std_logic_vector(7 downto 0);
         seg_sel : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal in2 : std_logic_vector(3 downto 0) := (others => '0');
   signal op_sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal flag_out : std_logic_vector(2 downto 0);
   signal seg_out : std_logic_vector(7 downto 0);
   signal seg_sel : std_logic_vector(7 downto 0);

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_top PORT MAP (
          clk => clk,
          in1 => in1,
          in2 => in2,
          op_sel => op_sel,
          flag_out => flag_out,
          seg_out => seg_out,
          seg_sel => seg_sel
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin
		op_sel<="001";
      in1<= "0000";
		in2<= "0000";
      wait for 10 ns;
      in1<= "0010";
		in2<= "0001";
      wait for 10 ns;	
      in1<= "0110";
		in2<= "0010";
      wait for 10 ns;	
      in1<= "0111";
		in2<= "0001";
      wait for 10 ns;
      in1<= "1000";
		in2<= "0100";
      wait for 10 ns;	
      in1<= "1100";
		in2<= "0001";
      wait for 10 ns;	
      in1<= "0011";
		in2<= "0100";
      wait for 10 ns;	
      in1<= "1111";
		in2<= "0001";
      wait for 10 ns;	
      in1<= "0011";
		in2<= "0111";
      wait for 10 ns;	
      in1<= "1001";
		in2<= "0011";
      wait for 10 ns;	
      in1<= "0111";
		in2<= "1111";
      wait for 10 ns;	
      in1<= "0110";
		in2<= "0110";
      wait for 10 ns;
      in1<= "1111";
		in2<= "1111";
      wait for 10 ns;	
      in1<= "0011";
		in2<= "1101";
      wait for 10 ns;			
		
      -- insert stimulus here 

      wait;
   end process;

END;
