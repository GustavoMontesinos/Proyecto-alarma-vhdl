----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:15 01/14/2021 
-- Design Name: 
-- Module Name:    Taller - Behavioral 
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity Generador4bits is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  selector : in  STD_LOGIC;
			  selector2 : in  STD_LOGIC;
           s1 : out  STD_LOGIC);
end Generador4bits;

architecture Behavioral of Generador4bits is
component generador_0101 port(
				clk: in std_logic;
				reset: in std_logic;
				salida: out std_logic
);
end component;
component generador_0011 port(
				clk: in std_logic;
				reset: in std_logic;
				salida: out std_logic
);
end component;
component generador_1001 port(
				clk: in std_logic;
				reset: in std_logic;
				salida: out std_logic
);
end component;
component generador_1011 port(
				clk: in std_logic;
				reset: in std_logic;
				salida: out std_logic
);
end component;
signal a,b,c,d: std_logic;
signal st: std_logic;

begin

Inst_0101 : generador_0101 port map (clk=>clk, reset=>reset, salida=>a);
Inst_0011 : generador_0011 port map (clk=>clk, reset=>reset, salida=>b);
Inst_1001 : generador_1001 port map (clk=>clk, reset=>reset, salida=>c);
Inst_1011 : generador_1011 port map (clk=>clk, reset=>reset, salida=>d);

   
      st <= d when selector='0' And selector2='0' else
            a when selector='0' And selector2='1' else
            b when selector='1' And selector2='0' else
				c when selector='1' And selector2='1';
s1<=st;		
end Behavioral;

