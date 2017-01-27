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

entity Sine_ClkPerTick_Decoder_Special is
	Port ( Clk						: in  STD_LOGIC;
			 Rst						: in  STD_LOGIC;					
			 UART_FreqIn			: in	STD_LOGIC_VECTOR(7 downto 0);
			 Sine_ClkPerTick		: out	STD_LOGIC_VECTOR(11 downto 0)
			 );
end Sine_ClkPerTick_Decoder_Special;

architecture Behavioral of Sine_ClkPerTick_Decoder_Special is

begin
	
	Sine_ClkPerTick_Decoder: process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
				Sine_ClkPerTick <= x"F83"; -- 1 Hz
			else
				case UART_FreqIn is
					when "00000000" => Sine_ClkPerTick <= x"F83";
					when "00000001" => Sine_ClkPerTick <= x"DD2";
					when "00000010" => Sine_ClkPerTick <= x"C50";
					when "00000011" => Sine_ClkPerTick <= x"B9F";
					when "00000100" => Sine_ClkPerTick <= x"A5A";
					when "00000101" => Sine_ClkPerTick <= x"939";
					when "00000110" => Sine_ClkPerTick <= x"837";
					when "00000111" => Sine_ClkPerTick <= x"7C1";
					when "00001000" => Sine_ClkPerTick <= x"6E9";
					when "00001001" => Sine_ClkPerTick <= x"628";
					when "00001010" => Sine_ClkPerTick <= x"5CF";
					when "00001011" => Sine_ClkPerTick <= x"52D";
					when "00001100" => Sine_ClkPerTick <= x"49C";
					when "00001101" => Sine_ClkPerTick <= x"41B";
					when "00001110" => Sine_ClkPerTick <= x"3E0";
					when "00001111" => Sine_ClkPerTick <= x"374";
					when "00010000" => Sine_ClkPerTick <= x"314";
					when "00010001" => Sine_ClkPerTick <= x"2E7";
					when "00010010" => Sine_ClkPerTick <= x"296";
					when "00010011" => Sine_ClkPerTick <= x"24E";
					when "00010100" => Sine_ClkPerTick <= x"20D";
					when others => Sine_ClkPerTick <= x"F83";
				end case;
			end if;
		end if;
	end process Sine_ClkPerTick_Decoder;


end Behavioral;

