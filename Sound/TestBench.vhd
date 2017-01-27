--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:39:43 12/07/2016
-- Design Name:   
-- Module Name:   C:/Users/noraw/Documents/VHDL/Sound/TestBench.vhd
-- Project Name:  Sound
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Core
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
 
ENTITY TestBench IS
END TestBench;
 
ARCHITECTURE behavior OF TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Core
    PORT(
         buzzer : OUT  std_logic;
         osc : IN  std_logic;
         LED : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal osc : std_logic := '0';

 	--Outputs
   signal buzzer : std_logic;
   signal LED : std_logic_vector(7 downto 0);
   -- No oscs detected in port list. Replace osc below with 
   -- appropriate port name 
 
   constant osc_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Core PORT MAP (
          buzzer => buzzer,
          osc => osc,
          LED => LED
        );

   -- osc process definitions
   osc_process :process
   begin
		osc <= '0';
		wait for osc_period/2;
		osc <= '1';
		wait for osc_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 2500 ms;	

      wait for osc_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
