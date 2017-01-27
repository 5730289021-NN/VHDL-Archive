----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:06 01/04/2017 
-- Design Name: 
-- Module Name:    PWM - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  LED : out STD_LOGIC;
           PWM : in  STD_LOGIC_VECTOR (7 downto 0)
           );
end PWM;

architecture Behavioral of PWM is

--signal PWMCount		 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";


begin
		
	PWM_Main: Process (Clk)
	variable PWMCount : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	Begin
		if(rising_edge(Clk)) then
			if (Rst = '0') then
				LED <= '0';
				PWMCount := "00000000";
			else
				PWMCount := PWMCount + 1;
				if(PWMCount > PWM) then
					LED <= '0';
				else
					LED <= '1';
				end if;
				if(PWMCount = "11111111") then
					PWMCount := "00000000";
				end if;
				
			end if;
		end if;
	End Process PWM_Main;

end Behavioral;

