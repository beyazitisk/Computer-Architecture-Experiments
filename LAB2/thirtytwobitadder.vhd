----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:59 03/23/2022 
-- Design Name: 
-- Module Name:    thirtytwobitadder - Behavioral 
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

entity thirtytwobitadder is
	generic(N: integer := 32);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1  downto 0);
           sout : out  STD_LOGIC_VECTOR (N-1  downto 0);
           cout : out  STD_LOGIC;
           zout : out  STD_LOGIC);
end thirtytwobitadder;

architecture Behavioral of thirtytwobitadder is
	signal result: STD_LOGIC_VECTOR(N downto 0);
	
begin
	result <= ('0'& A) + ('0'& B);
	sout   <= result(N-1  downto 0);
	cout<=result(N);
	zout<= '1' when result(N-1 downto 0)=x"00000000" else
			'0';

end Behavioral;


