----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:35:06 12/03/2016 
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
	 Generic (C4_90 : integer := 86000;
				 D4_90 : integer := 76620;
				 E4_90 : integer := 68259;
				 F4_90 : integer := 64428;
				 G4_90 : integer := 57398;
				 A4_90 : integer := 51137;
				 B4_90 : integer := 45558;
				 C5_90 : integer := 43001;
				 
				 C4_10 : integer := 9555;
				 D4_10 : integer := 8513;
				 E4_10 : integer := 7584;
				 F4_10 : integer := 7159;
				 G4_10 : integer := 6378;
				 A4_10 : integer := 5682;
				 B4_10 : integer := 5062;
				 C5_10 : integer := 4778);

				 
    Port ( buzzer : out STD_LOGIC;
           osc 	: in  STD_LOGIC;
			  LED		: out STD_LOGIC_VECTOR(7 downto 0));
end Core;

architecture Behavioral of Core is

signal state : integer := 0;
signal NinetyPercent : integer := C4_90;
signal TenPercent : integer := C4_10;

signal output : std_logic := '0';

begin
	process(osc)
	variable Counter1Sec : integer := 0;
	variable NoteCounter  : integer := 0;
	begin
		if (osc='1' and osc'event) then
		
			Counter1Sec := Counter1Sec + 1;
			if(Counter1Sec >= 25000000) then
				state <= state + 1;
				Counter1Sec := 0;
				if(state > 20) then
					state <= 0;
					output <= '0';
				end if;
				case state is
					when 0 | 14 | 20			=>  NinetyPercent <= C4_90; TenPercent <= C4_10;
					when 1 | 13					=>  NinetyPercent <= D4_90; TenPercent <= D4_10;
					when 2 | 12 | 15 | 19	=>  NinetyPercent <= E4_90; TenPercent <= E4_10;
					when 3 | 11 				=>  NinetyPercent <= F4_90; TenPercent <= F4_10;
					when 4 | 10 | 16 | 18	=>  NinetyPercent <= G4_90; TenPercent <= G4_10;
					when 5 | 9					=>  NinetyPercent <= A4_90; TenPercent <= A4_10;
					when 6 | 8					=>  NinetyPercent <= B4_90; TenPercent <= B4_10;
					when 7 | 17					=>  NinetyPercent <= C5_90; TenPercent <= C4_10;
					when others					=>  NinetyPercent <= C4_90; TenPercent <= C5_10;
				end case;
			end if;
			
			NoteCounter := NoteCounter + 1;
			if(output = '0') then
				if(NoteCounter >= NinetyPercent) then
					output <= '1';
					NoteCounter := 0;
				end if;
			elsif(output = '1') then
				if(NoteCounter >= TenPercent) then
					output <= '0';
					NoteCounter := 0;
				end if;
			end if;
			
		end if;
	end process;
	LED <= std_logic_vector(to_unsigned(state,LED'length));
	buzzer <= output;	
end Behavioral;