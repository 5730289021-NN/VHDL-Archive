----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:11:11 12/06/2016 
-- Design Name: 
-- Module Name:    OneShot - Behavioral 
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

entity OneShot is
    Port ( Input : in  STD_LOGIC;
           Output : out  STD_LOGIC;
			  Clock : in STD_LOGIC);
end OneShot;

architecture Behavioral of OneShot is

begin
	process(Input,Clock)
	variable State : STD_LOGIC_VECTOR (1 downto 0) := "00";
	variable Delay : integer := 0;
	begin
		if(rising_edge(Clock)) then
			if(Input = '0' and State = "00") then
				State := "01";
				Output <= '0';
			elsif(Input = '0' and State = "01") then
				Delay := Delay + 1;
				if(Delay >= 1000000) then 
					Delay := 0;
					State := "10";
				end if;
				Output <= '1';
			elsif(Input = '1' and State = "10") then
				State := "00";
			end if;
		end if;
	end process;
end Behavioral;

