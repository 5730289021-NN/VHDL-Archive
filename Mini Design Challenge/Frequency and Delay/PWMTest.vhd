--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:18:57 01/15/2017
-- Design Name:   
-- Module Name:   C:/Users/Oak/Documents/Xilinx ISE Workspace/PWM/PWMTest.vhd
-- Project Name:  PWM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PWM
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
 
ENTITY PWMTest IS
END PWMTest;
 
ARCHITECTURE behavior OF PWMTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PWM
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         LED : OUT  std_logic;
         PWM : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal PWMx : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal LED : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PWM PORT MAP (
          Clk => Clk,
          Rst => Rst,
          LED => LED,
          PWM => PWMx
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
		Rst <= '1';
		PWMx <= "11111110";
		wait for 10000 ns;
		
		
		Rst <= '0';
		wait for 100 ns;
		Rst <= '1';
		PWMx <= "11111101";
		wait for 10000 ns;
		
		Rst <= '0';
		wait for 100 ns;
		Rst <= '1';
		PWMx <= "11110111";
		wait for 10000 ns;
		
		
		Rst <= '0';
		wait for 100 ns;
		Rst <= '1';
		PWMx <= "00000000";
		wait for 10000 ns;
		
		Rst <= '0';
		wait for 10000 ns;
		Rst <= '1';
		PWMx <= "00000001";
		wait for 10000 ns;
		
      wait;
   end process;

END;
