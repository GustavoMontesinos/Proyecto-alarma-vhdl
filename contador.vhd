----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:29:15 01/21/2021 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

entity contador is
    Port ( aux : in  STD_LOGIC;
           contreset : in  STD_LOGIC;
			  contreset2 : IN std_logic;
           cuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end contador;

architecture Behavioral of contador is

--contador
signal conta : integer range 0 to 255:=0;
--signal aux : STD_LOGIC;

begin

process (aux, contreset,contreset2)
begin


if (contreset = '1')then
	conta <= 0;
elsif(aux='1') then
	conta <= conta+1;
	if (conta = 3 )then
	if (contreset2 = '1')then
	conta <= 0;
	else
	conta <= 3;
	end if;
	conta<=conta;
	end if;
else
	if (conta = 3 )then
	if (contreset2 = '1')then
	conta <= 0;
	else
	conta <= 3;
	end if;
	else
	conta<=conta;
	end if;	
end if;
end process;
cuenta <= STD_LOGIC_VECTOR(to_unsigned(conta, 8));

end Behavioral;

