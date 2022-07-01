----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:15 03/27/2022 
-- Design Name: 
-- Module Name:    Shift_Rotate_Unit - Behavioral 
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

entity Shift_Rotate_Unit is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           op : in  STD_LOGIC_VECTOR (2 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end Shift_Rotate_Unit;

architecture Behavioral of Shift_Rotate_Unit is

signal rol_result, ror_result,sll_result, srl_result,sra_result:STD_LOGIC_VECTOR (31 downto 0);

component Rol_op is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Ror_op is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Sll_op is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Srl_op is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Sra_op is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

begin
Rol_op1: Rol_op port map(A,B,rol_result);
Ror_op1: Ror_op port map(A,B,ror_result);
Sll_op1: Sll_op port map(A,B,sll_result);
Srl_op1: Srl_op port map(A,B,srl_result);
Sra_op1: Sra_op port map(A,B,sra_result);


with op select Result <=
	rol_result when "000",
	ror_result when "001",
	sll_result when "010",
	srl_result when "011",
	sra_result when "111",
	x"00000000" when others;
end Behavioral;

