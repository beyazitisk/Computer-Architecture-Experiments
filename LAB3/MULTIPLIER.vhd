----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:21:33 04/15/2022 
-- Design Name: 
-- Module Name:    MULTIPLIER - Behavioral 
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

entity MULTIPLIER is
    Port ( in_clk : in  STD_LOGIC;
           in_load : in  STD_LOGIC;
           in_shift_right : in  STD_LOGIC;
           in_datain : in  STD_LOGIC_VECTOR (7 downto 0);
           out_dataout : out  STD_LOGIC);
end MULTIPLIER;

architecture Behavioral of MULTIPLIER is

signal data_signal: STD_LOGIC_VECTOR (7 downto 0):="00000000";

begin
process(in_datain, in_clk, in_shift_right,in_load)
	begin
		if rising_edge(in_clk) then
			if(in_load='1') then
				data_signal<= in_datain;
			elsif(in_shift_right='1') then
				data_signal<='0'&data_signal(7 downto 1);
			end if;
			
		end if;
end process;
out_dataout<=data_signal(0);
end Behavioral;

