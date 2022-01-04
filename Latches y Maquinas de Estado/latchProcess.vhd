----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:07 12/16/2021 
-- Design Name: 
-- Module Name:    LatchProcess - ejemplo2 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity latchProcess is
    Port ( dato,control : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end LatchProcess;

architecture ejemplo2 of latchProcess is
begin
	process ( dato,control)
	begin
		if control='1' then
			salida <= dato   ;
		end if;
	end process;
end ejemplo2;

