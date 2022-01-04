--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:54:52 12/16/2021
-- Design Name:   
-- Module Name:   E:/Programas/Xilinx/Proyectos/TrabajoClaseAndGrupal/TestLatchRecurrente.vhd
-- Project Name:  TrabajoClaseAndGrupal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: latchRecurrente
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TestLatchRecurrente IS
END TestLatchRecurrente;
 
ARCHITECTURE behavior OF TestLatchRecurrente IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT latchRecurrente
    PORT(
         x : IN  std_logic;
         control : IN  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal control : std_logic := '0';

 	--Outputs
   signal z : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: latchRecurrente PORT MAP (
          x => x,
          control => control,
          z => z
        );
END;
