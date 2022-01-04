--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:42:05 12/17/2021
-- Design Name:   
-- Module Name:   /home/diego/Documentos/Arquitectura de Ordenadores/traClase/testBench_reg4Bits.vhd
-- Project Name:  traClase
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registroParalelo4bits
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
 
ENTITY testBench_reg4Bits IS
END testBench_reg4Bits;
 
ARCHITECTURE behavior OF testBench_reg4Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registroParalelo4bits
    PORT(
         D : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         CLR : IN  std_logic;
         Q : INOUT  std_logic_vector(3 downto 0);
         Qn : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal CLR : std_logic := '0';

	--BiDirs
   signal Q : std_logic_vector(3 downto 0);
   signal Qn : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registroParalelo4bits PORT MAP (
          D => D,
          clk => clk,
          CLR => CLR,
          Q => Q,
          Qn => Qn
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
