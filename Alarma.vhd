----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:23:05 01/20/2021 
-- Design Name: 
-- Module Name:    Alarma - Behavioral 
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

entity Alarma is
    Port ( selector : in  STD_LOGIC;
			  selector2 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           s1 : out  STD_LOGIC;
           cuenta : out  STD_LOGIC_VECTOR (7 downto 0);
           bloqueo : out  STD_LOGIC_VECTOR (7 DOWNTO 0);
           luz : out  STD_LOGIC;
           buzzer : out  STD_LOGIC);
end Alarma;

architecture Behavioral of Alarma is

signal buzAux, luzaux, buzaux3, AUX2,buzaux4,buzaux6, salida, salida2 : std_logic;

signal buzaux2, buzaux5 : STD_LOGIC_VECTOR (7 DOWNTO 0);

COMPONENT Generador4bits
	PORT(
		clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
		selector : in  STD_LOGIC;
		selector2 : in  STD_LOGIC;
      s1 : out  STD_LOGIC);
	END COMPONENT;

COMPONENT detector
	PORT(
		ent1 : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		bien : OUT std_logic;
		mal : OUT std_logic
		);
	END COMPONENT;

COMPONENT contador
	PORT(
		aux : IN std_logic;
		contreset : IN std_logic;      
		contreset2 : IN std_logic; 
		cuenta : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
COMPONENT temporizador
	PORT(
		activa : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		bloquea : OUT std_logic_vector(7 downto 0);
		aux : OUT std_logic;
		aux6 : OUT std_logic
		);
	END COMPONENT;	
	
begin
	
Inst_generador: Generador4bits PORT MAP(
		selector => selector,
		selector2 => selector2,
		clk => clk,
		reset => AUX2, -- luz
		s1 => buzaux4
	);

Inst_detector: detector PORT MAP(
		ent1 => buzaux4,
		clk => clk,
		reset => AUX2,
		bien => luzaux, -- luz
		mal => buzAux
	);
	
Inst_contador: contador PORT MAP(
		aux => buzAux,
		contreset => salida,
		contreset2 => buzaux6,
		cuenta => buzaux2
	);

Inst_temporizador: temporizador PORT MAP(
		activa => buzaux2,
		bloquea => buzaux5, --buzzer
		clk => clk,
		aux =>buzaux3,
		aux6 =>buzaux6
	);	
bloqueo <= buzaux5;
	
	salida <= luzaux;
	salida2 <= buzaux3;
	luz <= luzaux;
	buzzer <= salida2;	
	cuenta <= buzaux2;
	s1<= buzaux4;
	
AUX2<= reset and not(buzaux3);

end Behavioral;

