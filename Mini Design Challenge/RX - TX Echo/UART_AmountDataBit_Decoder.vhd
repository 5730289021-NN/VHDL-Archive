----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:07:50 01/11/2017 
-- Design Name: 
-- Module Name:    UART_AmountDataBit_Decoder - Behavioral 
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

entity UART_AmountDataBit_Decoder is
    Port ( 
			  Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           AmountBitSWIn : in  STD_LOGIC_VECTOR (1 downto 0);
           UART_AmountDataBit : out  STD_LOGIC_VECTOR (3 downto 0)
			 );
end UART_AmountDataBit_Decoder;

architecture Behavioral of UART_AmountDataBit_Decoder is

begin

	UART_AmountDataBit_Decoder: process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
				UART_AmountDataBit <= "1000"; -- 8 Bit Default
			else
				case AmountBitSWIn is
					when "00" => UART_AmountDataBit <= "0111"; --7 Bit
					when "01" => UART_AmountDataBit <= "1000"; --8 Bit
					when "10" => UART_AmountDataBit <= "1001"; --9 Bit
					when others => UART_AmountDataBit <= "1000"; --8 Bit
				end case;
			end if;
		end if;
	end process UART_AmountDataBit_Decoder;

end Behavioral;

