library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg is
Port ( digit_0 : in  STD_LOGIC_VECTOR (3 downto 0);
           Z: out  STD_LOGIC_VECTOR (6 downto 0)
			  );
end sevenseg;

architecture Behavioral of sevenseg is

begin
process(digit_0)
	begin
	if digit_0="1001" then Z<="1101111"; --9
	elsif digit_0="1000"  then  Z<="1111111"; --8
	elsif digit_0="0111"  then  Z<="0000111"; --7
	elsif digit_0="0110"  then  Z<="1111101"; --6
	elsif digit_0="0101"  then  Z<="1101101"; --5
	elsif digit_0="0100"  then  Z<="1100110"; --4
	elsif digit_0="0011"  then  Z<="1001111"; --3
	elsif digit_0="0010"  then  Z<="1011011"; --2
	elsif digit_0="0001"  then  Z<="0000110"; --1
	elsif digit_0="0000"  then  Z<="0111111"; --0
	else  Z<="1000000"; -- -
	end if;
  end process;
  
end Behavioral;

