library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity P7 is
	port(clk : in STD_LOGIC;
		  clr : in STD_LOGIC;
		  x : out STD_LOGIC_VECTOR(12 downto 0)
		  );
end P7;
architecture Behavioral of P7 is
signal msg_array: STD_LOGIC_VECTOR(0 to 51);
constant message: STD_LOGIC_VECTOR(51 downto 0):=x"0123456789999";
begin
	process(clr,clk)
	begin 
		if clr ='1' then
			msg_array <= message;
	   elsif (clk'event and clk ='1') then
			msg_array(0 to 47) <= msg_array(4 to 51);
			msg_array(48 to 51) <= msg_array(0 to 3);
		end if;
	end process;
	x <= msg_array(0 to 12);
end Behavioral;

