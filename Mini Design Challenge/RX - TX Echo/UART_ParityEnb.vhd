----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:40 01/11/2017 
-- Design Name: 
-- Module Name:    UART_ParityEnb - Behavioral 
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

entity UART_ParityEnb_Decoder is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           ParityEnbSWIn : in  STD_LOGIC;
           UART_ParityEnb : out  STD_LOGIC);
end UART_ParityEnb_Decoder;

architecture Behavioral of UART_ParityEnb_Decoder is

begin
	UART_ParityEnb_Decoder: process(Clk)
	begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
				UART_ParityEnb <= '0'; -- 8 Bit Default
			else
				if(ParityEnbSWIn = '1') then
					UART_ParityEnb <= '1';
				else
					UART_ParityEnb <= '0';
				end if;
			end if;
		end if;
	end process UART_ParityEnb_Decoder;


end Behavioral;

