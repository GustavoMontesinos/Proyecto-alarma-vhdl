--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:33:06 01/22/2021
-- Design Name:   
-- Module Name:   D:/javid/Documentos/Octavo/vlsii/PROYECTO 2 PARCIAL/detector4bits-20210107T001808Z-001/Talller/fufufuf.vhd
-- Project Name:  Talller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alarma
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
 
ENTITY fufufuf IS
END fufufuf;
 
ARCHITECTURE behavior OF fufufuf IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alarma
    PORT(
         selector : IN  std_logic;
         selector2 : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         s1 : OUT  std_logic;
         cuenta : OUT  std_logic_vector(7 downto 0);
         bloqueo : OUT  std_logic_vector(7 downto 0);
         luz : OUT  std_logic;
         buzzer : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal selector : std_logic := '0';
   signal selector2 : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal s1 : std_logic;
   signal cuenta : std_logic_vector(7 downto 0);
   signal bloqueo : std_logic_vector(7 downto 0);
   signal luz : std_logic;
   signal buzzer : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alarma PORT MAP (
          selector => selector,
          selector2 => selector2,
          clk => clk,
          reset => reset,
          s1 => s1,
          cuenta => cuenta,
          bloqueo => bloqueo,
          luz => luz,
          buzzer => buzzer
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
		reset<='1';
		selector<='0';
		selector2<='0';
      wait for clk_period*11;
		selector<='1';
		selector2<='0';
      wait for clk_period*22;
		selector<='1';
		selector2<='1';
      wait for clk_period*4;
		selector<='0';
		selector2<='0';
      wait for clk_period*17; 
		selector<='0';
		selector2<='1';
      wait for clk_period*22;		
      selector<='1';
		selector2<='0';
      wait for clk_period*4;

      wait;
   end process;

END;
