----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:06:01 12/06/2016 
-- Design Name: 
-- Module Name:    Core - Behavioral 
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

entity Core is
    Port ( Segments : out  STD_LOGIC_VECTOR (6 downto 0);
			  digit	: out STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC);
end Core;

architecture Behavioral of Core is

signal data : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
signal SegmentBuffer : STD_LOGIC_VECTOR (6 downto 0) := "0000000";

begin

process(clk,SegmentBuffer)
variable Count1Sec : integer := 0;
variable CountSegment : integer := 0;
variable SegmentGo : integer := 0;
variable currentdata : STD_LOGIC_VECTOR (3 downto 0) := "0000";
variable State : integer := 0;

begin
	if(clk = '1' and clk'event) then
		Count1Sec := Count1Sec + 1;
		if(Count1Sec = 25000000) then
			Count1Sec := 0;
			State := State + 1;
			if(State = 13) then 
				State := 0;
			end if;
			case State is
				when 0 => data <= "0000000000000000";
				when 1 => data <= "0000000000000001";
				when 2 => data <= "0000000000010010";
				when 3 => data <= "0000000100100011";
				when 4 => data <= "0001001000110100";
				when 5 => data <= "0010001101000101";
				when 6 => data <= "0011010001010110";
				when 7 => data <= "0100010101100111";
				when 8 => data <= "0101011001111000";
				when 9 => data <= "0110011110001001";
				when 10 => data <= "0111100010010000";
				when 11 => data <= "1000100100000000";
				when 12 => data <= "1001000000000000";
				when others =>	data <= "0000000000000000";
			end case;
		end if;
		
		CountSegment := CountSegment + 1;
		if(CountSegment = 10000) then
			CountSegment := 0;
			SegmentGo := SegmentGo + 1;
			if(SegmentGo = 4) then
				SegmentGo := 0;
			end if;
			case SegmentGo is
				when 0 => currentdata := data(15 downto 12); digit <= "0111";
				when 1 => currentdata := data(11 downto 8); digit <= "1011";
				when 2 => currentdata := data(7 downto 4); digit <= "1101";
				when 3 => currentdata := data(3 downto 0); digit <= "1110";
				when others => currentdata := data(3 downto 0); digit <= "0000";
			end case;
			case currentdata is
				when "0000" => SegmentBuffer <= "0000000";
				when "0001" => SegmentBuffer <= "0110111";
				when "0010" => SegmentBuffer <= "0110111";
				when "0011" => SegmentBuffer <= "0111110";
				when "0100" => SegmentBuffer <= "0001110";
				when "0101" => SegmentBuffer <= "1110111";
				when "0110" => SegmentBuffer <= "1101101";
				when "0111" => SegmentBuffer <= "1111110";
				when "1000" => SegmentBuffer <= "0110000";
				when "1001" =>	SegmentBuffer <= "1011111";
				when others => SegmentBuffer <= "1111111";
			end case;
		end if;
		
	end if;
	Segments <= SegmentBuffer;
end process;


end Behavioral;

