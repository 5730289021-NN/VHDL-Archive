----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:15 12/06/2016 
-- Design Name: 
-- Module Name:    Vending - Behavioral 
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

entity Vending is
    Port ( Baht10 : in  STD_LOGIC;
           Baht20 : in  STD_LOGIC;
           Segments : out  STD_LOGIC_VECTOR (6 downto 0);
           Dispensed : out  STD_LOGIC;
           Digits : out  STD_LOGIC_VECTOR (4 downto 1);
			  Clock : in STD_LOGIC);
end Vending;

architecture Behavioral of Vending is

component SevenSegment
    Port ( Data : in  STD_LOGIC_VECTOR (15 downto 0);
           Segments : out  STD_LOGIC_VECTOR (6 downto 0);
           Digits : out  STD_LOGIC_VECTOR (4 downto 1);
			  Clock : in STD_LOGIC
			  );
end component;

component OneShot
    Port ( Input : in  STD_LOGIC;
           Output : out  STD_LOGIC;
			  Clock : in STD_LOGIC);
end component;

signal DispensedBuffer : STD_LOGIC;
--signal B10 : STD_LOGIC;
--signal B20 : STD_LOGIC;
signal Data : STD_LOGIC_VECTOR(15 downto 0);

begin
	SS		: SevenSegment port map (Data,Segments,Digits,Clock);
	--OS10B	: OneShot port map(Baht10,B10,Clock);
	--OS20B	: OneShot port map(Baht20,B20,Clock);
	
	process(Clock)
	variable Money : integer := 7;
	variable DispensedTimeCount : integer := 0;
	variable ButtonTimeCount : integer := 0;
	
	begin
		if(rising_edge(Clock)) then
			
			ButtonTimeCount := ButtonTimeCount + 1;
			if(ButtonTimeCount >= 12500000) then
				ButtonTimeCount := 0;
				if(Baht10 = '0') then
					Money := Money - 1;
				end if;
				if(Baht20 = '0') then
					Money := Money - 2;
				end if;
				if(Money <= 0) then
					DispensedBuffer <= '1';
				end if;
			end if;
			
			if(DispensedBuffer = '1') then
				DispensedTimeCount := DispensedTimeCount + 1;
				if(DispensedTimeCount = 50000000) then
					DispensedTimeCount := 0;
					DispensedBuffer <= '0';
					Money := 7;
				end if;
			end if;
			
			Data(7 downto 4) <= std_logic_vector(to_unsigned(Money,Data(7 downto 4)'length));
			
		end if;
	end process;
	Data(15 downto 8) <= "11111111";
	Data(3 downto 0) <= "0000";
	Dispensed <= DispensedBuffer;
	
end Behavioral;

