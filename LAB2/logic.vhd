----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:44 11/30/2021 
-- Design Name: 
-- Module Name:    logic - Behavioral 
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

entity logic is
    Port ( sel : in  STD_LOGIC_VECTOR (1 downto 0);
			  in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           in2 : in  STD_LOGIC_VECTOR (3 downto 0);
           final_out : out  STD_LOGIC_VECTOR (3 downto 0));
end logic;

architecture Behavioral of logic is
component four_bit_and
Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
		in2 : in STD_LOGIC_VECTOR(3 downto 0);
		sout:out STD_LOGIC_VECTOR(3 downto 0)
		);
end component;

component four_bit_or
	Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
			in2 : in STD_LOGIC_VECTOR (3 downto 0);
			sout:out STD_LOGIC_VECTOR(3 downto 0)
			);
end component;

component NotA
	Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
			sout : out STD_LOGIC_VECTOR(3 downto 0)
			);
end component;

component four_bit_xor
			Port (in1 : in STD_LOGIC_VECTOR (3 downto 0);
					in2 : in STD_LOGIC_VECTOR (3 downto 0);
					sout : out STD_LOGIC_VECTOR (3 downto 0)
					);
end component;
signal and_out,or_out, xor_out,not_out : STD_LOGIC_VECTOR(3 downto 0);
begin
A2 : four_bit_and port map(in1, in2, and_out );
A3 : four_bit_or port map(in1, in2, or_out);
A4 : four_bit_xor port map(in1, in2, xor_out);
A7 : NotA port map(in1, not_out);
with sel  select
	final_out <= and_out when "00",
					 or_out when "01",
					 xor_out when "10",
					 not_out when others;

end Behavioral;

