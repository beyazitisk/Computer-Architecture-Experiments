----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:21:38 03/26/2022 
-- Design Name: 
-- Module Name:    Comparison_Unit - Behavioral 
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

entity Comparison_Unit is
    Port ( A_most : in  STD_LOGIC;
           B_most : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (2 downto 0);
           carry : in  STD_LOGIC;
           zero : in  STD_LOGIC;
           diff_most : in  STD_LOGIC;
           R_out : out  STD_LOGIC_VECTOR(31 downto 0));
end Comparison_Unit;

architecture Behavioral of Comparison_Unit is
signal r_temp: STD_LOGIC;
signal eq_r, neq_r, un_gre_r, un_less_r, sig_gre_r,sig_less_r: STD_LOGIC;

component check_equal is
    Port ( zero : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

component check_not_equal is
    Port ( zero : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

component check_unsigned_gre_eq is
    Port ( carry : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

component check_unsigned_less is
    Port ( carry : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

component check_signed_gre_eq is
    Port ( A_most : in  STD_LOGIC;
           B_most : in  STD_LOGIC;
           diff_most : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

component check_signed_less is
    Port ( A_most : in  STD_LOGIC;
           B_most : in  STD_LOGIC;
           diff_most : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;


begin

equal: check_equal port map( zero,eq_r);

not_equal: check_not_equal port map( zero,neq_r);

uns_gre_equal: check_unsigned_gre_eq port map( carry,un_gre_r);

uns_less: check_unsigned_less port map( carry,un_less_r);

sig_gre_equal: check_signed_gre_eq port map( A_most,B_most,diff_most,sig_gre_r);

sig_less: check_signed_less port map(  A_most,B_most,diff_most,sig_less_r);

with op select r_temp <=
	sig_gre_r when "001",
	sig_less_r when "010",
	neq_r when "011",
	eq_r when "100",
	un_gre_r when "101",
	un_less_r when "110",
	'0' when others;
	
R_out<= x"0000" & x"000" & "000" & r_temp;

end Behavioral;

