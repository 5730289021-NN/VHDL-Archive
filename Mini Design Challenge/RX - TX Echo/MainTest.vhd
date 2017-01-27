--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:03:54 01/14/2017
-- Design Name:   
-- Module Name:   E:/MiniDesignChallenge/MainTest.vhd
-- Project Name:  MiniDesignChallenge
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MainModule
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
 
ENTITY MainTest IS
END MainTest;
 
ARCHITECTURE behavior OF MainTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MainModule
    PORT(
         SysRstB : IN  std_logic;
         SysClk : IN  std_logic;
         DipSW : IN  std_logic_vector(7 downto 0);
         TX : OUT  std_logic;
         RX : IN  std_logic
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
   signal SysRstB : std_logic := '0';
   signal SysClk : std_logic := '0';
   signal DipSW : std_logic_vector(7 downto 0) := (others => '0');
   signal RX : std_logic := '0';
	
	signal TX2 : std_logic;

 	--Outputs
   signal TX : std_logic;

   -- Clock period definitions
   constant SysClk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MainModule PORT MAP (
          SysRstB => SysRstB,
          SysClk => SysClk,
          DipSW => DipSW,
          TX => TX,
          RX => RX
        );
		  
		  
	uut2: TXModule PORT MAP (
          Clk => SysClk,
          Rst => SysRstB,
          SendB => SendB,
          DatatoSend => DatatoSend,
          TX => TX2,
          UART_ClkPerBit => UART_ClkPerBit,
          UART_TotalBit => UART_TotalBit
        );


   -- Clock process definitions
   SysClk_process :process
   begin
		SysClk <= '0';
		wait for SysClk_period/2;
		SysClk <= '1';
		wait for SysClk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for SysClk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
