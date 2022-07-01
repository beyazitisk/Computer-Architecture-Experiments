----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:23 05/21/2022 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
	Port(
		i_clk: in STD_LOGIC;
		i_reset: in STD_LOGIC
	);
end top;

architecture Behavioral of top is


signal sig_memwrite : STD_LOGIC;
signal sigout_pc,sig_readdata,sig_in_pc,sig_inst_out,sig_aluout,sig_writedata, sig_addr, sig_rd: STD_LOGIC_VECTOR(31 downto 0);


component processor is
    Port ( i_clk : in  STD_LOGIC;
		   i_reset:in  STD_LOGIC;
		   i_instr:in  STD_LOGIC_VECTOR (31 downto 0);
		   i_readdata:in  STD_LOGIC_VECTOR (31 downto 0);
		   i_pc: in  STD_LOGIC_VECTOR(31 downto 0);
		   o_memwrite: out STD_LOGIC;
		   o_pc:out STD_LOGIC_VECTOR (31 downto 0);
		   o_aluout:out STD_LOGIC_VECTOR (31 downto 0);
		   o_writedata:out STD_LOGIC_VECTOR (31 downto 0));
end component;

component pc_reg is
	port(
		i_clk : in std_logic;
		i_rst : in std_logic;
		i_addr : in std_logic_vector(31 downto 0);
		o_addr : out std_logic_vector(31 downto 0)
	);
end component;

component data_mem is
	port(
		i_clk : in std_logic;
		i_we : in std_logic;
		i_a : in std_logic_vector(31 downto 0);
		i_wd : in std_logic_vector(31 downto 0);
		o_rd : out std_logic_vector(31 downto 0)
	);
end component;

component instruct_mem is
		port(
			i_addr : in std_logic_vector(31 downto 0);
			o_data : out std_logic_vector(31 downto 0)
		);
end component;

begin
processor1 : processor port map(   i_clk => i_clk,
								   i_reset=>i_reset,
								   i_instr=>sig_inst_out,
								   i_readdata=>sig_readdata,
								   i_pc=>sig_in_pc,
								   o_memwrite=>sig_memwrite,
								   o_pc=>sigout_pc,
								   o_aluout=>sig_aluout,
								   o_writedata=>sig_writedata);
								   
pc_reg1	: pc_reg port map(		i_clk =>i_clk,
								i_rst =>i_reset,
								i_addr =>sigout_pc,
								o_addr =>sig_in_pc);

data_mem1:	data_mem		port map(   i_clk =>i_clk,
									i_we =>sig_memwrite,
									i_a =>sig_aluout,
									i_wd =>sig_writedata,
									o_rd =>sig_readdata);

instruct_mem1: instruct_mem port map(	i_addr =>sig_in_pc,
										o_data =>sig_inst_out);



end Behavioral;

