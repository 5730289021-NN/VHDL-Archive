library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
port( CNT : in std_logic_vector(1 downto 0);
		digi: out std_logic_vector(3 downto 0)
);
end decoder;

architecture Behavioral of decoder is
begin
process(CNT)
begin
case CNT is when "00" => digi <= "1110";
            when "01" => digi <= "1101";
            when "10" => digi <= "1011";
            when others => digi <= "0111";
				end case ;

end process;

end Behavioral;
