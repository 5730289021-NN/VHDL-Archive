--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:39:18 01/17/2017
-- Design Name:   
-- Module Name:   C:/Users/Oak/Documents/Xilinx ISE Workspace/PWM/LEDSineTest.vhd
-- Project Name:  PWM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LEDSine
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
 
ENTITY LEDSineTest IS
END LEDSineTest;
 
ARCHITECTURE behavior OF LEDSineTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LEDSine
    PORT(
         SysClk : IN  std_logic;
         SysRstB : IN  std_logic;
         DipSW : IN  std_logic_vector(5 downto 0);
         LED : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SysClk : std_logic := '0';
   signal SysRstB : std_logic := '0';
   signal DipSW : std_logic_vector(5 downto 0) := "000101";

 	--Outputs
   signal LED : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant SysClk_period : time := 10 ns;
 
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: LEDSine PORT MAP (
          SysClk => SysClk,
          SysRstB => SysRstB,
          DipSW => DipSW,
          LED => LED
        );

   -- Clock process definitions
   SysClk_process :process
   begin
		SysClk <= '0';
		wait for SysClk_period/2;
		SysClk <= '1';
		wait for SysClk_period/2;
   end process;
	
	SysRst : process
	begin
		SysRstB <= '0';
		wait for 100 ns;
		SysRstB <= '0';
		wait;
		
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
