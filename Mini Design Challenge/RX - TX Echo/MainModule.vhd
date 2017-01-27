----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:11 01/11/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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

entity MainModule is
	Port ( SysRstB		: in	STD_LOGIC;
			 SysClk 		: in 	STD_LOGIC;
			 DipSW		: in	STD_LOGIC_VECTOR(7 downto 0);
			 TX			: out STD_LOGIC;
			 RX			: in STD_LOGIC
			);
end MainModule;

architecture Behavioral of MainModule is
	
	Component dcm133
	Port
	(
		CLKIN_IN					: in 	STD_LOGIC;
		RST_IN 					: in 	STD_LOGIC;          
		CLKFX_OUT 				: out STD_LOGIC;
		CLKIN_IBUFG_OUT 		: out STD_LOGIC;
		CLK0_OUT 				: out STD_LOGIC;
		LOCKED_OUT 				: out STD_LOGIC
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
	
	Component UART_AmountDataBit_Decoder
   Port 
	( 
		Clk						: in  STD_LOGIC;
      Rst						: in  STD_LOGIC;
      AmountBitSWIn 			: in  STD_LOGIC_VECTOR (1 downto 0);
      UART_AmountDataBit 	: out  STD_LOGIC_VECTOR (3 downto 0)
	);
	End Component UART_AmountDataBit_Decoder;
	
	Component UART_ParityEnb_Decoder is
   Port ( Clk					: in  STD_LOGIC;
          Rst					: in  STD_LOGIC;
          ParityEnbSWIn		: in  STD_LOGIC;
          UART_ParityEnb	: out  STD_LOGIC);
	End Component UART_ParityEnb_Decoder;
	
	Component UART_TotalBit_Decoder is
   Port ( 
			  Clk						: in  STD_LOGIC;
           Rst						: in  STD_LOGIC;
           UART_AmountDataBit : in  STD_LOGIC_VECTOR (3 downto 0);
           UART_ParityEnb		: in  STD_LOGIC;
			  UART_TotalBit		: out STD_LOGIC_VECTOR (3 downto 0)
			 );
	End Component UART_TotalBit_Decoder;
	
	Component TXModule is
	Port ( Clk						: in 	STD_LOGIC;
			 Rst 						: in	STD_LOGIC;
		    SendB					: in 	STD_LOGIC;
			 DatatoSend				: in	STD_LOGIC_VECTOR(9 downto 0);
          TX						: out	STD_LOGIC;
			 UART_ClkPerBit 		: in  STD_LOGIC_VECTOR(15 downto 0);
			 UART_TotalBit			: in	STD_LOGIC_VECTOR(3 downto 0)
			 );
	End Component TXModule;
	
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
	
	signal SysRst			 		: STD_LOGIC;
	signal Clk						: STD_LOGIC;
	signal RstB						: STD_LOGIC;
	signal UART_ClkPerBit		: STD_LOGIC_VECTOR(15 downto 0);
	signal UART_AmountDataBit	: STD_LOGIC_VECTOR (3 downto 0);
	signal UART_ParityEnb		: STD_LOGIC;
	signal UART_TotalBit			: STD_LOGIC_VECTOR (3 downto 0);
	signal SendB					: STD_LOGIC;
	signal UART_RXFinished		: STD_LOGIC;
	
	signal UART_BufferDataIn	: STD_LOGIC_VECTOR(9 downto 0);
	signal UART_BufferDataOut	: STD_LOGIC_VECTOR(9 downto 0);
	signal UART_BufferWriteEnb	: STD_LOGIC;
	
	
begin

	UART_BufferWriteEnb <= UART_RXFinished;
	SendB <= UART_RXFinished;
	
	SysRst		<= not SysRstB;
	u_dcm133 : dcm133
	Port map
	(
		CLKIN_IN 		=> SysClk	,
		RST_IN 			=> SysRst   ,
		CLKFX_OUT 		=> Clk      ,
		CLKIN_IBUFG_OUT => open    ,
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
	
	u_UART_AmountDataBit_Decoder : UART_AmountDataBit_Decoder
	Port map 
	( 
		Clk						=> Clk		,
      Rst						=> RstB		,
      AmountBitSWIn 			=> DipSW(4 downto 3),
      UART_AmountDataBit 	=> UART_AmountDataBit
	);
	
	u_UART_ParityEnb_Decoder : UART_ParityEnb_Decoder
   Port map
	( 
		Clk					=> Clk,
      Rst					=> RstB,
		ParityEnbSWIn		=> DipSW(2),
		UART_ParityEnb		=> UART_ParityEnb
	);
	
	u_UART_TotalBit_Decoder : UART_TotalBit_Decoder
   Port map
	( 
	  Clk						=> Clk,
     Rst						=> RstB,
	  UART_AmountDataBit => UART_AmountDataBit,
	  UART_ParityEnb		=> UART_ParityEnb,
	  UART_TotalBit		=> UART_TotalBit
	);
	
	u_TXModule : TXModule
	Port map
	( 
	  Clk						=> Clk,
	  Rst 					=> RstB,
	  SendB					=> SendB,
	  DatatoSend			=> UART_BufferDataOut,--?
     TX						=> TX,
	  UART_ClkPerBit 		=> UART_ClkPerBit,
	  UART_TotalBit		=> UART_TotalBit
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
		UART_TotalBit		=> UART_TotalBit,
		UART_RXFinished	=> UART_RXFinished,
		DataReceive			=> UART_BufferDataIn
	);
	
	
	


end Behavioral;

