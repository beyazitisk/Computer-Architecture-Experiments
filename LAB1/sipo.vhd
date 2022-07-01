----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:16:10 03/10/2022 
-- Design Name: 
-- Module Name:    sipo - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sipo is
    Port ( clk : in  STD_LOGIC;
		   rst: in STD_LOGIC;
           A : in  STD_LOGIC;
           SHIFTA : in  STD_LOGIC;
           A_out : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo;

architecture Behavioral of sipo is

signal current_state, next_state: std_logic_vector (3 downto 0):= "0000";

signal a_outtemp: std_logic_vector (3 downto 0):= "0000";
begin
process (clk,rst)
begin
	if(rst ='1') then
		current_state<="0000";
	elsif(SHIFTA='1') then
		if(rising_edge(clk)) then
			current_state <= next_state;
		end if;
	end if;
	 
end process;

process(A,clk,current_state)
begin
	next_state<=current_state(2 downto 0) & A;
end process;
A_out<=current_state;
end Behavioral;

