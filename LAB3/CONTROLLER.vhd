----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:15 04/14/2022 
-- Design Name: 
-- Module Name:    controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is
port(
	in_clk : in std_logic;
	in_rst : in std_logic;
	in_start : in std_logic;
	out_load_multiplier : out std_logic;
	out_shift_multiplier : out std_logic;
	out_load_multiplicand : out std_logic;
	out_rst_product : out std_logic;
	out_load_product : out std_logic;
	out_shift_product : out std_logic;
	out_ready : out std_logic
	
);
end controller;

architecture Behavioral of controller is
	
	type FSM_current_stateS is (s0, s1, s2, s3);
	signal current_state : FSM_current_stateS;
	
	signal counter : unsigned(3 downto 0) := (others => '0');
	
begin

process (in_clk, in_rst)
begin
	
	if in_rst = '1' then
		current_state <= s0;
	elsif rising_edge(in_clk) then
		
		out_load_multiplicand <= '0';
		out_load_multiplier <= '0';
		out_shift_multiplier <= '0';
		out_rst_product <= '0';
		out_load_product <= '0';
		out_shift_product <= '0';
		out_ready <= '0';
		
		case current_state is	
			when s0 =>			
				if in_start = '0' then			
					current_state <= s0;		
				else
					out_rst_product<='1';
					out_load_multiplicand <= '1';
					out_load_multiplier <= '1';
					current_state <= s1;			
				end if;	
			when s1 =>
				
				out_load_product <= '1';
				counter <= counter + 1;
				current_state <= s2;
			when s2 =>
				if counter = 8 then -- !!!
					out_shift_multiplier <= '1';
					out_shift_product <= '1';
					counter <= (others => '0');
					current_state <= s3;
				else	
					out_shift_multiplier <= '1';
					out_shift_product <= '1';
					current_state <= s1;	
				end if;		
			when s3 =>			
				out_ready <= '1';
				current_state <= s0;
		end case;
	end if;
end process;
end Behavioral;

