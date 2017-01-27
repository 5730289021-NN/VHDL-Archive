----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:18 12/02/2016 
-- Design Name: 
-- Module Name:    CD - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CD is
    Port ( clk : in  STD_LOGIC;
           outa : out  STD_LOGIC);
end CD;

architecture Behavioral of CD is

signal state: std_logic;

begin	
	process(clk)
	variable var_s1: std_logic_vector(13 downto 0);
	begin
		if (clk='1' and clk'event) then
			var_s1 := var_s1 + '1';
			if(var_s1 = "10011100010000") then
				state <= not state;
			end if;
		end if;
	end process;
	outa <= state;

end Behavioral;

