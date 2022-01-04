----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:38 12/17/2021 
-- Design Name: 
-- Module Name:    registroParalelo - Behavioral 
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

entity registroParalelo is 
port(
	D: in std_logic_vector (0 to 7);
	clk: in std_logic;
	Q: out std_logic_vector ( 0 to 7)
	);
end registroParalelo;

architecture Behavioral of registroParalelo is

begin
	process (clk) begin
		if (clk' event and clk= '1') then
			Q<=D;
		end if;
	end process;
end Behavioral;

