----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:23 12/16/2021 
-- Design Name: 
-- Module Name:    contador - modulo 
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

entity contadorEjerc is
    Port ( clk, LD, UP : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (2 downto 0);
           Q : inout  STD_LOGIC_VECTOR (2 downto 0));
end contadorEjerc;

architecture modulo of contadorEjerc is
begin
process(clk, LD, D, UP)
begin
	if(clk'event and clk = '1') then
		if(LD = '0') then
				  Q<=D;
				ELSIF UP = '1' THEN
				Q<= Q + 1;
				  ELSE
			Q<=Q-1;
			end if;
			end if;
			end process;
end modulo;

