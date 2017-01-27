----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:49 01/11/2017 
-- Design Name: 
-- Module Name:    UART_ClkPerBit_Decoder - Behavioral 
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

entity UART_ClkPerBit_Decoder is
	Port( 
			Clk 				: in 	STD_LOGIC;
			Rst 				: in 	STD_LOGIC;
			BaudRateSWIn	: in 	STD_LOGIC_VECTOR(2 downto 0);
			UART_ClkPerBit : out STD_LOGIC_VECTOR(15 downto 0)
			);
			
			
end UART_ClkPerBit_Decoder;

architecture Behavioral of UART_ClkPerBit_Decoder is

begin
	
	UART_ClkPerBit_Decoder: process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
				UART_ClkPerBit <= "0011011000011110"; -- 9600 bps
			else
				case BaudRateSWIn is
					when "000" => UART_ClkPerBit <= "0110110000111100"; --4800 bps
					when "001" => UART_ClkPerBit <= "0011011000011110"; --9600 bps
					when "010" => UART_ClkPerBit <= "0010010000010100"; --14400 bps
					when "011" => UART_ClkPerBit <= "0001101100001111"; --19200 bps
					when "100" => UART_ClkPerBit <= "0000110110001000"; --38400 bps
					when "101" => UART_ClkPerBit <= "0000100100000101"; --57600 bps
					when "110" => UART_ClkPerBit <= "0000010010000011"; --115200 bps
					when "111" => UART_ClkPerBit <= "0000001001000001"; --230400 bps
					when others => UART_ClkPerBit <= "0011011000011110"; --9600 bps
				end case;
			end if;
		end if;
	end process UART_ClkPerBit_Decoder;


end Behavioral;

