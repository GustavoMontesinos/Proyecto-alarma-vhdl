library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ff_jk is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end ff_jk;

architecture Behavioral of ff_jk is

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
