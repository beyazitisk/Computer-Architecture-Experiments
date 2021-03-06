----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:46:57 04/18/2022 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder is
    Port ( i_instr : in  STD_LOGIC_VECTOR (31 downto 0);
		   o_ra1 : out  STD_LOGIC_VECTOR (4 downto 0);
		   o_ra2 : out  STD_LOGIC_VECTOR (4 downto 0);
		   o_rd : out  STD_LOGIC_VECTOR (4 downto 0);
           o_imm : out  STD_LOGIC_VECTOR (15 downto 0));
end Decoder;

architecture Behavioral of Decoder is


begin

o_ra1<= i_instr(25 downto 21);

o_ra2<= i_instr(20 downto 16);

o_rd<= i_instr(15 downto 11);

o_imm<= i_instr(15 downto 0);



end Behavioral;

