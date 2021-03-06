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

entity maindec is
    Port ( i_opcode : in  STD_LOGIC_VECTOR (5 downto 0);
		   o_memwrite: out STD_LOGIC;
		   o_memtoreg : out  STD_LOGIC;
           o_branch : out  STD_LOGIC;
		   o_alusrc : out  STD_LOGIC;
           o_regdst: out  STD_LOGIC;
		   o_regwrite : out  STD_LOGIC;
           o_aluop : out  STD_LOGIC_VECTOR(1 downto 0));
end maindec;

architecture Behavioral of maindec is

signal sig_memwrite , sig_memtoreg,sig_branch, sig_alusrc,sig_regdst,sig_regwrite: STD_LOGIC;
signal sig_aluop: STD_LOGIC_VECTOR(1 downto 0);

begin
process(i_opcode)
begin
	sig_memwrite  <='0';
	sig_memtoreg  <='0';
    sig_branch <='0';
    sig_alusrc<='0';
    sig_regdst   <='0';
    sig_regwrite<='0';
	sig_aluop<="00";
	
	case i_opcode is
	   when "001000" =>--addi
			sig_memwrite  <='0';
			sig_memtoreg  <='0';
			sig_branch <='0';
			sig_alusrc<='1';--signextende oku
			sig_regdst   <='0';--targeta yazacakc
			sig_regwrite<='1';--regfile yazacakc,
			sig_aluop<="00";
	   when "000000" =>-- R type ALU
			sig_memwrite  <='0';
			sig_memtoreg  <='0';
			sig_branch <='0';
			sig_alusrc<='0';
			sig_regdst   <='1';--destinationa yazacakc
			sig_regwrite<='1';--regfile yazacakc
			sig_aluop<="10";
	   when "100011" =>-- lw type 
			sig_memwrite  <='0';
			sig_memtoreg  <='1';--memoryunitten al de??eri
			sig_branch <='0';
			sig_alusrc<='1';--signextende oku
			sig_regdst   <='0';--targeta yazacakc
			sig_regwrite<='1';--regfile yazacakc
			sig_aluop<="00";
	   when "101011" =>-- sw type 
			sig_memwrite  <='1';--memoryunitte yaz
			sig_memtoreg  <='0';
			sig_branch <='0';
			sig_alusrc<='1';--signextende oku
			sig_regdst   <='0';
			sig_regwrite<='0';
			sig_aluop<="00";
	   when "000100" =>-- beq type 
			sig_memwrite  <='0';
			sig_memtoreg  <='0';
			sig_branch <='1';
			sig_alusrc<='0';
			sig_regdst   <='0';
			sig_regwrite<='0';
			sig_aluop<="01";
	   when others =>
			sig_memwrite  <='0';
			sig_memtoreg  <='0';
			sig_branch <='0';
			sig_alusrc<='0';
			sig_regdst   <='0';
			sig_regwrite<='0';
			sig_aluop<="00";
	end case;
end process;

	o_memwrite<= sig_memwrite;
	o_memtoreg<=sig_memtoreg;
    o_branch<=sig_branch;
    o_alusrc<=sig_alusrc;
    o_regdst<=sig_regdst;
	o_regwrite<=sig_regwrite;
	o_aluop<=sig_aluop;
end Behavioral;

