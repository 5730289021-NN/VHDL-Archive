----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:20:00 01/11/2017 
-- Design Name: 
-- Module Name:    RXModule - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RXModule is
    Port ( 
			  Clk   					: in	STD_LOGIC;
			  Rst	  					: in 	STD_LOGIC;
			  RX 						: in  STD_LOGIC;
			  UART_ClkPerBit 		: in  STD_LOGIC_VECTOR(15 downto 0);
			  UART_TotalBit		: in	STD_LOGIC_VECTOR(3 downto 0);
			  UART_RXFinished		: out STD_LOGIC;
			  DataReceive			: out STD_LOGIC_VECTOR(9 downto 0)
			);
end RXModule;

architecture Behavioral of RXModule is


signal FSMState : STD_LOGIC_VECTOR(1 downto 0);
signal DataLocation : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal Readable : STD_LOGIC := '0';

signal WaitTime : STD_LOGIC_VECTOR(15 downto 0);
signal ClkCounter		: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";


begin
	
	FSM: process(Clk)
	begin
		--Using Case & State Concept
		if (rising_edge(Clk)) then
			if (Rst='0') then
				--Clear All
				FSMState <= "00";
				DataLocation <= "0000";
			else
				case FSMState is
					when "00" =>
						--Normal State
						if(RX = '0') then
							FSMState <= "01";
						end if;
					when "01" =>
						--Start Bit & 1.5 Bit Waiting State
						WaitTime <= UART_ClkPerBit + UART_ClkPerBit(15 downto 1);
						ClkCounter <= ClkCounter + 1;
						if(ClkCounter >= WaitTime) then
							ClkCounter <= "0000000000000000";
							FSMState <= "10";
							Readable <= '1';
						end if;
					when "10" =>
						--Data Bit 0(First) to Data Bit 6,7 or 8 and Parity
						ClkCounter <= ClkCounter + 1;
						if(ClkCounter >= UART_ClkPerBit) then
							ClkCounter <= "0000000000000000";
							if(DataLocation = UART_TotalBit - 1) then
								FSMState <= "11";
							else
								Readable <= '1';
							end if;
							DataLocation <= DataLocation + 1;
						else
							Readable <= '0';
						end if;
					when others =>
						FSMState <= "00";
						Readable <= '0';
						DataLocation <= "0000";
				end case;
			end if;
		end if;
	end process FSM;
	
	
	DataReader: process(Clk)
	begin
		--Using Case & State Concept
		if (rising_edge(Clk)) then
			if (Rst='0') then
				--Clear All
				DataReceive <= "0000000000";
			else
				if(Readable = '1') then					
					case DataLocation is
						when "0000" => DataReceive(0) <= RX;
						when "0001" => DataReceive(1) <= RX;
						when "0010" => DataReceive(2) <= RX;
						when "0011" => DataReceive(3) <= RX;	
						when "0100" => DataReceive(4) <= RX;
						when "0101" => DataReceive(5) <= RX;
						when "0110" => DataReceive(6) <= RX;
						when "0111" => DataReceive(7) <= RX;
						when "1000" => DataReceive(8) <= RX;
						when "1001" => DataReceive(9) <= RX;
						when others => DataReceive <= "0000000000";
					end case;
				end if;
			end if;
			
		end if;
	end process DataReader;
	
	UART_RXFinished <= FSMState(0) AND FSMState(1);
	
end Behavioral;

