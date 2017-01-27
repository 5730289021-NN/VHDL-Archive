--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:56:01 01/18/2017
-- Design Name:   
-- Module Name:   C:/Users/noraw/Documents/VHDL/PWM/Sine_DelayerTest.vhd
-- Project Name:  PWM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sine_Delayer
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
 
ENTITY Sine_DelayerTest IS
END Sine_DelayerTest;
 
ARCHITECTURE behavior OF Sine_DelayerTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sine_Delayer
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Sine_DelayTime : IN  std_logic_vector(23 downto 0);
         Number : IN  std_logic_vector(2 downto 0);
         OutEnb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Sine_DelayTime : std_logic_vector(23 downto 0) := (others => '0');
   signal Number : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal OutEnb : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sine_Delayer PORT MAP (
          Clk => Clk,
          Rst => Rst,
          Sine_DelayTime => Sine_DelayTime,
          Number => Number,
          OutEnb => OutEnb
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
      wait for 77 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 
		Rst <= '1';
		Sine_DelayTime <= x"000002";
		Number <= "001";
		
      wait;
   end process;

END;
