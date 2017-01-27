----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:30:01 01/11/2017 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TXModule is
	Port (
			 Clk						: in 	STD_LOGIC;
			 Rst 						: in	STD_LOGIC;
		    SendB					: in 	STD_LOGIC;
			 DatatoSend				: in	STD_LOGIC_VECTOR(9 downto 0);
          TX						: out	STD_LOGIC;
			 UART_ClkPerBit 		: in  STD_LOGIC_VECTOR(15 downto 0);
			 UART_TotalBit			: in	STD_LOGIC_VECTOR(3 downto 0)
			 );
end TXModule;

architecture Behavioral of TXModule is

signal ClkCounter		: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";

signal TXBuffer		: STD_LOGIC := '1';

signal posSending		: STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal FSMState		: STD_LOGIC_VECTOR(1 downto 0) := "00";	

begin

	FSM: Process (Clk) Is
	Begin
		if(rising_edge(Clk)) then
			if (Rst = '0') then
				FSMState <= "00";
				ClkCounter <= "0000000000000000";
				posSending <= "0000";
			else
				case FSMState is
					when "00" =>
						if(SendB = '1') then
							FSMState <= "01";
							ClkCounter <= "0000000000000000";
							posSending <= "0000";
						end if;
					when "01" =>
						if(ClkCounter < UART_ClkPerBit) then
							ClkCounter <= ClkCounter + 1;
						else
							ClkCounter <= "0000000000000000";
							if(posSending = UART_TotalBit) then --if posSending equals to UART_TotalBit
								posSending <= "0000";
								FSMState <= "10";
							end if;
							posSending <= posSending + 1;
						end if;
					when others =>
						--After Send all Data Force TX <= 1 then go to IDLE
						FSMState <= "00";
				end case;
			end if;
		end if;
	End Process FSM;
	
	DataSender: Process (Clk) Is
	variable posSending_int : integer range 0 to 15;
	Begin
		if(rising_edge(Clk)) then
			if (Rst = '0') then
				posSending_int := 0;
				TXBuffer <= '1';
			else 
				if(FSMState = "01") then
				posSending_int := to_integer(unsigned(posSending));
					case posSending_int is
						when 0 =>
							TXBuffer <= '0';
						when 1 to 10 =>
							TXBuffer <= DataToSend(posSending_int - 1);
						when others =>
							TXBuffer <= '1';
					end case;
				else
					TXBuffer <= '1';
				end if;
			end if;
		end if;
	End Process DataSender;
	
	TX <= TXBuffer;

end Behavioral;

