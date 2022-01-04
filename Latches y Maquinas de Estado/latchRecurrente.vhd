----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:51:21 12/16/2021 
-- Design Name: 
-- Module Name:    latchRecurrente - ejemplo 
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

entity latchRecurrente is
    Port ( x,control : in  STD_LOGIC;
           z : out  STD_LOGIC);
end latchRecurrente;

architecture ejemplo of latchRecurrente is
	
begin
	z <= x when  (control='1');
end ejemplo;