----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:55 04/15/2022 
-- Design Name: 
-- Module Name:    ADD_MOD - Behavioral 
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

entity AND_MOD is
    Port ( in_multiplier0 : in  STD_LOGIC;
           in_multiplicand : in  STD_LOGIC_VECTOR (7 downto 0);
           out_dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end AND_MOD;

architecture Behavioral of AND_MOD is

signal eightbit_multiplier: STD_LOGIC_VECTOR (7 downto 0);
begin
	eightbit_multiplier<= (others => in_multiplier0);
	out_dataout<= eightbit_multiplier and in_multiplicand;

end Behavioral;

