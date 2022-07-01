library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity register_file is
	
		port(in_clk : in std_logic;
			 in_wren : in std_logic;
			 in_aa : in std_logic_vector(4 downto 0);
			 in_ab : in std_logic_vector(4 downto 0);
			 in_aw : in std_logic_vector(4 downto 0);
			 in_wrdata : in std_logic_vector(31 downto 0);
			 out_ra : out std_logic_vector(31 downto 0);
			 out_rb : out std_logic_vector(31 downto 0)
		 );
	
end register_file;

architecture Behavioral of register_file is
	
	type register_array is array (31 downto 0) of std_logic_vector(31 downto 0);
	
	signal register_file : register_array := ( others =>x"00000000" );
begin

process(in_clk)
begin
	if rising_edge(in_clk) then
		if in_wren = '1' then
			register_file(to_integer(unsigned(in_aw))) <= in_wrdata;	
		end if;
	end if;
end process;

-- Reads the data from the register file in async. way.
process(in_aa, in_ab)
begin

	out_ra <= register_file(to_integer(unsigned(in_aa)));

	out_rb <= register_file(to_integer(unsigned(in_ab)));
	
end process;

end Behavioral;