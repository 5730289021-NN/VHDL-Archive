library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity writeaeng is
    Port ( SysClk : in  STD_LOGIC;
		BRin: in std_logic_vector(2 downto 0);
		startbit: out std_logic;
		stopbit: out std_logic;
		keybit: out std_logic_vector(7 downto 0) --for rub-kha kor-mune
	 );
end writeaeng;

architecture Behavioral of writeaeng is
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
	signal i: integer:=0;
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
	signal rstin: std_logic;
	signal clk: std_logic; --***use clk for being a clock133***--
	signal locked: std_logic;
	--------------------------
	--- for count (instead of using "wait for waitsec") ---
	signal count1: integer:=0;
	signal count2: integer:=0;
	signal count3: integer:=0;
	--------------------------------------
begin
	u_dcm133 : dcm133
	Port map
	(
		CLKIN_IN 		=> SysClk	,
		RST_IN 			=> rstin   ,
		CLKFX_OUT 		=> clk      ,
		CLKIN_IBUFG_OUT => open     ,
		CLK0_OUT 		=> open     ,
		LOCKED_OUT 		=> locked
	);

	fromkeyboard<="01011101";
	
	assign: Process(BRin) is
		begin
		if(state0=S1) then
			case BRin is
				when "000" => BRsig<=4800;
				when "001" => BRsig<=9600;
				when "011" => BRsig<=19200;
				when "100" => BRsig<=38400;
				when "101" => BRsig<=57600;
				when "110" => BRsig<=115200;
				when others=> BRsig<=230400;
			end case;
			state0<=S2;
		else
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
		end if;
	end process assign;

	u_count1: Process(clk) is
		begin
			if(rising_edge(clk)) then
				if(state=SA) then
					if(count1<waitsec) then
						count1<=count1+1;
					else
						startbit<='0';
					end if;
				else
					count1<=count1;
				end if;	
			end if;
	end process u_count1;
			
	u_count2: Process(clk) is
		begin
			if(rising_edge(clk)) then
				if(state=SB) then
					if(count2<waitsec) then
						count2<=count2+1;
					else
						if(i<8) then
							keybit(i)<= fromkeyboard(j);
							i<=i+1;
							j<=j+1;
						else state<=SC;
						end if;
					end if;
				else
					count2<=count2;
				end if;
			end if;
	end process u_count2;

	u_count3: Process(clk) is
		begin
			if(rising_edge(clk)) then
				if(state=SC) then
					if(count3<waitsec) then
						count3<=count3+1;
					else
						stopbit<='1';
					end if;
				else
					count3<=count3;
				end if;			
			end if;
	end process u_count3;




--
end Behavioral;

