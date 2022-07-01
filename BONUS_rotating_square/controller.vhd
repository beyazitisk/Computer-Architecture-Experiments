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

entity controller is
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
end controller;

architecture Behavioral of controller is
signal sig_memwrite , sig_memtoreg,sig_branch, sig_alusrc,sig_regdst,sig_regwrite: STD_LOGIC;
signal sig_aluop: STD_LOGIC_VECTOR(1 downto 0);
signal sig_alucontrol: STD_LOGIC_VECTOR(2 downto 0);

signal and_result_pcsrc: STD_LOGIC;
component maindec is
    Port ( i_opcode : in  STD_LOGIC_VECTOR (5 downto 0);
		   o_memwrite: out STD_LOGIC;
		   o_memtoreg : out  STD_LOGIC;
           o_branch : out  STD_LOGIC;
		   o_alusrc : out  STD_LOGIC;
           o_regdst: out  STD_LOGIC;
		   o_regwrite : out  STD_LOGIC;
           o_aluop : out  STD_LOGIC_VECTOR(1 downto 0));
end component;

component aludec is
    Port ( i_funct : in  STD_LOGIC_VECTOR(5 downto 0);
		   i_aluop : in  STD_LOGIC_VECTOR(1 downto 0);
           o_alucontrol : out  STD_LOGIC_VECTOR (2 downto 0)
		 );
end component;

begin

maindec1: maindec port map(i_opcode=>i_opcode,
						   o_memwrite=>sig_memwrite,
						   o_memtoreg=>sig_memtoreg,
						   o_branch=>sig_branch,
						   o_alusrc=>sig_alusrc,
						   o_regdst=>sig_regdst,
						   o_regwrite=>sig_regwrite,
						   o_aluop=>sig_aluop);

aludec1: aludec port map(i_funct=>i_funct,i_aluop=>sig_aluop, o_alucontrol=>sig_alucontrol);



and_result_pcsrc<=sig_branch and i_zero;

o_memwrite<=sig_memwrite;
o_memtoreg<=sig_memtoreg;
o_pcsrc<=and_result_pcsrc;
o_alusrc<=sig_alusrc;
o_regdst<=sig_regdst;
o_regwrite<=sig_regwrite;
o_alucontrol<=sig_alucontrol;
end Behavioral;

