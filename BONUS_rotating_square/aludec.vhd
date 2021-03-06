----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:47:34 04/22/2022 
-- Design Name: 
-- Module Name:    ALU_control - Behavioral 
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

entity aludec is
    Port ( i_funct : in  STD_LOGIC_VECTOR(5 downto 0);
		   i_aluop : in  STD_LOGIC_VECTOR(1 downto 0);
           o_alucontrol : out  STD_LOGIC_VECTOR (2 downto 0)
		 );
end aludec;

architecture Behavioral of aludec is
signal sel: STD_LOGIC_VECTOR(2 downto 0);
begin

sel<=      "010" when i_funct="100000" else
		   "110" when i_funct="100010" else
		   "000" when i_funct="100100" else
		   "001" when i_funct="100101" else
		   "111" when i_funct="101010" else
		   "000" when i_funct="100000" else
		   "100" when i_funct="111100" else -- andnot
		   "101" when i_funct="101111" else -- ornot
		   "011";


o_alucontrol<= "010" when i_aluop="00" else
		   "110" when i_aluop="01" else
		   sel when i_aluop="10" else
		   "111";

end Behavioral;

