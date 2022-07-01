----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:16 04/15/2022 
-- Design Name: 
-- Module Name:    ADDER - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDER is
    Port ( in_A : in  STD_LOGIC_VECTOR (7 downto 0);
           in_B : in  STD_LOGIC_VECTOR (7 downto 0);
           out_sum_carry : out  STD_LOGIC_VECTOR (8 downto 0));
end ADDER;

architecture Behavioral of ADDER is

begin
	out_sum_carry <= ('0'& in_A) + ('0'& in_B);
end Behavioral;

