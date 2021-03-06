----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.04.2022 20:02:58
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
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
end datapath;

architecture Behavioral of datapath is

signal alu_result:STD_LOGIC_VECTOR(31 downto 0);
signal flag_C,flag_V, flag_N, flag_Z: STD_LOGIC;

signal dec_ra1: STD_LOGIC_VECTOR(4 downto 0);
signal dec_ra2: STD_LOGIC_VECTOR(4 downto 0);
signal dec_rd: STD_LOGIC_VECTOR(4 downto 0);
signal dec_imm: STD_LOGIC_VECTOR(15 downto 0);

signal sign_extended_value:STD_LOGIC_VECTOR(31 downto 0);

signal mux2_5bit_sig: STD_LOGIC_VECTOR(4 downto 0);

signal mux2_32bit_sig_mem, mux2_32bit_sig_alu,mux2_32bit_sig_pc: STD_LOGIC_VECTOR(31 downto 0);

signal reg_file_rd1, reg_file_rd2: STD_LOGIC_VECTOR(31 downto 0);

signal sl2_value: STD_LOGIC_VECTOR(31 downto 0);

signal adder_pc_branch, adder_pc_plus4: STD_LOGIC_VECTOR(31 downto 0);

component ALU is
    Port ( i_op_sel : in  STD_LOGIC_VECTOR (2 downto 0);
           i_sr1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (31 downto 0);
		   o_N: out STD_LOGIC;
		   o_Z: out STD_LOGIC;
           o_Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux2_5bit is
    Port ( s : in  STD_LOGIC;
           d0 : in  STD_LOGIC_VECTOR (4 downto 0);
           d1 : in  STD_LOGIC_VECTOR (4 downto 0);
           y : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component mux2_32bit is
    Port ( s : in  STD_LOGIC;
           d0 : in  STD_LOGIC_VECTOR (31 downto 0);
           d1 : in  STD_LOGIC_VECTOR (31 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ADDER is
	generic(N: integer := 32);
    Port ( i_sr1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           i_sr2 : in  STD_LOGIC_VECTOR (N-1  downto 0);
           o_Sum : out  STD_LOGIC_VECTOR (N-1  downto 0));
end component;

component sl2 is
    Port ( i_sr1 : in  STD_LOGIC_VECTOR (31 downto 0);
           o_Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component sign_extend is
    Port ( i_imm : in STD_LOGIC_VECTOR (15 downto 0);
           o_imm : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component Decoder is
    Port ( i_instr : in  STD_LOGIC_VECTOR (31 downto 0);
		   o_ra1 : out  STD_LOGIC_VECTOR (4 downto 0);
		   o_ra2 : out  STD_LOGIC_VECTOR (4 downto 0);
		   o_rd : out  STD_LOGIC_VECTOR (4 downto 0);
           o_imm : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component register_file is
		port(in_clk : in std_logic;
			 in_wren : in std_logic;
			 in_aa : in std_logic_vector(4 downto 0);
			 in_ab : in std_logic_vector(4 downto 0);
			 in_aw : in std_logic_vector(4 downto 0);
			 in_wrdata : in std_logic_vector(31 downto 0);
			 out_ra : out std_logic_vector(31 downto 0);
			 out_rb : out std_logic_vector(31 downto 0));
end component;

begin

mux2_5bit_reg_file: mux2_5bit port map ( s=>i_regdst,
										 d0=>dec_ra2,
										 d1=>dec_rd,
										 y=>mux2_5bit_sig);
										 
mux2_32bit_memory: mux2_32bit port map (s=>i_memtoreg,
										d0=>alu_result,
										d1=>i_readdata,
										y=>mux2_32bit_sig_mem);

mux2_32bit_alu: mux2_32bit port map (s=>i_alusrc,
									 d0=>reg_file_rd2,
									 d1=>sign_extended_value,
									 y=>mux2_32bit_sig_alu);

mux2_32bit_pc:mux2_32bit  port map  (s=>i_pcsrc,
									 d0=>adder_pc_plus4,
									 d1=>adder_pc_branch,
									 y=>mux2_32bit_sig_pc);								 


sl2_1: sl2 port map(i_sr1=>sign_extended_value,
				  o_Result=>sl2_value);		

ADDERpcplus4: ADDER port map   (i_sr1=>i_pc,
								i_sr2=>x"00000004",
								o_Sum=>adder_pc_plus4);	
								
ADDERbranch: ADDER port map  (i_sr1=>sl2_value,
							  i_sr2=>adder_pc_plus4,
							  o_Sum=>adder_pc_branch);
											
register_file1: register_file port map  (in_clk=>i_clk,
										 in_wren=> i_regwrite,
										 in_aa => dec_ra1,
										 in_ab =>dec_ra2,
										 in_aw =>mux2_5bit_sig,
										 in_wrdata=>mux2_32bit_sig_mem,
										 out_ra =>reg_file_rd1,
										 out_rb => reg_file_rd2);

sign_extend1: sign_extend port map  (i_imm=>dec_imm,
									 o_imm=>sign_extended_value);




alu1: 	ALU port map(i_op_sel=>i_alucontrol,
					 i_sr1=>reg_file_rd1,
					 i_sr2=>mux2_32bit_sig_alu,
					 o_N=>flag_N,
					 o_Z=>flag_Z,
					 o_Result=>alu_result);
					 
decoder1: Decoder port map(i_instr=>i_instr,
						   o_ra1=> dec_ra1,
						   o_ra2=> dec_ra2,
						   o_rd=>  dec_rd,
						   o_imm=> dec_imm);	
				
o_zero<= flag_Z;
o_pc<= mux2_32bit_sig_pc;
o_aluout<=alu_result;
o_writedata<=reg_file_rd2;

end Behavioral;
