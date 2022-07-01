----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:57 04/15/2022 
-- Design Name: 
-- Module Name:    Product - Behavioral 
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

entity Product_module is
    Port ( in_clk : in  STD_LOGIC;
           in_reset : in  STD_LOGIC;
           in_load : in  STD_LOGIC;
           in_shift_right : in  STD_LOGIC;
           in_datain : in  STD_LOGIC_VECTOR (8 downto 0);
           out_dataout : out  STD_LOGIC_VECTOR (15 downto 0));
end Product_module;

architecture Behavioral of Product_module is
signal reg: STD_LOGIC_VECTOR (16 downto 0):="00000000000000000";

begin
process(in_datain,in_reset, in_clk, in_shift_right,in_load)
	begin
		if in_reset = '1' then
			reg<= (others => '0');
			
		elsif rising_edge(in_clk) then
			if(in_load='1') then
				reg(16 downto 8) <= in_datain;
			elsif(in_shift_right='1') then
				reg<='0'&reg(16 downto 1);
			else
				reg<=reg;
			end if;
		end if;
end process;
out_dataout<=reg(15 downto 0);
end Behavioral;

