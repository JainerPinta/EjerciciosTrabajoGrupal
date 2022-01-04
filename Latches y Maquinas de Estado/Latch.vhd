----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:05 12/16/2021 
-- Design Name: 
-- Module Name:    Latch - Behavioral 
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
entity latch is
port (x, control: in std_logic;
               z: out std_logic);
end latch;

architecture Behavioral of latch is
begin
	z<=x when (control="1");
end Behavioral;

