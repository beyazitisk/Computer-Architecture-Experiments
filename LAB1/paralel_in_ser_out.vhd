----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:07:38 03/12/2022 
-- Design Name: 
-- Module Name:    paralel_in_ser_out - Behavioral 
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

entity paralel_in_ser_out is
    Port ( clk : in  STD_LOGIC;
		   rst: in STD_LOGIC;
           LATCHC : in  STD_LOGIC;
           SHIFTC : in  STD_LOGIC;
           inp_4bit : in  STD_LOGIC_VECTOR (3 downto 0);
           C_out : out  STD_LOGIC);
end paralel_in_ser_out;

architecture Behavioral of paralel_in_ser_out is

type FSM is (Idle,wait_shift_1,wait_shift_2,wait_shift_3,finish);
signal current_state, next_state: FSM:= Idle;
signal inp_4bit_reg:  STD_LOGIC_VECTOR (3 downto 0):= (others=> '0');


begin
process (clk,rst)
begin
	if(rst = '1') then
	    current_state<=Idle;	
	elsif(rising_edge(clk)) then
		current_state <= next_state;
		
	end if;
	 
end process;

process(current_state,LATCHC,SHIFTC, inp_4bit)
begin
  C_out<='0';
  case(current_state) is
	 when Idle =>
	  if(LATCHC='1') then
			inp_4bit_reg<= inp_4bit;
			next_state <= wait_shift_1;
	  else
			next_state <= Idle;
	  end if;
	  
	 when wait_shift_1 =>
	  if(SHIFTC='1') then
			C_out<= inp_4bit_reg(0);
			
			inp_4bit_reg <= ('0' & inp_4bit_reg(3 downto 1));
			
			next_state <= wait_shift_2;
	  else
		next_state <= wait_shift_1;
	  end if;
	 when wait_shift_2 =>
	  if(SHIFTC='1') then
			C_out<= inp_4bit_reg(0);
			inp_4bit_reg <= ('0' & inp_4bit_reg(3 downto 1));
			next_state <= wait_shift_3;
	  else
		next_state <= wait_shift_2;
	  end if;
	  
	 when wait_shift_3 =>
	  if(SHIFTC='1') then
			C_out<= inp_4bit_reg(0);
			
			inp_4bit_reg <= ('0' & inp_4bit_reg(3 downto 1));
			next_state <= finish;
	  else	
		next_state <= wait_shift_3;
	  end if;
	 when finish =>
			C_out<= inp_4bit_reg(0);
			next_state <= Idle;
	end case;
end process;	

end Behavioral;

