----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:34:42 12/16/2021 
-- Design Name: 
-- Module Name:    latch2 - Behavioral 
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
Library ieee;
use ieee.std_logic1164.all;
entity latch2 is
port (x, control: in std_logic;
              salida .out std_logic);
end latch2;

architecture ejemplo of latch is
process ( dato,control)

begin
	if control="1" then
		salida <=dato;
	end if;
end process;
end ejemplo;
