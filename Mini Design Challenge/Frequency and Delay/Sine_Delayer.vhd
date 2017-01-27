----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:53 01/17/2017 
-- Design Name: 
-- Module Name:    Sine_Delayer - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sine_Delayer is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Sine_DelayTime : in  STD_LOGIC_VECTOR (23 downto 0);
			  Number	: in	 STD_LOGIC_VECTOR(3 downto 0);
           OutEnb : out  STD_LOGIC
			  );
end Sine_Delayer;

architecture Behavioral of Sine_Delayer is

--signal Delayed : STD_LOGIC := '0';

signal OutEnbBuffer : STD_LOGIC := '0';
signal ClkCounter : STD_LOGIC_VECTOR (23 downto 0) := (others => '0');
signal NumberCounter : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');


begin

	Sine_ClkPerTick_Decoder: process(Clk)
	

	
	begin
		if (rising_edge(Clk)) then
			if (Rst = '0') then
				OutEnbBuffer <= '0'; -- No Output
				ClkCounter <= (others => '0');
				NumberCounter <= (others => '0');
			else
				if(OutEnbBuffer = '0') then
					if(NumberCounter = Number) then
						OutEnbBuffer <= '1';
					else
						if(ClkCounter = Sine_DelayTime) then
							NumberCounter <= NumberCounter + '1';
							ClkCounter <= (others => '0');
						else
							ClkCounter <= ClkCounter + '1';
						end if;
					end if;
				end if;
			end if;
		end if;
	end process Sine_ClkPerTick_Decoder;
	
	OutEnb <= OutEnbBuffer;

end Behavioral;

