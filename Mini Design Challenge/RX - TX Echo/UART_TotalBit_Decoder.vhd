----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:29:37 01/11/2017 
-- Design Name: 
-- Module Name:    UART_TotalBit_Decoder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_TotalBit_Decoder is
    Port ( 
			  Clk						: in  STD_LOGIC;
           Rst						: in  STD_LOGIC;
           UART_AmountDataBit : in  STD_LOGIC_VECTOR (3 downto 0);
           UART_ParityEnb		: in  STD_LOGIC;
			  UART_TotalBit		: out STD_LOGIC_VECTOR (3 downto 0)
			 );
end UART_TotalBit_Decoder;

architecture Behavioral of UART_TotalBit_Decoder is

begin

	UART_AmountDataBit_Decoder: process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
				UART_TotalBit <= "1000"; -- 8 Bit Default
			else
				if(UART_ParityEnb = '1') then
					UART_TotalBit <= STD_LOGIC_VECTOR(unsigned(UART_AmountDataBit) + 1);
				else
					UART_TotalBit <= UART_AmountDataBit;
				end if;
			end if;
		end if;
	end process UART_AmountDataBit_Decoder;


end Behavioral;

