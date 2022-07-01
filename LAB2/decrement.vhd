----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:41 02/13/2009 
-- Design Name: 
-- Module Name:    four_bit_adder - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decrement is
    Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
			  sout: out STD_LOGIC_VECTOR(3 downto 0)
	 );
end decrement;

architecture Behavioral of decrement is

component full_adder
	 Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sout : out  STD_LOGIC);
end component;

signal w1,w2,w3,w4 : STD_LOGIC; 

begin
U1 : full_adder port map(in1(0), '0', '1', w1, sout(0));
U2 : full_adder port map(in1(1), '1', w1, w2, sout(1));
U3 : full_adder port map(in1(2), '1', w2, w3, sout(2));
U4 : full_adder port map(in1(3), '1', w3, w4, sout(3));


end Behavioral;

