----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:25:16 01/19/2017 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is
    Port ( SysClk : in  STD_LOGIC;
           SysRstB : in  STD_LOGIC;
			  DipSW	: in	STD_LOGIC_VECTOR(7 downto 0);
			  RX		: in	STD_LOGIC;
			  Speaker : out STD_LOGIC);
end Main;

architecture Behavioral of Main is

	signal	SysRst		: STD_LOGIC;	
	signal	RstB			: STD_LOGIC;
	signal	Clk			: STD_LOGIC;
	
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
	
	Component UART_ClkPerBit_Decoder
	Port
	(
		Clk 						: in 	STD_LOGIC;
		Rst 						: in 	STD_LOGIC;
		BaudRateSWIn			: in 	STD_LOGIC_VECTOR(2 downto 0);
		UART_ClkPerBit 		: out STD_LOGIC_VECTOR(15 downto 0)
	);
	End Component UART_ClkPerBit_Decoder;
	
	Component UART_Buffer is
	Port ( Clk						: in 	STD_LOGIC;
			 Rst 						: in	STD_LOGIC;
			 UART_BufferDataIn	: in	STD_LOGIC_VECTOR(9 downto 0);
			 UART_BufferDataOut	: out STD_LOGIC_VECTOR(9 downto 0);
			 UART_BufferWriteEnb	: in	STD_LOGIC
			 );
	End Component UART_Buffer;
	
	Component RXModule is
	Port (  Clk   					: in	STD_LOGIC;
			  Rst	  					: in 	STD_LOGIC;
			  RX 						: in  STD_LOGIC;
			  UART_ClkPerBit 		: in  STD_LOGIC_VECTOR(15 downto 0);
			  UART_TotalBit		: in	STD_LOGIC_VECTOR(3 downto 0);
			  UART_RXFinished		: out STD_LOGIC;
			  DataReceive			: out STD_LOGIC_VECTOR(9 downto 0)
			);
	End Component RXModule;
	
	Component PWM is
	Port ( Clk : in  STD_LOGIC;
				  Rst : in  STD_LOGIC;
			     LED : out STD_LOGIC;
				  PWM : in  STD_LOGIC_VECTOR (7 downto 0)
				  );
	End Component PWM;
	
	signal UART_ClkPerBit		: STD_LOGIC_VECTOR(15 downto 0);
	
	signal UART_BufferDataIn	: STD_LOGIC_VECTOR(9 downto 0);
	signal UART_BufferDataOut	: STD_LOGIC_VECTOR(9 downto 0);
	signal UART_BufferWriteEnb	: STD_LOGIC;
	signal UART_RXFinished		: STD_LOGIC;
	
	signal SpeakerData			: STD_LOGIC_VECTOR(7 downto 0);


begin

	UART_BufferWriteEnb <= UART_RXFinished;
	SpeakerData <= UART_BufferDataOut(7 downto 0);


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
	u_UART_ClkPerBit_Decoder : UART_ClkPerBit_Decoder
	Port map
	(
		Clk						=> Clk	,
      Rst						=> RstB	,
		BaudRateSWIn			=> DipSW(7 downto 5),
		UART_ClkPerBit 		=> UART_ClkPerBit
	);
	u_UART_Buffer : UART_Buffer
	Port map
	( 
		Clk					=> Clk,
		Rst 					=> RstB,
		UART_BufferDataIn	=> UART_BufferDataIn,
		UART_BufferDataOut=>	UART_BufferDataOut,
		UART_BufferWriteEnb	=> UART_BufferWriteEnb
	);
	
	u_RXModule : RXModule
	Port map
	(  
		Clk   				=> Clk,
		Rst	  				=> RstB,
		RX 					=> RX,
		UART_ClkPerBit 	=> UART_ClkPerBit,
		UART_TotalBit		=> "1000",
		UART_RXFinished	=> UART_RXFinished,
		DataReceive			=> UART_BufferDataIn
	);
	
	u_PWM : PWM
	Port map 
	( 	Clk 	=>		Clk,
		Rst 	=>		RstB,
		LED 	=> 	Speaker,
		PWM	=> 	SpeakerData
	);

end Behavioral;

