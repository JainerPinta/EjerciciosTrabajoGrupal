----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:59 12/16/2021 
-- Design Name: 
-- Module Name:    usoVariables - Behavioral 
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

entity usoVariables is
port(d, clk:in std_logic;
		    q:out std_logic);
end usoVariables;

architecture Behavioral of usoVariables is

begin
process(clk)
variable a,b: std_logic;
begin
if(clk' event and clk='1') then
a:=d;
b:=a;
q<=b;
end if;
end process;
end Behavioral;

