----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:25:03 03/26/2022 
-- Design Name: 
-- Module Name:    Logical_Unit - Behavioral 
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

entity Logical_Unit is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end Logical_Unit;

architecture Behavioral of Logical_Unit is
signal nor_result, and_result, or_result, xor_result : STD_LOGIC_VECTOR (31 downto 0);

component thirty_two_and is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;

component thirtytwo_bit_nor is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component thirtytwo_bit_or is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;

component thirtytwo_bit_xor is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;

begin

And_Logic: thirty_two_and port map(A,B,and_result);
Nor_Logic: thirtytwo_bit_nor port map(A,B,nor_result);
Or_Logic: thirtytwo_bit_or port map(A,B,or_result);
Xor_Logic: thirtytwo_bit_xor port map(A,B,xor_result);
with op select Result <=
	nor_result when "00",
	and_result when "01",
	or_result when "10",
	xor_result when others;

end Behavioral;

