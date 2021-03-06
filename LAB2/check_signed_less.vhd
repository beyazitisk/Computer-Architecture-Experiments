----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:28:27 03/27/2022 
-- Design Name: 
-- Module Name:    check_signed_less - Behavioral 
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

entity check_signed_less is
    Port ( A_most : in  STD_LOGIC;
           B_most : in  STD_LOGIC;
           diff_most : in  STD_LOGIC;
           result : out  STD_LOGIC);
end check_signed_less;

architecture Behavioral of check_signed_less is
signal and_result1,and_result2,and_result3: STD_LOGIC;
begin

and_result1<= (not A_most) and (not diff_most);
and_result2<= (not A_most) and (B_most);
and_result3<= (B_most) and (not diff_most);
result     <= (not (and_result1 or and_result2 or and_result3));
end Behavioral;

