----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:21:30 01/16/2017 
-- Design Name: 
-- Module Name:    Sine_ClkPerTickDecoder - Behavioral 
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

entity Sine_ClkPerTick_Decoder is
	Port ( Clk						: in  STD_LOGIC;
			 Rst						: in  STD_LOGIC;
			 FreqSWIn				: in	STD_LOGIC_VECTOR(2 downto 0);
			 Sine_ClkPerTick		: out	STD_LOGIC_VECTOR(18 downto 0)
			 );
end Sine_ClkPerTick_Decoder;

architecture Behavioral of Sine_ClkPerTick_Decoder is

begin
	
	Sine_ClkPerTick_Decoder: process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
				Sine_ClkPerTick <= "1111110110101101011"; -- 1 Hz
			else
				case FreqSWIn is
					when "000" => Sine_ClkPerTick <= "1111110110101101011"; -- 1 Hz
					when "001" => Sine_ClkPerTick <= "0111111011010110110"; -- 2 Hz
					when "010" => Sine_ClkPerTick <= "0101010010001111001"; -- 3 Hz
					when "011" => Sine_ClkPerTick <= "0011111101101011011"; -- 4 Hz
					when "100" => Sine_ClkPerTick <= "0011001010111100010"; -- 5 Hz
					when "101" => Sine_ClkPerTick <= "0010101001000111101"; -- 6 Hz
					when "110" => Sine_ClkPerTick <= "0010010000111101011"; -- 7 Hz
					when others => Sine_ClkPerTick <= "1111110110101101011"; -- 1 Hz
				end case;
			end if;
		end if;
	end process Sine_ClkPerTick_Decoder;


end Behavioral;

