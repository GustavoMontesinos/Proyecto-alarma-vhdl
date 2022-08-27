----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:13 01/22/2021 
-- Design Name: 
-- Module Name:    ffjk - Behavioral 
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

entity ffjk is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end ffjk;

architecture Behavioral of ffjk is

signal temp: STD_LOGIC; 
begin

process (clk, reset)

begin
		if reset='0' then
			temp <= '0';
		elsif (clk'event and clk='0') then
			if (j='0' and k='0') then
				temp <= temp;
			end if;
			if (j='0' and k='1') then
				temp <= '0';
			end if;
			if (j='1' and k='0') then
				temp <= '1';
			end if;
			if (j='1' and k='1') then
				temp <= not(temp);
			end if;
		end if;
	end process;
	
	q <= temp;

end Behavioral;
