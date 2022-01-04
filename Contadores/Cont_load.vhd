----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:42 12/16/2021 
-- Design Name: 
-- Module Name:    contL - arq_contL 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contL is
    Port ( P: in  STD_LOGIC_VECTOR (3 downto 0);
           clk, LOAD, ENP, RESET: in  STD_LOGIC;
           Q: inout  STD_LOGIC_VECTOR (3 downto 0));
end contL;

architecture arq_contL of contL is
begin
process(clk, RESET, LOAD, ENP) begin
if(RESET = '1') then
		Q<="0000";
	elsif (clk'event and clk='1') then
		if(LOAD = '0' and ENP ='-') then
			Q <= P;
		elsif (LOAD ='1' and ENP = '0') then
			Q <= Q;
		elsif (LOAD ='1' and ENP = '1')then
		 Q <= Q + 1;
		end if;
	end if;
end process;
end arq_contL;

