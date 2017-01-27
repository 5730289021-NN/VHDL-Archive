----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:58 11/19/2016 
-- Design Name: 
-- Module Name:    TopModule - Behavioral 
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
USE IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TopModule is
    Port ( Segments : out  STD_LOGIC_VECTOR (6 downto 0);
           DGs : out  STD_LOGIC_VECTOR (3 downto 0);
			  CLK : in	STD_LOGIC;
			  ADD : in	STD_LOGIC);
end TopModule;

architecture Behavioral of TopModule is

signal RAW : std_logic_vector(15 downto 0);
--signal INTEG : natural range 0 to 65535;

--signal buff_INTEG : natural range 0 to 65535;
signal buff_DGs : std_logic_vector(3 downto 0);

signal bcd : STD_LOGIC_VECTOR (3 downto 0);




begin
	DGs <= buff_DGs;
	
	--INTEG <= to_integer(unsigned(RAW));
	process (ADD) begin
		if rising_edge(ADD) then
			RAW <= RAW + '1' after 1ms;
		end if;
	end process;
	
	process (clk,buff_DGs) begin
		if rising_edge(clk) then
			case  buff_DGs is
				when "1110"=> 
					buff_DGs <= "1101" after 1ms;
					bcd <= RAW(3 downto 0);
				when "1101"=>
					buff_DGs <="1011" after 1ms;
					bcd <= RAW(7 downto 4);
				when "1011"=>
					buff_DGs <="0111" after 1ms;
					bcd <= RAW(11 downto 8);
				when "0111"=>
					buff_DGs <="1110" after 1ms;
					bcd <= RAW(15 downto 12);
				when others=>
					buff_DGs <="1111" after 1ms;
			end case;
		end if;
	end process;
	
	process (clk,bcd) begin
		if rising_edge(clk) then
			case  bcd is -- 7 Segment ACTIVE LOW
				when "1111"=> Segments <="1111110";  -- '0' --Push Button Normally Close
				when "1110"=> Segments <="0110000";  -- '1'
				when "1101"=> Segments <="1101101";  -- '2'
				when "1100"=> Segments <="1111001";  -- '3'
				when "1011"=> Segments <="0110011";  -- '4' 
				when "1010"=> Segments <="1011011";  -- '5'
				when "1001"=> Segments <="1011111";  -- '6'
				when "1000"=> Segments <="1110000";  -- '7'
				when "0111"=> Segments <="1111111";  -- '8'
				when "0110"=> Segments <="1111011";  -- '9'
				when "0101"=> Segments <="1110111";  -- 'A'
				when "0100"=> Segments <="0011111";  -- 'B'
				when "0011"=> Segments <="0001101";  -- 'C'
				when "0010"=> Segments <="0111101";  -- 'D'
				when "0001"=> Segments <="1001111";  -- 'E'
				when "0000"=> Segments <="0111000";  -- 'F'
				--nothing is displayed when a number more than 9 is given as input. 
				when others=> Segments <="1111111"; 
			end case;
		end if;
	end process;
end Behavioral;
