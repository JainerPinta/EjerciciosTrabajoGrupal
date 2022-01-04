----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:40 12/17/2021 
-- Design Name: 
-- Module Name:    contadorBinario4Bits - Behavioral 
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


entity contadorBinario4Bits is
port (clk: in std_logic;
		  q: inout std_logic_vector (3 downto 0));
end contadorBinario4Bits;

architecture Behavioral of contadorBinario4Bits is
begin
	process (clk)
	 begin
		if (clk'event and clk ='1') then
			q<= q+1;
		end if;
	end process;
end Behavioral;

