--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:12:25 01/14/2017
-- Design Name:   
-- Module Name:   E:/MiniDesignChallenge/RXModuleTest.vhd
-- Project Name:  MiniDesignChallenge
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RXModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RXModuleTest IS
END RXModuleTest;
 
ARCHITECTURE behavior OF RXModuleTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RXModule
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         RX : IN  std_logic;
         UART_ClkPerBit : IN  std_logic_vector(15 downto 0);
         UART_TotalBit : IN  std_logic_vector(3 downto 0);
         UART_RXFinished : OUT  std_logic;
         DataReceive : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    
	 COMPONENT TXModule
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         SendB : IN  std_logic;
         DatatoSend : IN  std_logic_vector(9 downto 0);
         TX : OUT  std_logic;
         UART_ClkPerBit : IN  std_logic_vector(15 downto 0);
         UART_TotalBit : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   --Inputs

   signal SendB : std_logic := '0';
   signal DatatoSend : std_logic_vector(9 downto 0) := (others => '0');

	
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '1';
   signal RX : std_logic;
   signal UART_ClkPerBit : std_logic_vector(15 downto 0) := "0000000010000000";
   signal UART_TotalBit : std_logic_vector(3 downto 0) := "1000";

 	--Outputs
	signal TX : std_logic;
   signal UART_RXFinished : std_logic;
   signal DataReceive : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
	
	RX <= TX;
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RXModule PORT MAP (
          Clk => Clk,
          Rst => Rst,
          RX => RX,
          UART_ClkPerBit => UART_ClkPerBit,
          UART_TotalBit => UART_TotalBit,
          UART_RXFinished => UART_RXFinished,
          DataReceive => DataReceive
        );
	uut2: TXModule PORT MAP (
          Clk => Clk,
          Rst => Rst,
          SendB => SendB,
          DatatoSend => DatatoSend,
          TX => TX,
          UART_ClkPerBit => UART_ClkPerBit,
          UART_TotalBit => UART_TotalBit
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here
		DatatoSend <= "0000110110"; -- 10 Bit (First Bit at Last)
		UART_TotalBit <= "1000";	-- DatatoSend is just 8 bit
		wait for 10 ns;
		SendB <= '1';
		wait for 160 ns;
		SendB <= '0';
		

      wait;
   end process;

END;
