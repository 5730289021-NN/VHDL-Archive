----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:05 11/19/2016 
-- Design Name: 
-- Module Name:    Segment - Behavioral 
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
use ieee.std_logic_unsigned.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Segment is
    Port ( Segments : out  STD_LOGIC_VECTOR (6 downto 0);
           dc : out  STD_LOGIC_VECTOR(3 downto 0);
			  clk : in	STD_LOGIC;
			  bcd : in	STD_LOGIC_VECTOR (3 downto 0));
end Segment;

architecture Behavioral of Segment is
signal ledState: std_logic_vector(1 downto 0);


begin
	process (clk,bcd)
	 
	BEGIN
	if (clk'event and clk='1') then
		ledState <= ledState + "01";
		case ledState is
			when "00"=> dc <= "1110";  -- '0'
			when "01"=> dc <= "1101";  -- '1'
			when "10"=> dc <= "1011";  -- '2'
			when "11"=> dc <= "0111";  -- '3'
			when others=> dc <="1111"; 
		end case;
	
		if(ledState = "00") then
			case  bcd is
				when "0000"=> Segments <="0000001";  -- '0'
				when "0001"=> Segments <="1001111";  -- '1'
				when "0010"=> Segments <="0010010";  -- '2'
				when "0011"=> Segments <="0000110";  -- '3'
				when "0100"=> Segments <="1001100";  -- '4' 
				when "0101"=> Segments <="0100100";  -- '5'
				when "0110"=> Segments <="0100000";  -- '6'
				when "0111"=> Segments <="0001111";  -- '7'
				when "1000"=> Segments <="0000000";  -- '8'
				when "1001"=> Segments <="0000100";  -- '9'
				 --nothing is displayed when a number more than 9 is given as input. 
				when others=> Segments <="1111111"; 
			end case;
		end if;
	end if;

	end process;

end Behavioral;