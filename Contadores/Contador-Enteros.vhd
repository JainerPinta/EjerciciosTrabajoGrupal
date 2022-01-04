----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:14 12/16/2021 
-- Design Name: 
-- Module Name:    cont - arq_cont 
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

entity cont is
    Port ( clk, reset : in  STD_LOGIC;
           Q : inout  integer range 0 to 15);
end cont;

architecture arq_cont of cont is
begin
process (clk, reset) begin
if(clk'event and clk='1') then
if(reset = '1' or Q=9) then
Q<=0;
else
	Q<=Q+1;
	end if;
	end if;
end process;
end arq_cont;

