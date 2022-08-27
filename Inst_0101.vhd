----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:47 01/14/2021 
-- Design Name: 
-- Module Name:    Inst_0101 - Behavioral 
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

entity generador_0101 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end generador_0101;

architecture Behavioral of generador_0101 is
component ff_jk port (
				j: in std_logic;
				k: in std_logic;
				clk: in std_logic;
				reset: in std_logic;
				q: out std_logic
);

end component;
signal j0,k0,j1,k1,q0,q1: std_logic;
begin
j0<= '1';
k0<='1';
j1<=q0;
k1<=q0;

Inst_ff_jk_1 : ff_jk port map (j=>j0,k=>k0,clk=>clk, reset=>reset, q=>q0);
Inst_ff_jk_2 : ff_jk port map (j=>j1,k=>k1,clk=>clk, reset=>reset, q=>q1);

salida<=q0;
end Behavioral;

