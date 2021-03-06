----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:51 03/26/2022 
-- Design Name: 
-- Module Name:    thirtytwobitsubtractor - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity thirtytwobitsubtractor is
	generic(N: integer := 32);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1  downto 0);
           sout : out  STD_LOGIC_VECTOR (N-1  downto 0);
           cout : out  STD_LOGIC;
           zout : out  STD_LOGIC);
end thirtytwobitsubtractor;

architecture Behavioral of thirtytwobitsubtractor is
	signal result: STD_LOGIC_VECTOR(N downto 0);
	signal not_B: STD_LOGIC_VECTOR(N-1 downto 0);
	signal B_temp: STD_LOGIC_VECTOR(N-1 downto 0);
begin
	not_B<= not(B);
	B_temp<= STD_LOGIC_VECTOR(unsigned(not_B) +1);
	result <= ('0'& A) + ('0'& B_temp);
	sout   <= result(N-1  downto 0);
	cout<=result(N);
	zout<= '1' when result(N-1 downto 0)=x"00000000" else
			'0';

end Behavioral;


