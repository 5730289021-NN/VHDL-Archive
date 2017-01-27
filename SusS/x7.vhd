library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity x7 is
		port( x    : 	in STD_LOGIC_VECTOR(12 downto 0);
	         cclk : 	in STD_LOGIC;
				clr  : 	in STD_LOGIC;
				a_to_g : out STD_LOGIC_vector(6 downto 0);
				an   : 	out STD_LOGIC_VECTOR(3 downto 0);
				dp   : 	out STD_LOGIC
				);				
end x7;

architecture Behavioral of x7 is
signal s: 		STD_LOGIC_VECTOR(1 downto 0);
signal digit:	STD_LOGIC_VECTOR(3 downto 0);
signal aen:		STD_LOGIC_VECTOR(3 downto 0);
begin
	dp  <= '1';
	aen <= "1111";
	process(s,x)
	begin
		case s is 
			when "00" => digit <= x(3 downto 0);
			when "01" => digit <= x(7 downto 4);
         when "10" => digit <= x(11 downto 8);
			when others => digit <= x(12 downto 9);
		end case;
	end process;
	process(digit)
	begin
		case digit is
			when x"0" => a_to_g <= "0110001"; --C
			when x"1" => a_to_g <= "1001000";--H
			when x"2" => a_to_g <= "1000001"; --U
			when x"3" => a_to_g <= "1110001"; --L
			when x"4" => a_to_g <= "0001000"; --A
			when x"5" => a_to_g <= "0010010"; --2
			when x"6" => a_to_g <= "0000001"; --0
			when x"7" => a_to_g <= "1001111"; --1
			when x"8" => a_to_g <= "0100000"; --6
			when x"9" => a_to_g <= "1110111"; -- dash
			when others => a_to_g <= "1111111"; -- blank
		end case;
	end process;
	process(s,aen)
	begin
		an <="1111";
		if aen(conv_integer(s)) = '1' then
			an(conv_integer(s)) <= '0';
		end if;
	end process;

	process(cclk,clr)
	begin
		if clr = '1' then
			s <= "00";
		elsif cclk'event and cclk = '1' then
			s <= s+1;
		end if;
	end process;
end Behavioral;