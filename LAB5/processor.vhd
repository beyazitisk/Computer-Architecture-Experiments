----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:05 04/22/2022 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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

entity processor is
    Port ( i_clk : in  STD_LOGIC;
		   i_reset:in  STD_LOGIC;
		   i_instr:in  STD_LOGIC_VECTOR (31 downto 0);
		   i_readdata:in  STD_LOGIC_VECTOR (31 downto 0);
		   i_pc: in  STD_LOGIC_VECTOR(31 downto 0);
		   o_memwrite: out STD_LOGIC;
		   o_pc:out STD_LOGIC_VECTOR (31 downto 0);
		   o_aluout:out STD_LOGIC_VECTOR (31 downto 0);
		   o_writedata:out STD_LOGIC_VECTOR (31 downto 0));
end processor;

architecture Behavioral of processor is

signal flag_zero: STD_LOGIC;
signal sig_memwrite , sig_memtoreg,sig_pcsrc, sig_alusrc,sig_regdst,sig_regwrite: STD_LOGIC;
signal sig_alucontrol: STD_LOGIC_VECTOR(2 downto 0);

signal sig_pc,sig_aluout, sig_writedata:STD_LOGIC_VECTOR (31 downto 0);
component controller is
    Port ( i_opcode : in  STD_LOGIC_VECTOR (5 downto 0);
		   i_funct : in  STD_LOGIC_VECTOR (5 downto 0);
		   i_zero : in  STD_LOGIC;
		   o_memwrite: out STD_LOGIC;
		   o_memtoreg : out  STD_LOGIC;
		   o_pcsrc:out  STD_LOGIC;
           o_alusrc : out  STD_LOGIC;
		   o_regdst : out  STD_LOGIC;
           o_regwrite: out  STD_LOGIC;
           o_alucontrol : out  STD_LOGIC_VECTOR(2 downto 0));
end component;

component datapath is
	Port(
		i_clk: in STD_LOGIC;
		i_rst: in STD_LOGIC;
	    i_memtoreg : in  STD_LOGIC;
	    i_pcsrc : in  STD_LOGIC;
		i_alusrc : in  STD_LOGIC;
	    i_regdst : in  STD_LOGIC;
	    i_regwrite : in  STD_LOGIC;
	    i_alucontrol : in  STD_LOGIC_VECTOR(2 downto 0);
		i_instr : in  STD_LOGIC_VECTOR(31 downto 0);
		i_readdata : in  STD_LOGIC_VECTOR(31 downto 0);
		i_pc: in  STD_LOGIC_VECTOR(31 downto 0);
		o_zero: out STD_LOGIC;
		o_pc : out  STD_LOGIC_VECTOR(31 downto 0);
		o_aluout : out  STD_LOGIC_VECTOR(31 downto 0);
		o_writedata : out  STD_LOGIC_VECTOR(31 downto 0)
	);
end component;

begin

controller1: controller port map(  i_opcode=>i_instr(31 downto 26),
								   i_funct=>i_instr(5 downto 0),
								   i_zero=>flag_zero,
								   o_memwrite=>sig_memwrite,
								   o_memtoreg=>sig_memtoreg,
								   o_pcsrc=>sig_pcsrc,
								   o_alusrc=>sig_alusrc,
								   o_regdst=>sig_regdst,
								   o_regwrite=>sig_regwrite,
								   o_alucontrol=>sig_alucontrol);
		   
datapath1:   datapath port map( i_clk=>i_clk,
								i_rst=>i_reset,
								i_memtoreg=>sig_memtoreg,
								i_pcsrc=>sig_pcsrc,
								i_alusrc=>sig_alusrc,
								i_regdst=>sig_regdst,
								i_regwrite=>sig_regwrite,
								i_alucontrol=>sig_alucontrol,
								i_instr=>i_instr,
								i_readdata=>i_readdata,
								i_pc=>i_pc,
								o_zero=>flag_zero,
								o_pc=>sig_pc,
								o_aluout=>sig_aluout,
								o_writedata=>sig_writedata);
								
o_memwrite<=sig_memwrite;
o_pc<=sig_pc;
o_aluout<=sig_aluout;
o_writedata<=sig_writedata;
end Behavioral;

