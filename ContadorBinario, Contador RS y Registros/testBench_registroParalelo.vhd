--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:30:15 12/17/2021
-- Design Name:   
-- Module Name:   /home/diego/Documentos/Arquitectura de Ordenadores/traClase/testBench_registroParalelo.vhd
-- Project Name:  traClase
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registroParalelo
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testBench_registroParalelo IS
END testBench_registroParalelo;
 
ARCHITECTURE behavior OF testBench_registroParalelo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registroParalelo
    PORT(
         D : IN  std_logic_vector(0 to 7);
         clk : IN  std_logic;
         Q : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(0 to 7) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(0 to 7);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registroParalelo PORT MAP (
          D => D,
          clk => clk,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
