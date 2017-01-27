----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Filename     Counter.vhd
-- Title        Counter
--
-- Company      Design Gateway Co., Ltd.
-- Project      
-- PJ No.       
-- Syntax       VHDL
-- Note         

-- Version      0.01
-- Author       
-- Date         
-- Remark       New Creation
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity writebyme is
    Port 
	( 		
		BRin: in std_logic_vector(2 downto 0);
		keybit: out std_logic_vector(9 downto 0) --for rub-kha kor-mune
    );
end writebyme;

architecture Behavioral of writebyme is
	--------------------------------------
	Component dcm133
	Port
	(
		CLKIN_IN 		: in 	std_logic;
		RST_IN 			: in 	std_logic;          
		CLKFX_OUT 		: out 	std_logic;
		CLKIN_IBUFG_OUT : out 	std_logic;
		CLK0_OUT 		: out 	std_logic;
		LOCKED_OUT 		: out 	std_logic
	);
	End Component dcm133;
	--------------------------------------
	--------------------------------------
	signal BRsig: integer:=0; --the value of BR in bps unit
	signal waitsec: integer:=0; --how long it should wait before read kor-mune
	signal i: integer:=1;
	signal j: integer:=0;
	signal fromkeyboard: std_logic_vector(7 downto 0);
	--next time ja move "fromkeyboard" pai wai tee port as an input cus tong use for rub kor-mune from keyboard
	--but in this case ja fix kha pai gorn
	------- for state --------
	constant SA: std_logic_vector(2 downto 0):="001";
	constant SB: std_logic_vector(2 downto 0):="010";
	constant SC: std_logic_vector(2 downto 0):="100";
	signal state: std_logic_vector(2 downto 0):="001";
	constant S1: std_logic_vector(1 downto 0):="01";
	constant S2: std_logic_vector(1 downto 0):="10";
	signal state0: std_logic_vector(1 downto 0):="01";
	--------------------------
	--- for rub-kha clk133 ---
	signal clkin: std_logic;
	signal rstin: std_logic;
	signal clkout: std_logic;
	signal clkibufg: std_logic;
	signal clk: std_logic; --***use clk for being a clock133***--
	signal locked: std_logic;
	--------------------------
	--- for count (instead of using "wait for waitsec") ---
	signal count1: integer:=0;
	signal count2: integer:=0;
	signal count3: integer:=0;
	--------------------------------------
begin
	Japortmap: dcm133 port map (CLKIN_IN=>clkin,RST_IN=>rstin,CLKFX_OUT=>clkout,CLKIN_IBUFG_OUT=>clkibufg,CLK0_OUT=>clk,LOCKED_OUT=>locked);

	keybit(0)<='1';
	keybit(9)<='0';

	fromkeyboard<="01011101";
	
	process(state0,BRin,state,clk,i,waitsec)
	begin
	case state0 is
	when S1 =>
	------------
		case BRin is
			when "000" => BRsig<=4800;
			when "001" => BRsig<=9600;
			when "011" => BRsig<=19200;
			when "100" => BRsig<=38400;
			when "101" => BRsig<=57600;
			when "110" => BRsig<=115200;
			when others=> BRsig<=230400;
		end case;
	if BRsig = 0 then state0 <=S1;
	else state0 <=S2;
	end if;
	-------------
	when others=>
	-------------
		case BRsig is
		when 4800 => waitsec<= 208334;
		when 9600 => waitsec<= 104167;
		when 14400 => waitsec<= 69445;
		when 19200 => waitsec<= 52084;
		when 38400 => waitsec<= 26042;
		when 57600 => waitsec<= 17362;
		when 115200 => waitsec<=8681;
		when others => waitsec<=4341;
		end case;
	-------------
		case state is
			when SA =>
				if rising_edge(clk) then
					while count1<waitsec loop
						if rising_edge(clk) then
							count1 <= count1 +1;
						else count1<=count1;
						end if;
					end loop;
					keybit(0)<='0';
					if rising_edge(clk) then
					state <= SB;
					else
					state <= SA;
					end if;
				else state<=SA;
				end if;
			when SB =>
				if(i<=1)then
				while(i<=8) loop
					if rising_edge(clk) then
					while count2<waitsec loop
						if rising_edge(clk) then
							count2 <= count2 +1;
						else count2<=count2;
						end if;
					end loop;
					keybit(i)<= fromkeyboard(j);
					i<=i+1;
					j<=j+1;
					end if;
				end loop;
				else
				state <= SC;
				end if;
			when SC =>
				if rising_edge(clk) then
					while count3<waitsec loop
						if rising_edge(clk) then
							count3 <= count3 +1;
						else count3<=count3;
						end if;
					end loop;
					keybit(9)<='1';
					if rising_edge(clk) then
						state <= SA;
					else
						state <= SC;
					end if;
				else state<=SC;
				end if;
			when others =>
				state <= SA;
		end case;
	end case;
	end process;
	

end Behavioral;