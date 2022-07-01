----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:50:04 03/10/2022 
-- Design Name: 
-- Module Name:    four_bit_register - Behavioral 
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

entity four_bit_register is
    Port ( clk : in  STD_LOGIC;
		   rst : in STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (3downto 0);
           LATCHB : in  STD_LOGIC;
           B_out : out  STD_LOGIC_VECTOR (3downto 0));
end four_bit_register;

architecture Behavioral of four_bit_register is
signal  next_reg : STD_LOGIC_VECTOR(3 downto 0);
signal  reg_state : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
-- Sequential memory of the VHDL MOORE FSM Sequence Detector
process(clk,rst)
begin
	 if(rst='1') then
		reg_state <="0000";
	 elsif(rising_edge(clk)) then
	   reg_state <= next_reg;
	 end if;
end process;
next_reg <= B when LATCHB = '1' else
				reg_state;
B_out <= reg_state;
end Behavioral;

