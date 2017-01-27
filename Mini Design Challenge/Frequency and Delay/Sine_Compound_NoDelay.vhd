----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:33 01/17/2017 
-- Design Name: 
-- Module Name:    Sine_Compound - Behavioral 
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

entity Sine_Compound_NoDelay is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  Sine_ClkPerTick : in	STD_LOGIC_VECTOR(18 downto 0);
           LED : out  STD_LOGIC);
end Sine_Compound_NoDelay;

architecture Behavioral of Sine_Compound_NoDelay is

	Component Sine_Generator is
		 Port ( Clk : in  STD_LOGIC;
				  Rst : in  STD_LOGIC;
				  Enb	: in	STD_LOGIC;
				  Sine_ClkPerTick : in STD_LOGIC_VECTOR(18 downto 0);
				  Sine_Value : out  STD_LOGIC_VECTOR (7 downto 0)
				  );
	End Component Sine_Generator;
	
	Component PWM is
		 Port ( Clk : in  STD_LOGIC;
				  Rst : in  STD_LOGIC;
			     LED : out STD_LOGIC;
				  PWM : in  STD_LOGIC_VECTOR (7 downto 0)
				  );
	End Component PWM;

	signal Sine_GenEnb 	 : STD_LOGIC;
	signal Sine_ValuePWM	 : STD_LOGIC_VECTOR (7 downto 0);
	
begin
	
	u_Sine_Generator : Sine_Generator
	Port map 
	( 	Clk 	=>		Clk,
		Rst 	=>		Rst,
		Enb 	=>		'1',
		Sine_ClkPerTick	=> Sine_ClkPerTick,
		Sine_Value => Sine_ValuePWM
	);
	
	u_PWM : PWM
	Port map 
	( 	Clk 	=>		Clk,
		Rst 	=>		Rst,
		LED 	=> 	LED,
		PWM	=> 	Sine_ValuePWM
	);

end Behavioral;

