
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity DFF is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DFF;

architecture Behavioral of DFF is

begin
process (clk)

variable money : integer := 70;

begin
if(clk='1' and clk'EVENT) then
Q<=D after 1000 ms;
end if ;
end process;


end Behavioral;
