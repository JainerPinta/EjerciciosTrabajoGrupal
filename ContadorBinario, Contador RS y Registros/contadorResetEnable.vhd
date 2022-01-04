----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:39 12/17/2021 
-- Design Name: 
-- Module Name:    contadorResetEnable - Behavioral 
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
use ieee.std_logic_unsigned.all;

entity contadorResetEnable is
port(clk, reset: in std_logic;
				  q: inout std_logic_vector(3 downto 0));
end contadorResetEnable;

architecture Behavioral of contadorResetEnable is

begin
	process (clk, reset)
		begin
			if (clk'event and clk='1') then
				q<="0000";
			else
				q<=q+1;
			end if;
	end process;
end Behavioral;

