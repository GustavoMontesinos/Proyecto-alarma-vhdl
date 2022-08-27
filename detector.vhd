----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:18:47 01/21/2021 
-- Design Name: 
-- Module Name:    detector - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity detector is
    Port ( ent1 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           bien : out  STD_LOGIC;
           mal : out  STD_LOGIC);
end detector;

architecture Behavioral of detector is

signal j0, k0, j1, k1, j2, k2, j3, k3: STD_LOGIC;
signal q0, q1, q2, q3: STD_LOGIC;

	COMPONENT ffjk
	PORT(
		j : IN std_logic;
		k : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;
		q : OUT std_logic
		);
	END COMPONENT;

begin

j0 <= '1';
k0 <= '1';
j1 <= q0;
k1 <= q0;
j2 <= (not(ent1) and not(q0))or(ent1 and q0);
k2 <= (q1 and q0)or(ent1 and not(q1) and not(q0));
j3 <= (not(ent1) and (q1) and (q0)) or (q2 and q1 and q0);
k3 <= '1';

	Inst_ff_jk_0: ffjk PORT MAP(
		j => j0,
		k => k0,
		reset => reset,
		clk => clk,
		q => q0
	);
	
	Inst_ff_jk_1: ffjk PORT MAP(
		j => j1,
		k => k1,
		reset => reset,
		clk => clk,
		q => q1
	);

	Inst_ff_jk_2: ffjk PORT MAP(
		j => j2,
		k => k2,
		reset => reset,
		clk => clk,
		q => q2
	);

	Inst_ff_jk_3: ffjk PORT MAP(
		j => j3,
		k => k3,
		reset => reset,
		clk => clk,
		q => q3
	);

bien <= q2 and not(q1) and not(q0);
mal <= q3;

end Behavioral;

