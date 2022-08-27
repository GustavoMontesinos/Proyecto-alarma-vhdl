----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:34:17 01/21/2021 
-- Design Name: 
-- Module Name:    temporizador - Behavioral 
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

entity temporizador is
    Port ( activa : in STD_LOGIC_vector (7 downto 0);
           clk : in  STD_LOGIC;
			  bloquea : out STD_LOGIC_vector (7 downto 0);
			  aux : out STD_LOGIC;
			  aux6 : out STD_LOGIC);
			  
end temporizador;

architecture Behavioral of temporizador is

signal conta : integer range 0 to 255;
begin

process (clk, activa)
begin
if (clk'event and clk='1') then
conta <= conta+1;
if (activa = "00000011" ) then	
	aux <= '1';
	aux6 <= '0';
	if (conta = 5)then
	conta <= 0;
	aux <= '0';
	aux6 <= '1';
	end if;	
else
	conta <= 0;
	aux <= '0';
	aux6 <= '0';
end if;
end if;
end process;
bloquea <= STD_LOGIC_VECTOR(to_unsigned(conta, 8));

end Behavioral;

