----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:05:56 12/16/2021 
-- Design Name: 
-- Module Name:    MaquinaDeEstados3 - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

entity MaquinaDeEstados3 is port( 
clk,x: in std_logic; 5 z: out std_logic);
end MaquinaDeEstados3;

architecture Behavioral of diagrama is
type estados is (dO, di, d2, d3);
signal edo_presente, edo_futuro: estados;

begin
procesol: process (edo_presente, x); 
	begin 
		case edo__presente is 
			when dO => z <= '0'; 
				if x =' 1' then 
					edo_futuro <= di; 
				else 
					edo_futuro <= dO;
				end if;
			when di => z <='0';
				if x='l' then 
					edo_futuro <= d2;
				else
					edo_futuro <= di;
				end if;
			when d2 => z <='0';
				if x='l' then 
					edo_futuro <= d3;
				else 
					edo_futuro <= dO; 
				end if;
			when d3 => 1
				if x='l' then
					edo_futuro <= dO;
					z <='1'; 35 
				else 
					edo_futuro <= d3;
					z <= '0'; 38 
				end if;
		end case; 
end process procesol;

	proceso2: process(clk); 
	begin 
		if (clk'event and clk='l') then
			edo_presente <= edo_futuro;
		end if; 
	end process proceso2;
end Behavioral;

