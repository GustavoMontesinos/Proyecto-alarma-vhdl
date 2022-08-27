--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:56:20 01/14/2021
-- Design Name:   
-- Module Name:   D:/javid/Documentos/Octavo/vlsii/PROYECTO 2 PARCIAL/detector4bits-20210107T001808Z-001/Talller/test.vhd
-- Project Name:  Talller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Taller
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Taller
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         selector : IN  std_logic;
         s1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal selector : std_logic := '0';

 	--Outputs
   signal s1 : std_logic;

   -- Clock period definitions
   constant CLK_period  : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Taller PORT MAP (
          clk => clk,
          reset => reset,
          selector => selector,
          s1 => s1
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
      reset<='1';
		selector<='0';
      wait for clk_period*30;
		selector<='0';
		selector2<='0';
      wait for clk_period*30;
		selector<='0';
      wait for clk_period*30;
		selector<='1';
      wait for clk_period*30;
      -- insert stimulus here 

      wait;
   end process;

END;
