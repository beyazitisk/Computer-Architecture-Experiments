----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:10 04/18/2022 
-- Design Name: 
-- Module Name:    instruct_mem - Behavioral 
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

entity instruct_mem is
port(
	i_addr : in std_logic_vector(31 downto 0);
	o_data : out std_logic_vector(31 downto 0)
);
end instruct_mem;

architecture Behavioral of instruct_mem is
begin
process(i_addr)
begin
	case i_addr is
		when x"00400000" =>
			o_data <= "00100001010010010000000000000101";    --addi t1 t2 0x0005 blank inst
		when x"00400004" =>
			o_data <= "00100001010010010000000000000101";    --addi t1 t2 0x0005
		when x"00400008" =>
			o_data <= "00100001010011110000000000000100";    --addi t7 t2 0x0004
		when x"0040000c" =>
			o_data <= "00000001001010010101100000100000";    --add t3 t1 t1
		when x"00400010" =>
			o_data <= "00000001001010110100100000100101";    --or t1 t1 t3
		when x"00400014" =>
			o_data <= "00000001011010010110100000101010";    --slt t5 t3 t1	
		when x"00400018" =>
			o_data <= "00100001010011000000000000000001";    --addi t4 t2 0x0001
		when x"0040001c" =>
			o_data <= "00010001100011010000000000000011";    --beq t4 t5 0x0004
		when x"0040002c" =>
			o_data <= "00000001100010100110000000100100";    --and t4 t4 t2
		when x"00400030" =>
			o_data <= "10101101111010010000000000000000";    --sw t1 0x0000 t7
		when x"00400034" =>
			o_data <= "10001101111010100000000000000000";    --lw t2 0x0000 t7
		when others =>
			o_data <=  (others => '0');
	end case;
end process;

end Behavioral;
--t1de 5 var t3te 10 var t1 de 15 olmas?? laz??m ordan sonra  t5 1 oluyor ????nk?? slt  t4 1 