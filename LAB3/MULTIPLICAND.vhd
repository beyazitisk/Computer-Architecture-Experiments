----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:20 04/15/2022 
-- Design Name: 
-- Module Name:    MULTIPLICAND - Behavioral 
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

entity MULTIPLICAND is
    Port ( in_clk : in  STD_LOGIC;
           in_load : in  STD_LOGIC;
           in_datain : in  STD_LOGIC_VECTOR (7 downto 0);
           out_dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end MULTIPLICAND;

architecture Behavioral of MULTIPLICAND is
signal data_signal: STD_LOGIC_VECTOR (7 downto 0);
begin
process(in_datain, in_clk,in_load)
	begin
		if rising_edge(in_clk) then
			if(in_load='1') then
				data_signal<= in_datain;
			end if;
		end if;
end process;

out_dataout<=data_signal;
end Behavioral;

