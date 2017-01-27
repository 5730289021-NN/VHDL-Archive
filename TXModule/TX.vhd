----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:44:59 12/22/2016 
-- Design Name: 
-- Module Name:    TXModule - Behavioral 
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

Entity TXModule Is
    Port ( SysRstB: in	STD_LOGIC;
			  SysClk	: in 	STD_LOGIC;
			  SendB	: in 	STD_LOGIC;
           TX		: out	STD_LOGIC;
           DipSW	: in  STD_LOGIC_VECTOR (7 downto 0);
			  LED1	: out STD_LOGIC; --Button Push?
			  LED2	: out STD_LOGIC);--Sending?
End TXModule;

Architecture Behavioral of TXModule is

signal UART_ClkCounter: integer := 0;
signal UART_ClkPerBit : integer := 13854;
signal TXSending		 : STD_LOGIC;
signal TXBuffer		 : STD_LOGIC := '1';

signal posSending 	 : integer := 0;

signal Baudrate		 : STD_LOGIC_VECTOR (2 downto 0);
signal DatatoSend		 : STD_LOGIC_VECTOR (7 downto 0);


signal RstB				 : STD_LOGIC;
signal Clk				 : STD_LOGIC;
signal SysRst			 : STD_LOGIC;

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
	
	UART_ClkPerBit_Decoder: Process (Clk) Is --ClkPerBit of BaudRate...Set From DIP SW
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB='0' ) then
				UART_ClkPerBit <= 13854;
			else
				case BaudRate is
					when "000" => UART_ClkPerBit <= 27708; --4800 bps
					when "001" => UART_ClkPerBit <= 13854; --9600 bps
					when "010" => UART_ClkPerBit <= 9236; --14400 bps
					when "011" => UART_ClkPerBit <= 6927; --19200 bps
					when "100" => UART_ClkPerBit <= 3463; --38400 bps
					when "101" => UART_ClkPerBit <= 2309; --57600 bps
					when "110" => UART_ClkPerBit <= 1154; --115200 bps
					when "111" => UART_ClkPerBit <= 577; --230400 bps
					when others 	 => UART_ClkPerBit <= 13854; --9600 bps
				end case;
			end if;
		end if;
	End Process UART_ClkPerBit_Decoder;
	
	
	UART_DataFeeder: Process (Clk) Is
	Begin
		if(rising_edge(Clk)) then
			if (RstB = '0') then
				TXBuffer <= '1';
				TXSending <= '0';
				UART_ClkCounter <= 0;
				posSending <= 0;
			else
				if(SendB = '0') then
					TXSending <= '1';
				end if;
				if(TXSending = '1') then
					if(UART_ClkCounter < UART_ClkPerBit) then
						UART_ClkCounter <= UART_ClkCounter + 1;
					else
						UART_ClkCounter <= 0;
						if(posSending = 0 ) then
							TXBuffer <= '0';
							posSending <= posSending + 1;
						else 
							if(posSending >= 1) and (posSending <= 8) then
								TXBuffer <= DatatoSend(posSending - 1);
								posSending <= posSending + 1;
								--posSending = 1, send DipSW(0)
								--posSending = 8, send DipSW(7)
							else
								TXBuffer <= '1';
								TXSending <= '0';
								posSending <= 0;
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
	End Process UART_DataFeeder;
	
	DatatoSend(7 downto 5) <= "010";
	DatatoSend(4 downto 0) <= DipSW(4 downto 0);
	
	BaudRate <= DipSW(7 downto 5);
	
	
	TX <= TXBuffer;
	LED1 <= SendB;
	LED2 <= TXSending;
	
end Behavioral;

