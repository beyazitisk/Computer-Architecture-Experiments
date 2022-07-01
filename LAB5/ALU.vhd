----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:18:44 04/06/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( i_op_sel : in  STD_LOGIC_VECTOR (2 downto 0);
           i_sr1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (31 downto 0);
		   o_N: out STD_LOGIC;
		   o_Z: out STD_LOGIC;
           o_Result : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

signal sel: STD_LOGIC_VECTOR (2 downto 0);

signal add_result, sub_result,and_not_result, slt_result,or_not_result,or_result,and_result:STD_LOGIC_VECTOR (31 downto 0);
signal add_carry, add_zero, add_negate,add_overflow: STD_LOGIC;
signal sub_carry, sub_zero, sub_negate,sub_overflow: STD_LOGIC;
signal Result_temp:STD_LOGIC_VECTOR (31 downto 0);

signal and_not, or_not: STD_LOGIC_VECTOR (31 downto 0);

component ADD is
	generic(N: integer := 32);
    Port ( i_sr1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (N-1  downto 0);
           o_Sum : out  STD_LOGIC_VECTOR (N-1  downto 0);
           o_Carry : out  STD_LOGIC);
end component;

component SUB is
	generic(N: integer := 32);
    Port ( i_sr1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (N-1  downto 0);
           o_Sum : out  STD_LOGIC_VECTOR (N-1  downto 0);
           o_Carry : out  STD_LOGIC);
end component;

component slt_module is
	generic(N: integer := 32);
    Port ( i_sr1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           o_Result : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;


component or_module is
    Port ( i_sr1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (31 downto 0);
           o_Result : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;

component and_module is
    Port ( i_sr1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (31 downto 0);
           o_Result : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;


begin
and_not<=  not i_sr2; 

or_not<=  not i_sr2; 

adder1: ADD port map(i_sr1=>i_sr1,i_sr2=>i_sr2, o_Sum=>add_result, o_Carry=>add_carry);

subtractor1: SUB port map(i_sr1=>i_sr1,i_sr2=>i_sr2, o_Sum=>sub_result, o_Carry=> sub_carry);



slt_module1: slt_module port map(i_sr1=>i_sr1,i_sr2=>i_sr2, o_Result=>slt_result);



or_module1: or_module port map (i_sr1=>i_sr1,i_sr2=>i_sr2, o_Result=>or_result);

or_module2_not: or_module port map (i_sr1=>i_sr1,i_sr2=>or_not, o_Result=>or_not_result);

and_module1: and_module port map(i_sr1=>i_sr1,i_sr2=>i_sr2, o_Result=> and_result);

and_module2_not: and_module port map(i_sr1=>i_sr1,i_sr2=>and_not, o_Result=> and_not_result);

sel <= i_op_sel;


with sel select Result_temp <=
	and_result when "000",
	or_result when "001",
	add_result when "010",
	and_not_result when "100",
	or_not_result when "101",
	sub_result when "110",
	slt_result when "111",
	x"00000000" when others;

o_Result<= Result_temp;
o_N<= Result_temp(31);

o_Z<= '1' when Result_temp= x"00000000" else
	'0';	
	
end Behavioral;

