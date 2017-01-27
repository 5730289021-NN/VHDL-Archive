----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:35:49 12/06/2016 
-- Design Name: 
-- Module Name:    SevenSegment - Behavioral 
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

entity SevenSegment is
    Port ( Data : in  STD_LOGIC_VECTOR (15 downto 0);
           Segments : out  STD_LOGIC_VECTOR (6 downto 0);
           Digits : out  STD_LOGIC_VECTOR (4 downto 1);
			  Clock : in STD_LOGIC
			  );
end SevenSegment;

architecture Behavioral of SevenSegment is

begin
	process(Clock,Data)
	variable Count1Sec : integer := 0;
	variable CountSegment : integer := 0;
	variable SegmentState : integer := 0;
	variable CurrentData : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	begin
	if(rising_edge(Clock)) then
		CountSegment := CountSegment + 1;
		if(CountSegment = 10000) then
			CountSegment := 0;
			
			SegmentState := SegmentState + 1;
			if(SegmentState = 4) then
				SegmentState := 0;
			end if;
			
			case SegmentState is
				when 0 => CurrentData := Data(15 downto 12); Digits <= "0111";
				when 1 => CurrentData := Data(11 downto 8);	Digits <= "1011";
				when 2 => CurrentData := Data(7 downto 4);	Digits <= "1101";
				when 3 => CurrentData := Data(3 downto 0);	Digits <= "1110";
				when others => Digits <= "0000";
			end case;
			
			case CurrentData is
				when "0000" => Segments <= "1111110";
				when "0001" => Segments <= "0110000";
				when "0010" => Segments <= "1101101";
				when "0011" => Segments <= "1111001";
				when "0100" => Segments <= "0110011";
				when "0101" => Segments <= "1011011";
				when "0110" => Segments <= "1011111";
				when "0111" => Segments <= "1110000";
				when "1000" => Segments <= "1111111";
				when "1001" =>	Segments <= "1111011";
				when "1010" => Segments <= "1110111";
				when "1011" => Segments <= "0011111";
				when "1100" => Segments <= "1001110";
				when "1101" => Segments <= "0111101";
				when "1110" => Segments <= "1001111";
				when "1111" => Segments <= "1000111";
				
				when others => Segments <= "0000000";
			end case;
	end if;
	end if;
	end process;


end Behavioral;

