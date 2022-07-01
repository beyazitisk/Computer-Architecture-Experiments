----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:47:43 03/26/2022 
-- Design Name: 
-- Module Name:    ALU_thirtywo - Behavioral 
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

entity ALU_thirtywo is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU_thirtywo;

architecture Behavioral of ALU_thirtywo is

signal add_sub_result, comparison_result,logical_result, shift_rotate_result:STD_LOGIC_VECTOR (31 downto 0);
signal carry, zero: STD_LOGIC;
signal op_most_sig_two_bit: STD_LOGIC_VECTOR(1 downto 0);
component ADD_SUB_UNIT is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           op : in  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (31 downto 0);
           carry : out  STD_LOGIC;
           zero : out  STD_LOGIC);
end component;

component Comparison_Unit is
    Port ( A_most : in  STD_LOGIC;
           B_most : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (2 downto 0);
           carry : in  STD_LOGIC;
           zero : in  STD_LOGIC;
           diff_most : in  STD_LOGIC;
           R_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Logical_Unit is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Shift_Rotate_Unit is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           op : in  STD_LOGIC_VECTOR (2 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

begin
ADD_SUB_UNIT1: ADD_SUB_UNIT port map(A,B,op(3),add_sub_result,carry,zero);
Comparison_Unit1: Comparison_Unit port map(A(31),B(31),op(2 downto 0) ,carry,zero,add_sub_result(31),comparison_result );
Logical_Unit1: Logical_Unit port map(A,B,op (1 downto 0),logical_result);
Shift_Rotate_Unit1: Shift_Rotate_Unit port map(A,B(4 downto 0),op (2 downto 0),shift_rotate_result);

op_most_sig_two_bit<= op(5 downto 4);

with op_most_sig_two_bit select Result <=
	add_sub_result when "00",
	comparison_result when "01",
	logical_result when "10",
	shift_rotate_result when "11",
	x"00000000" when others;
	
end Behavioral;

