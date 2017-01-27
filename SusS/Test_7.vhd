LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Test_7 IS
END Test_7;
 
ARCHITECTURE behavior OF Test_7 IS 
    COMPONENT P7
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         x : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal x : std_logic_vector(27 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: P7 PORT MAP (
          clk => clk,
          clr => clr,
          x => x
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for clk_period*10;
		clr <= '0';
		wait for clk_period*10;
		clr <= '1';
		wait for clk_period*10;
		clr <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
