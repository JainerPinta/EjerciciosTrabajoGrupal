----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:49 12/17/2021 
-- Design Name: 
-- Module Name:    registroParalelo4bits - Behavioral 
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

entity registroParalelo4bits is
	port(
		D: in std_logic_vector(3 downto 0);
		clk,CLR: in std_logic;
		Q,Qn: inout std_logic_vector(3 downto 0)
	);
end registroParalelo4bits;

architecture Behavioral of registroParalelo4bits is

begin
	process (clk,CLR) begin
		if(clk' event and clk= '1') then
			if (CLR = '1') then
				Q<=D;
				Qn<=not Q;
			else
				Q<="0000";
				Qn<="1111";
			end if;
		end if;
	end process;
end Behavioral;

