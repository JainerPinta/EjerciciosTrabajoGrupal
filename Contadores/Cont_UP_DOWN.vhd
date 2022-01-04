----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:39 12/16/2021 
-- Design Name: 
-- Module Name:    contador - a_contador 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador is
    Port ( clk : in  STD_LOGIC;
				  UP : in  STD_LOGIC;
					 Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture a_contador of contador is
begin
	process(UP, clk) begin
		if (clk'event and clk = '1') then
			if(UP = '0') then
						Q <= Q + 1;
			else
						Q <= Q - 1;
			end if;
		end if;
	end process;
end a_contador;

