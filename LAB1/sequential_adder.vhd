----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:56:48 03/12/2022 
-- Design Name: 
-- Module Name:    sequential_adder - Behavioral 
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

entity sequential_adder is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           starta : in  STD_LOGIC;
           a : in  STD_LOGIC;
           loadb : in  STD_LOGIC;
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : out  STD_LOGIC;
           startc : out  STD_LOGIC);
end sequential_adder;




architecture Behavioral of sequential_adder is

signal SHIFTA_sig, SHIFTC_sig, LATCHB_sig,LATCHC_sig : std_logic;
signal A_out_par: std_logic_vector(3 downto 0);
signal B_out_par: std_logic_vector (3 downto 0);
signal sum_out: std_logic_vector(3 downto 0);
signal carry_out: std_logic;
component FSM 
    Port (
		 clk: in std_logic; --- clock signal
		 reset: in std_logic; -- reset input
		 STARTA: in std_logic; -- binary sequence input
		 LOADB: in std_logic; -- binary sequence input
		 en: in std_logic;
		 SHIFTA: out std_logic;
		 LATCHB: out std_logic;
		 LATCHC: out std_logic;
		 SHIFTC: out std_logic;
		 STARTC: out std_logic);
end component;

component four_bit_adder 
    Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           in2 : in  STD_LOGIC_VECTOR (3 downto 0);
           sout : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end component;

component paralel_in_ser_out
		Port ( clk : in  STD_LOGIC;
		   rst: in STD_LOGIC;
           LATCHC : in  STD_LOGIC;
           SHIFTC : in  STD_LOGIC;
           inp_4bit : in  STD_LOGIC_VECTOR (3 downto 0);
           C_out : out  STD_LOGIC);
end component;

component four_bit_register 
    Port ( clk : in  STD_LOGIC;
		   rst : in STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           LATCHB : in  STD_LOGIC;
           B_out : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component sipo 
    Port ( clk : in  STD_LOGIC;
		   rst: in STD_LOGIC;
           A : in  STD_LOGIC;
           SHIFTA : in  STD_LOGIC;
           A_out : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
Controller: FSM port map(clk, 
						reset, 
						starta,
						loadb,
						'1', 
						SHIFTA_sig, 
						LATCHB_sig, 
						LATCHC_sig, 
						SHIFTC_sig, 
						startc
						);
sipo_1 : sipo port map (clk,
						reset,
						a, 
						SHIFTA_sig, 
						A_out_par
						);
								
four_bit_register_1: four_bit_register port map (	clk, 
													reset,
													b,
													LATCHB_sig, 
													B_out_par
													);
													
four_bit_adder_1 : four_bit_adder      port map (	A_out_par, 
													B_out_par,
													sum_out,
													carry_out
													);
													
paralel_in_ser_out_1: paralel_in_ser_out port map (	clk,
													reset,
													LATCHC_sig,
													SHIFTC_sig,
													sum_out,
													c
													);													
end Behavioral;

