----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:27 01/16/2017 
-- Design Name: 
-- Module Name:    Sine_Generator - Behavioral 
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

entity Sine_Generator is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  Enb	: in	STD_LOGIC;
			  Sine_ClkPerTick : in STD_LOGIC_VECTOR(18 downto 0);
           Sine_Value : out  STD_LOGIC_VECTOR (7 downto 0));
end Sine_Generator;

architecture Behavioral of Sine_Generator is

signal ClkCounter : STD_LOGIC_VECTOR(18 downto 0) := "0000000000000000000";
signal Sine_Position : STD_LOGIC_VECTOR(7 downto 0) := "00000000";

begin

	Sine_Generator : process(Clk)
 	Begin
		if(rising_edge(Clk)) then
			if (Rst = '0' or Enb = '0') then
				Sine_Value <= "10000000";
				ClkCounter <= "0000000000000000000";
				Sine_Position <= "00000000";
			else
				if(ClkCounter = Sine_ClkPerTick) then
					ClkCounter <= "0000000000000000000";
					case Sine_Position is
						when "00000000" => Sine_Value <= "10000000";
						when "00000001" => Sine_Value <= "10000011";
						when "00000010" => Sine_Value <= "10000110";
						when "00000011" => Sine_Value <= "10001001";
						when "00000100" => Sine_Value <= "10001100";
						when "00000101" => Sine_Value <= "10001111";
						when "00000110" => Sine_Value <= "10010010";
						when "00000111" => Sine_Value <= "10010101";
						when "00001000" => Sine_Value <= "10011000";
						when "00001001" => Sine_Value <= "10011100";
						when "00001010" => Sine_Value <= "10011111";
						when "00001011" => Sine_Value <= "10100010";
						when "00001100" => Sine_Value <= "10100101";
						when "00001101" => Sine_Value <= "10101000";
						when "00001110" => Sine_Value <= "10101011";
						when "00001111" => Sine_Value <= "10101110";
						when "00010000" => Sine_Value <= "10110000";
						when "00010001" => Sine_Value <= "10110011";
						when "00010010" => Sine_Value <= "10110110";
						when "00010011" => Sine_Value <= "10111001";
						when "00010100" => Sine_Value <= "10111100";
						when "00010101" => Sine_Value <= "10111111";
						when "00010110" => Sine_Value <= "11000001";
						when "00010111" => Sine_Value <= "11000100";
						when "00011000" => Sine_Value <= "11000111";
						when "00011001" => Sine_Value <= "11001001";
						when "00011010" => Sine_Value <= "11001100";
						when "00011011" => Sine_Value <= "11001110";
						when "00011100" => Sine_Value <= "11010001";
						when "00011101" => Sine_Value <= "11010011";
						when "00011110" => Sine_Value <= "11010101";
						when "00011111" => Sine_Value <= "11011000";
						when "00100000" => Sine_Value <= "11011010";
						when "00100001" => Sine_Value <= "11011100";
						when "00100010" => Sine_Value <= "11011110";
						when "00100011" => Sine_Value <= "11100000";
						when "00100100" => Sine_Value <= "11100010";
						when "00100101" => Sine_Value <= "11100100";
						when "00100110" => Sine_Value <= "11100110";
						when "00100111" => Sine_Value <= "11101000";
						when "00101000" => Sine_Value <= "11101010";
						when "00101001" => Sine_Value <= "11101011";
						when "00101010" => Sine_Value <= "11101101";
						when "00101011" => Sine_Value <= "11101111";
						when "00101100" => Sine_Value <= "11110000";
						when "00101101" => Sine_Value <= "11110010";
						when "00101110" => Sine_Value <= "11110011";
						when "00101111" => Sine_Value <= "11110100";
						when "00110000" => Sine_Value <= "11110110";
						when "00110001" => Sine_Value <= "11110111";
						when "00110010" => Sine_Value <= "11111000";
						when "00110011" => Sine_Value <= "11111001";
						when "00110100" => Sine_Value <= "11111010";
						when "00110101" => Sine_Value <= "11111011";
						when "00110110" => Sine_Value <= "11111011";
						when "00110111" => Sine_Value <= "11111100";
						when "00111000" => Sine_Value <= "11111101";
						when "00111001" => Sine_Value <= "11111101";
						when "00111010" => Sine_Value <= "11111110";
						when "00111011" => Sine_Value <= "11111110";
						when "00111100" => Sine_Value <= "11111110";
						when "00111101" => Sine_Value <= "11111111";
						when "00111110" => Sine_Value <= "11111111";
						when "00111111" => Sine_Value <= "11111111";
						when "01000000" => Sine_Value <= "11111111";
						when "01000001" => Sine_Value <= "11111111";
						when "01000010" => Sine_Value <= "11111111";
						when "01000011" => Sine_Value <= "11111111";
						when "01000100" => Sine_Value <= "11111110";
						when "01000101" => Sine_Value <= "11111110";
						when "01000110" => Sine_Value <= "11111101";
						when "01000111" => Sine_Value <= "11111101";
						when "01001000" => Sine_Value <= "11111100";
						when "01001001" => Sine_Value <= "11111100";
						when "01001010" => Sine_Value <= "11111011";
						when "01001011" => Sine_Value <= "11111010";
						when "01001100" => Sine_Value <= "11111001";
						when "01001101" => Sine_Value <= "11111000";
						when "01001110" => Sine_Value <= "11110111";
						when "01001111" => Sine_Value <= "11110110";
						when "01010000" => Sine_Value <= "11110101";
						when "01010001" => Sine_Value <= "11110100";
						when "01010010" => Sine_Value <= "11110010";
						when "01010011" => Sine_Value <= "11110001";
						when "01010100" => Sine_Value <= "11101111";
						when "01010101" => Sine_Value <= "11101110";
						when "01010110" => Sine_Value <= "11101100";
						when "01010111" => Sine_Value <= "11101011";
						when "01011000" => Sine_Value <= "11101001";
						when "01011001" => Sine_Value <= "11100111";
						when "01011010" => Sine_Value <= "11100101";
						when "01011011" => Sine_Value <= "11100011";
						when "01011100" => Sine_Value <= "11100001";
						when "01011101" => Sine_Value <= "11011111";
						when "01011110" => Sine_Value <= "11011101";
						when "01011111" => Sine_Value <= "11011011";
						when "01100000" => Sine_Value <= "11011001";
						when "01100001" => Sine_Value <= "11010111";
						when "01100010" => Sine_Value <= "11010100";
						when "01100011" => Sine_Value <= "11010010";
						when "01100100" => Sine_Value <= "11001111";
						when "01100101" => Sine_Value <= "11001101";
						when "01100110" => Sine_Value <= "11001010";
						when "01100111" => Sine_Value <= "11001000";
						when "01101000" => Sine_Value <= "11000101";
						when "01101001" => Sine_Value <= "11000011";
						when "01101010" => Sine_Value <= "11000000";
						when "01101011" => Sine_Value <= "10111101";
						when "01101100" => Sine_Value <= "10111010";
						when "01101101" => Sine_Value <= "10111000";
						when "01101110" => Sine_Value <= "10110101";
						when "01101111" => Sine_Value <= "10110010";
						when "01110000" => Sine_Value <= "10101111";
						when "01110001" => Sine_Value <= "10101100";
						when "01110010" => Sine_Value <= "10101001";
						when "01110011" => Sine_Value <= "10100110";
						when "01110100" => Sine_Value <= "10100011";
						when "01110101" => Sine_Value <= "10100000";
						when "01110110" => Sine_Value <= "10011101";
						when "01110111" => Sine_Value <= "10011010";
						when "01111000" => Sine_Value <= "10010111";
						when "01111001" => Sine_Value <= "10010100";
						when "01111010" => Sine_Value <= "10010001";
						when "01111011" => Sine_Value <= "10001110";
						when "01111100" => Sine_Value <= "10001010";
						when "01111101" => Sine_Value <= "10000111";
						when "01111110" => Sine_Value <= "10000100";
						when "01111111" => Sine_Value <= "10000001";
						when "10000000" => Sine_Value <= "01111110";
						when "10000001" => Sine_Value <= "01111011";
						when "10000010" => Sine_Value <= "01111000";
						when "10000011" => Sine_Value <= "01110101";
						when "10000100" => Sine_Value <= "01110001";
						when "10000101" => Sine_Value <= "01101110";
						when "10000110" => Sine_Value <= "01101011";
						when "10000111" => Sine_Value <= "01101000";
						when "10001000" => Sine_Value <= "01100101";
						when "10001001" => Sine_Value <= "01100010";
						when "10001010" => Sine_Value <= "01011111";
						when "10001011" => Sine_Value <= "01011100";
						when "10001100" => Sine_Value <= "01011001";
						when "10001101" => Sine_Value <= "01010110";
						when "10001110" => Sine_Value <= "01010011";
						when "10001111" => Sine_Value <= "01010000";
						when "10010000" => Sine_Value <= "01001101";
						when "10010001" => Sine_Value <= "01001010";
						when "10010010" => Sine_Value <= "01000111";
						when "10010011" => Sine_Value <= "01000101";
						when "10010100" => Sine_Value <= "01000010";
						when "10010101" => Sine_Value <= "00111111";
						when "10010110" => Sine_Value <= "00111100";
						when "10010111" => Sine_Value <= "00111010";
						when "10011000" => Sine_Value <= "00110111";
						when "10011001" => Sine_Value <= "00110101";
						when "10011010" => Sine_Value <= "00110010";
						when "10011011" => Sine_Value <= "00110000";
						when "10011100" => Sine_Value <= "00101101";
						when "10011101" => Sine_Value <= "00101011";
						when "10011110" => Sine_Value <= "00101000";
						when "10011111" => Sine_Value <= "00100110";
						when "10100000" => Sine_Value <= "00100100";
						when "10100001" => Sine_Value <= "00100010";
						when "10100010" => Sine_Value <= "00100000";
						when "10100011" => Sine_Value <= "00011110";
						when "10100100" => Sine_Value <= "00011100";
						when "10100101" => Sine_Value <= "00011010";
						when "10100110" => Sine_Value <= "00011000";
						when "10100111" => Sine_Value <= "00010110";
						when "10101000" => Sine_Value <= "00010100";
						when "10101001" => Sine_Value <= "00010011";
						when "10101010" => Sine_Value <= "00010001";
						when "10101011" => Sine_Value <= "00010000";
						when "10101100" => Sine_Value <= "00001110";
						when "10101101" => Sine_Value <= "00001101";
						when "10101110" => Sine_Value <= "00001011";
						when "10101111" => Sine_Value <= "00001010";
						when "10110000" => Sine_Value <= "00001001";
						when "10110001" => Sine_Value <= "00001000";
						when "10110010" => Sine_Value <= "00000111";
						when "10110011" => Sine_Value <= "00000110";
						when "10110100" => Sine_Value <= "00000101";
						when "10110101" => Sine_Value <= "00000100";
						when "10110110" => Sine_Value <= "00000011";
						when "10110111" => Sine_Value <= "00000011";
						when "10111000" => Sine_Value <= "00000010";
						when "10111001" => Sine_Value <= "00000010";
						when "10111010" => Sine_Value <= "00000001";
						when "10111011" => Sine_Value <= "00000001";
						when "10111100" => Sine_Value <= "00000000";
						when "10111101" => Sine_Value <= "00000000";
						when "10111110" => Sine_Value <= "00000000";
						when "10111111" => Sine_Value <= "00000000";
						when "11000000" => Sine_Value <= "00000000";
						when "11000001" => Sine_Value <= "00000000";
						when "11000010" => Sine_Value <= "00000000";
						when "11000011" => Sine_Value <= "00000001";
						when "11000100" => Sine_Value <= "00000001";
						when "11000101" => Sine_Value <= "00000001";
						when "11000110" => Sine_Value <= "00000010";
						when "11000111" => Sine_Value <= "00000010";
						when "11001000" => Sine_Value <= "00000011";
						when "11001001" => Sine_Value <= "00000100";
						when "11001010" => Sine_Value <= "00000100";
						when "11001011" => Sine_Value <= "00000101";
						when "11001100" => Sine_Value <= "00000110";
						when "11001101" => Sine_Value <= "00000111";
						when "11001110" => Sine_Value <= "00001000";
						when "11001111" => Sine_Value <= "00001001";
						when "11010000" => Sine_Value <= "00001011";
						when "11010001" => Sine_Value <= "00001100";
						when "11010010" => Sine_Value <= "00001101";
						when "11010011" => Sine_Value <= "00001111";
						when "11010100" => Sine_Value <= "00010000";
						when "11010101" => Sine_Value <= "00010010";
						when "11010110" => Sine_Value <= "00010100";
						when "11010111" => Sine_Value <= "00010101";
						when "11011000" => Sine_Value <= "00010111";
						when "11011001" => Sine_Value <= "00011001";
						when "11011010" => Sine_Value <= "00011011";
						when "11011011" => Sine_Value <= "00011101";
						when "11011100" => Sine_Value <= "00011111";
						when "11011101" => Sine_Value <= "00100001";
						when "11011110" => Sine_Value <= "00100011";
						when "11011111" => Sine_Value <= "00100101";
						when "11100000" => Sine_Value <= "00100111";
						when "11100001" => Sine_Value <= "00101010";
						when "11100010" => Sine_Value <= "00101100";
						when "11100011" => Sine_Value <= "00101110";
						when "11100100" => Sine_Value <= "00110001";
						when "11100101" => Sine_Value <= "00110011";
						when "11100110" => Sine_Value <= "00110110";
						when "11100111" => Sine_Value <= "00111000";
						when "11101000" => Sine_Value <= "00111011";
						when "11101001" => Sine_Value <= "00111110";
						when "11101010" => Sine_Value <= "01000000";
						when "11101011" => Sine_Value <= "01000011";
						when "11101100" => Sine_Value <= "01000110";
						when "11101101" => Sine_Value <= "01001001";
						when "11101110" => Sine_Value <= "01001100";
						when "11101111" => Sine_Value <= "01001111";
						when "11110000" => Sine_Value <= "01010001";
						when "11110001" => Sine_Value <= "01010100";
						when "11110010" => Sine_Value <= "01010111";
						when "11110011" => Sine_Value <= "01011010";
						when "11110100" => Sine_Value <= "01011101";
						when "11110101" => Sine_Value <= "01100000";
						when "11110110" => Sine_Value <= "01100011";
						when "11110111" => Sine_Value <= "01100111";
						when "11111000" => Sine_Value <= "01101010";
						when "11111001" => Sine_Value <= "01101101";
						when "11111010" => Sine_Value <= "01110000";
						when "11111011" => Sine_Value <= "01110011";
						when "11111100" => Sine_Value <= "01110110";
						when "11111101" => Sine_Value <= "01111001";
						when "11111110" => Sine_Value <= "01111100";
						when "11111111" => Sine_Value <= "10000000";
						when others		=> Sine_Value <= "10000000";
					end case;
					Sine_Position <= Sine_Position + 1;
				else
					ClkCounter <= ClkCounter + 1;
				end if;
			end if;
		end if;
		
	End Process Sine_Generator;


end Behavioral;

