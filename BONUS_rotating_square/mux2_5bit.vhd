----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:31 05/21/2022 
-- Design Name: 
-- Module Name:    mux2 - Behavioral 
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

entity mux2_5bit is
    Port ( s : in  STD_LOGIC;
           d0 : in  STD_LOGIC_VECTOR (4 downto 0);
           d1 : in  STD_LOGIC_VECTOR (4 downto 0);
           y : out  STD_LOGIC_VECTOR (4 downto 0));
end mux2_5bit;

architecture Behavioral of mux2_5bit is

begin


with s select y <=
				d0 when '0',
				d1 when others;
	
end Behavioral;

