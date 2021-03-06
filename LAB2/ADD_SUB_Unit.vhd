----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:13:02 03/23/2022 
-- Design Name: 
-- Module Name:    ADD_SUB_UNIT - Behavioral 
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

entity ADD_SUB_UNIT is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           op : in  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (31 downto 0);
           carry : out  STD_LOGIC;
           zero : out  STD_LOGIC);
end ADD_SUB_UNIT;

architecture Behavioral of ADD_SUB_UNIT is

signal ad_res_out: STD_LOGIC_VECTOR (31 downto 0);
signal ad_carry_out,ad_zero_out: STD_LOGIC;
signal sub_res_out: STD_LOGIC_VECTOR (31 downto 0);
signal sub_carry_out, sub_zero_out: STD_LOGIC;

component thirtytwobitadder is
	generic(N: integer := 32);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           sout : out  STD_LOGIC_VECTOR (N-1 downto 0);
           cout : out  STD_LOGIC;
           zout : out  STD_LOGIC);
end component;

component thirtytwobitsubtractor is
	generic(N: integer := 32);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1  downto 0);
           sout : out  STD_LOGIC_VECTOR (N-1  downto 0);
           cout : out  STD_LOGIC;
           zout : out  STD_LOGIC);
end component;

begin

adder: thirtytwobitadder port map(A,B,ad_res_out,ad_carry_out,ad_zero_out);
subtractor: thirtytwobitsubtractor port map(A,B,sub_res_out,sub_carry_out,sub_zero_out);

zero<=  ad_zero_out when op='0' else
		sub_zero_out;
carry<=  ad_carry_out when op='0' else
		sub_carry_out;
Result<=  ad_res_out when op='0' else
		sub_res_out;


end Behavioral;

