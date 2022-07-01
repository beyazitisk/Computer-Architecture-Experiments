----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:25 11/30/2021 
-- Design Name: 
-- Module Name:    four_to_one - Behavioral 
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

entity arith is
    Port ( sel : in  STD_LOGIC_VECTOR (1 downto 0);
           in1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  in2 : in  STD_LOGIC_VECTOR (3 downto 0);
			  add_carr : out STD_LOGIC;
           final_out : out  STD_LOGIC_VECTOR (3 downto 0));
end arith;
architecture Behavioral of arith is

component four_bit_adder --Componentdeclerations
	Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
			in2 : in STD_LOGIC_VECTOR(3 downto 0);
			sout: out STD_LOGIC_VECTOR(3 downto 0);
			cout:out STD_LOGIC
			);
end component;

component four_bit_subtract
	Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
			in2 : in STD_LOGIC_VECTOR(3 downto 0);
			sout: out STD_LOGIC_VECTOR(3 downto 0)
			);
end component;

component decrement
	Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
			sout:out STD_LOGIC_VECTOR(3 downto 0)
			);
end component;

component increment
	Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
			sout :out STD_LOGIC_VECTOR(3 downto 0);
			cout:out STD_LOGIC
			);
end component;

signal add_out,sub_out,inc_out,dec_out : STD_LOGIC_VECTOR(3 downto 0);
signal add_carry,inc_carry: STD_LOGIC;
begin
A0 : four_bit_adder port map(in1,in2, add_out, add_carry); --You should complete the component port maps
A1 : four_bit_subtract port map(in1, in2, sub_out); --You should also designthese modules
A5 : increment port map(in1, inc_out);
A6 : decrement port map(in1,dec_out);
with sel  select
	final_out <= add_out when "00",
					 sub_out when "01",
					 inc_out when "10",
					 dec_out when others;
	add_carry <= add_carry;
end Behavioral;

