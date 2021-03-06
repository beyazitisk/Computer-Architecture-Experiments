----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:34 03/27/2022 
-- Design Name: 
-- Module Name:    check_unsigned_gre_eq - Behavioral 
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

entity check_unsigned_gre_eq is
    Port ( carry : in  STD_LOGIC;
           result : out  STD_LOGIC);
end check_unsigned_gre_eq;

architecture Behavioral of check_unsigned_gre_eq is

begin

result<= '1' when carry = '1' else
			'0';
end Behavioral;

