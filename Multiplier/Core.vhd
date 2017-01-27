----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:20:14 12/07/2016 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Core is
    Port ( SetButton : in  STD_LOGIC;
			  MultiplyButton : in  STD_LOGIC;
			  PlusButton : in STD_LOGIC;
			  MinusButton : in STD_LOGIC;
           ClrButton : in  STD_LOGIC;
           Digits : out  STD_LOGIC_VECTOR (4 downto 1);
           Segments : out  STD_LOGIC_VECTOR (6 downto 0);
           Dips : in  STD_LOGIC_VECTOR (7 downto 0);
			  Clock : in STD_LOGIC);
end Core;

architecture Behavioral of Core is

component SevenSegment is
    Port ( Data : in  STD_LOGIC_VECTOR (15 downto 0);
           Segments : out  STD_LOGIC_VECTOR (6 downto 0);
           Digits : out  STD_LOGIC_VECTOR (4 downto 1);
			  Clock : in STD_LOGIC
			  );
end component;

signal Data : integer;
signal SevenData : STD_LOGIC_VECTOR (15 downto 0);

signal DipsConvert : integer;


begin
	SS		: SevenSegment port map (SevenData,Segments,Digits,Clock);
	
	process(Clock,Data,DipsConvert,SetButton,ClrButton,MultiplyButton,PlusButton,MinusButton)
	variable ButtonTimeCount : integer := 0;
	begin
		if(rising_edge(Clock)) then
			ButtonTimeCount := ButtonTimeCount + 1;
			if(ButtonTimeCount >= 12500000) then
				ButtonTimeCount := 0;
				if(SetButton = '0') then
					Data <= DipsConvert;
				end if;
				if(ClrButton = '0') then
					Data <= 0;
				end if;
				if(MultiplyButton = '0') then
					Data <= Data * DipsConvert;
				end if;
				if(PlusButton = '0') then
					Data <= Data + DipsConvert;
				end if;
				if(MinusButton = '0') then
					Data <= Data - DipsConvert;
				end if;
			end if;
		end if;
	end process;
	
	SevenData <= std_logic_vector(to_unsigned(Data,SevenData'length));
	DipsConvert <= to_integer(unsigned(Dips));
	
end Behavioral;

