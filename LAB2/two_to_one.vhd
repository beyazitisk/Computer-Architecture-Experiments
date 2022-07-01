----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:28 11/29/2021 
-- Design Name: 
-- Module Name:    two_to_one - Behavioral 
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

entity two_to_one is
    Port ( inp1 : in  STD_LOGIC_VECTOR (3 downto 0);
           inp2 : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC;
           final_out : out  STD_LOGIC);
end two_to_one;

architecture Behavioral of two_to_one is

begin

with S select
	final_out <= inp1 when "0",
					inp2 when others;

end Behavioral;

