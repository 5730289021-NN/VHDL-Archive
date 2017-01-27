----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:59 01/15/2017 
-- Design Name: 
-- Module Name:    LEDSine - Behavioral 
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

entity LEDSine is
    Port ( SysClk : in  STD_LOGIC;
           SysRstB : in  STD_LOGIC;
			  DipSW	: in	STD_LOGIC_VECTOR (7 downto 2);
           LED : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end LEDSine;

architecture Behavioral of LEDSine is

signal RstB				 : STD_LOGIC;
signal Clk				 : STD_LOGIC;
signal SysRst			 : STD_LOGIC;


signal Sine_ClkPerTick: STD_LOGIC_VECTOR(18 downto 0);
signal Sine_DelayTime : STD_LOGIC_VECTOR(23 downto 0);

	Component dcm133
	Port
	(
		CLKIN_IN 		: in 	std_logic;
		RST_IN 			: in 	std_logic;          
		CLKFX_OUT 		: out 	std_logic;
		CLKIN_IBUFG_OUT : out 	std_logic;
		CLK0_OUT 		: out 	std_logic;
		LOCKED_OUT 		: out 	std_logic
	);
	End Component dcm133;
	
	Component Sine_ClkPerTick_Decoder is
	Port
	( 
		Clk						: in  STD_LOGIC;
		Rst						: in  STD_LOGIC;
		FreqSWIn					: in	STD_LOGIC_VECTOR(2 downto 0);
		Sine_ClkPerTick		: out	STD_LOGIC_VECTOR(18 downto 0)
	);
	End Component Sine_ClkPerTick_Decoder;
	
	Component Sine_Delay_Decoder is
   Port
	(
		Clk						: in  STD_LOGIC;
      Rst 						: in  STD_LOGIC;
		DelaySWIn				: in STD_LOGIC_VECTOR(2 downto 0);
		Sine_ClkPerTick 		: in STD_LOGIC_VECTOR(18 downto 0);
      Sine_DelayTime 		: out  STD_LOGIC_VECTOR(23 downto 0)
	);
			  
	End Component Sine_Delay_Decoder;
	
	Component Sine_Compound is
   Port 
	( 
		Clk : in  STD_LOGIC;
      Rst : in  STD_LOGIC;
		Sine_ClkPerTick : in	STD_LOGIC_VECTOR(18 downto 0);
      Sine_DelayTime : in  STD_LOGIC_VECTOR(23 downto 0);
      Number : in  STD_LOGIC_VECTOR (3 downto 0);
      LED : out  STD_LOGIC
	);
	End Component Sine_Compound;
	
	Component Sine_Compound_NoDelay is
   Port 
	( 
		Clk : in  STD_LOGIC;
      Rst : in  STD_LOGIC;
		Sine_ClkPerTick : in	STD_LOGIC_VECTOR(18 downto 0);
      LED : out  STD_LOGIC
	);
	End Component Sine_Compound_NoDelay;

begin
	
	SysRst		<= not SysRstB;
	
	u_dcm133 : dcm133
	Port map
	(
		CLKIN_IN 		=> SysClk	,
		RST_IN 			=> SysRst   ,
		CLKFX_OUT 		=> Clk      ,
		CLKIN_IBUFG_OUT => open     ,
		CLK0_OUT 		=> open     ,
		LOCKED_OUT 		=> RstB
	);
	
	u_Sine_ClkPerTick_Decoder : Sine_ClkPerTick_Decoder
	Port map
	( 
		Clk				=> Clk,
		Rst				=> RstB,
		FreqSWIn			=> DipSW(7 downto 5),
		Sine_ClkPerTick=>	Sine_ClkPerTick
	);
	
	u_Sine_Delay_Decoder : Sine_Delay_Decoder
   Port map
	(
		Clk					=> Clk,
      Rst 					=> RstB,
		DelaySWIn			=> DipSW(4 downto 2),
		Sine_ClkPerTick 	=>	Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime
	);
	
	u0_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "1000",
      LED					=> LED(0)
	);
	
	u1_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "0001",
      LED					=> LED(1)
	);
	
	u2_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "0010",
      LED					=> LED(2)
	);
	
	u3_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "0011",
      LED					=> LED(3)
	);
	
	u4_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "0100",
      LED					=> LED(4)
	);
	
	u5_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "0101",
      LED					=> LED(5)
	);
	
	u6_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "0110",
      LED					=> LED(6)
	);
	
	u7_Sine_Compound : Sine_Compound
   Port map
	( 
		Clk					=> Clk,
      Rst 					=> RstB,
		Sine_ClkPerTick 	=> Sine_ClkPerTick,
      Sine_DelayTime 	=> Sine_DelayTime,
      Number 				=> "0111",
      LED					=> LED(7)
	);
	

end Behavioral;

