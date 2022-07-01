----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:07 04/15/2022 
-- Design Name: 
-- Module Name:    seq_multiplier - Behavioral 
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

entity seq_multiplier is
    Port ( in_clk : in  STD_LOGIC;
           in_reset : in  STD_LOGIC;
           in_start : in  STD_LOGIC;
           in_A : in  STD_LOGIC_VECTOR (7 downto 0);
           in_B : in  STD_LOGIC_VECTOR (7 downto 0);
           out_ready : out  STD_LOGIC;
           out_product : out  STD_LOGIC_VECTOR (15 downto 0));
end seq_multiplier;

architecture Behavioral of seq_multiplier is
signal multiplicandout, and_out:STD_LOGIC_VECTOR (7 downto 0);
signal adder_out:STD_LOGIC_VECTOR (8 downto 0):="000000000";
signal l_multiplier, s_multiplier, l_multiplicand,r_product, l_product,s_product, ready_controller_out: STD_LOGIC;
signal multiplier0: STD_LOGIC;
signal Product_temp:STD_LOGIC_VECTOR (15 downto 0):= x"0000";

component controller is
port(
	in_clk : in std_logic;
	in_rst : in std_logic;
	in_start : in std_logic;
	
	out_load_multiplier : out std_logic;
	out_shift_multiplier : out std_logic;
	out_load_multiplicand : out std_logic;
	out_rst_product : out std_logic;
	out_load_product : out std_logic;
	out_shift_product : out std_logic;
	
	out_ready : out std_logic);
end component;

component MULTIPLIER is
    Port ( in_clk : in  STD_LOGIC;
           in_load : in  STD_LOGIC;
           in_shift_right : in  STD_LOGIC;
           in_datain : in  STD_LOGIC_VECTOR (7 downto 0);
           out_dataout : out  STD_LOGIC);
end component;

component MULTIPLICAND is
    Port ( in_clk : in  STD_LOGIC;
           in_load : in  STD_LOGIC;
           in_datain : in  STD_LOGIC_VECTOR (7 downto 0);
           out_dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component ADDER is
    Port ( in_A : in  STD_LOGIC_VECTOR (7 downto 0);
           in_B : in  STD_LOGIC_VECTOR (7 downto 0);
           out_sum_carry : out  STD_LOGIC_VECTOR (8 downto 0));
end component;

component AND_MOD is
    Port ( in_multiplier0 : in  STD_LOGIC;
           in_multiplicand : in  STD_LOGIC_VECTOR (7 downto 0);
           out_dataout : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component Product_module is
    Port ( in_clk : in  STD_LOGIC;
           in_reset : in  STD_LOGIC;
           in_load : in  STD_LOGIC;
           in_shift_right : in  STD_LOGIC;
           in_datain : in  STD_LOGIC_VECTOR (8 downto 0);
           out_dataout : out  STD_LOGIC_VECTOR (15 downto 0));
end component;


begin
Controller1: controller port map(in_clk,in_reset, in_start, l_multiplier, s_multiplier, l_multiplicand, r_product, l_product,s_product,ready_controller_out);
MULTIPLIER1 : MULTIPLIER port map(in_clk, l_multiplier, s_multiplier, in_A, multiplier0);
MULTIPLICAND1 : MULTIPLICAND port map(in_clk,l_multiplicand,in_B,multiplicandout);
AND_MOD1:AND_MOD port map(multiplier0,multiplicandout,and_out);
ADDER1: ADDER port map(and_out,Product_temp(15 downto 8),adder_out);
Product1: Product_module port map(in_clk,r_product,l_product,s_product,adder_out,Product_temp);

out_ready<=ready_controller_out;
out_product <= Product_temp when ready_controller_out='1' else 
				x"0000" when ready_controller_out = '0';

end Behavioral;

