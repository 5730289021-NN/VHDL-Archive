library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity CNTGEN is
    Port ( CLK : in  STD_LOGIC;
           CNT : out  STD_LOGIC_vector(1 downto 0));
end CNTGEN;

architecture Behavioral of CNTGEN is
signal CNT1: std_logic_vector(1 downto 0);
begin
	process(CLK)
	begin
	if(rising_edge(CLK)) then
		CNT1 <= CNT1+1;
		end if;
end process;
CNT<=CNT1;
end Behavioral;

