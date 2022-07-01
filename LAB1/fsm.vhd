-- fpga4student.com: FPGA projects, Verilog projects, VHDL projects
-- VHDL project: VHDL code for Sequence Detector using Moore FSM
-- The sequence being detected is "1001" or One Zero Zero One
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity FSM is
port (
 clk: in std_logic; --- clock signal
 reset: in std_logic; -- reset input
 STARTA: in std_logic; -- binary sequence input
 LOADB: in std_logic; -- binary sequence input
 en: in std_logic;
 SHIFTA: out std_logic;
 LATCHB: out std_logic;
 LATCHC: out std_logic;
 SHIFTC: out std_logic;
 STARTC: out std_logic
);
end FSM;

architecture Behavioral of FSM is
type MOORE_FSM is (WaitB,WaitA, TakeA, SendC);
signal current_state, next_state: MOORE_FSM;
signal count: unsigned(1 downto 0):="00";
signal next_count: unsigned(1 downto 0):="00";
begin
-- Sequential memory of the VHDL MOORE FSM Sequence Detector
process(clk,reset,en)
begin
 if(en ='1') then
	 if(reset='1') then
	  current_state <= WaitB;
	  count<="00";
	 elsif(rising_edge(clk)) then
	  current_state <= next_state;
	  count<=next_count;
	 end if;

 end if;
end process;


process(STARTA,LOADB,current_state,count)
begin
 next_count<= count;
 LATCHB<='0';
 SHIFTA<='0';
 STARTC<='0';
 LATCHC<='0';
 SHIFTC<='0';
 case(current_state) is
 when WaitB =>
  if(LOADB='1') then
	LATCHB<='1';
   next_state <= WaitA;
  else
   next_state <= WaitB;
  end if;
 when WaitA =>
  if(STARTA='1') then
   SHIFTA<='1';
	next_count <="00";
   next_state <= TakeA;
  else
   next_state <= WaitA;
  end if;  
 when TakeA => 
  if(count="11") then
   
	LATCHC<='1';
	STARTC<='1';
	next_state <= SendC;
	next_count<="00";
  else
   SHIFTA<='1';
	next_count <= count + 1;
   next_state <= TakeA;
  end if; 
 when SendC =>
  if(count="00") then
  
    
	SHIFTC<='1';
	next_count <= count + 1;
    next_state <= SendC;
	 
  elsif(count="11") then
   next_state <= WaitB;
  else
	SHIFTC<='1';
	next_count <= count + 1;
	next_state <= SendC; 
	

	
  end if; 
 end case;
end process;
end Behavioral;