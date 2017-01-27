----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:10 01/12/2017 
-- Design Name: 
-- Module Name:    UART_Buffer - Behavioral 
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

entity UART_Buffer is
	Port ( Clk						: in 	STD_LOGIC;
			 Rst 						: in	STD_LOGIC;
			 UART_BufferDataIn	: in	STD_LOGIC_VECTOR(9 downto 0);
			 UART_BufferDataOut	: out STD_LOGIC_VECTOR(9 downto 0);
			 UART_BufferWriteEnb	: in	STD_LOGIC
			 );
end UART_Buffer;



architecture Behavioral of UART_Buffer is

signal UART_Buffer : STD_LOGIC_VECTOR(9 downto 0) := "0000000000";

begin
	UART_Buffer_Process : process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
					UART_Buffer <= "0000000000"; -- 8 Bit Default
				else
					if(UART_BufferWriteEnb = '1') then
						UART_Buffer <= UART_BufferDataIn;
					end if;
					
			end if;
		end if;
	end process UART_Buffer_Process;
	
	UART_BufferDataOut <= UART_Buffer;
end Behavioral;

