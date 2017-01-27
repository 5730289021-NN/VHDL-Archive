--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:36:26 01/14/2017
-- Design Name:   
-- Module Name:   E:/MiniDesignChallenge/TXModuleTest.vhd
-- Project Name:  MiniDesignChallenge
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TXModule
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
 
ENTITY TXModuleTest IS
END TXModuleTest;
 
ARCHITECTURE behavior OF TXModuleTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '1';
   signal SendB : std_logic := '0';
   signal DatatoSend : std_logic_vector(9 downto 0) := (others => '0');
   signal UART_ClkPerBit : std_logic_vector(15 downto 0) := "0000000010000000";
   signal UART_TotalBit : std_logic_vector(3 downto 0) := "1000";

 	--Outputs
   signal TX : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TXModule PORT MAP (
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
