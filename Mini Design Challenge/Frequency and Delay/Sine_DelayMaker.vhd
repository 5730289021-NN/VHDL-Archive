----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:15:50 01/17/2017 
-- Design Name: 
-- Module Name:    Sine_DelayMaker - Behavioral 
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

entity Sine_Delay_Decoder is
    Port ( Clk					: in  STD_LOGIC;
           Rst 				: in  STD_LOGIC;
			  DelaySWIn			: in STD_LOGIC_VECTOR(2 downto 0);
			  Sine_ClkPerTick : in STD_LOGIC_VECTOR(18 downto 0);
           Sine_DelayTime 	: out  STD_LOGIC_VECTOR(23 downto 0));
			  
end Sine_Delay_Decoder;

architecture Behavioral of Sine_Delay_Decoder is

begin
	
	Sine_Delay_Decoder: Process(Clk)
	Begin
		if (rising_edge(Clk)) then
			if (Rst='0') then
				Sine_DelayTime <= x"000000"; -- 0 Sec
			else
				case DelaySWIn is
					when "000" => Sine_DelayTime <= x"144B50"; -- 10 ms
					when "001" => Sine_DelayTime <= x"2896A0"; -- 20 ms
					when "010" => Sine_DelayTime <= x"657890"; -- 50 ms
					when "011" => Sine_DelayTime <= x"CAF120"; -- 100 ms
					when "100" => Sine_DelayTime(23 downto 5)	<= Sine_ClkPerTick; -- 1/8 Period
									  Sine_DelayTime(4 downto 0)	<= "00000";
									  
					when "101" => Sine_DelayTime(23)<= '0';
									  Sine_DelayTime(22 downto 4) <= Sine_ClkPerTick; -- 1/16 Period
									  Sine_DelayTime(3 downto 0)	<= "0000";

									  
					when "110" => Sine_DelayTime(23 downto 18)<= "000000";
									  Sine_DelayTime(17 downto 0) <= Sine_ClkPerTick(18 downto 1); -- 1/4 Period
					when others => Sine_DelayTime <= x"000000"; -- 0 Sec
				end case;
			end if;
		end if;
	End Process Sine_Delay_Decoder;



end Behavioral;

