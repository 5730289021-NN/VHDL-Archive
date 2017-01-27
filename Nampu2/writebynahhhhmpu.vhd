----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:14 01/13/2017 
-- Design Name: 
-- Module Name:    writebynahhhhmpu - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity writebynahhhhmpu is
port(SysClk : in  STD_LOGIC;
		BRin: in std_logic_vector(2 downto 0);
		myinput: in std_logic_vector(4 downto 0);
--		info: in std_logic_vector(7 downto 0);
		reset: in std_logic;
		ascii: out std_logic
		);
end writebynahhhhmpu;

architecture Behavioral of writebynahhhhmpu is
	------------------------------------------
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
	--------------------------------------------
	signal period: integer;
	signal count: integer:=0;
	signal work: integer:=0;
	signal state: std_logic_vector(4 downto 0):="00000";
--	signal i: integer:=1;
--	signal j: integer:=0;
	signal info: std_logic_vector(7 downto 0);
--	signal output: std_logic_vector(9 downto 0);

	
--- for rub-kha clk133 ---
	signal rstin: std_logic;
	signal clk: std_logic; --***use clk for being a clock133***--
	signal locked: std_logic;
--------------------------
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

	ChooseBR: process(clk) is
	begin
		if(rising_edge(clk)) then
--			if(reset='0') then
		--
--			else
				case BRin is
					when "000" => period<=27709; --4800
					when "001" => period<=13855;--9600
					when "010" => period<=9237;--14400
					when "011" => period<=6928;--19200
					when "100" => period<=3464;--38400
					when "101" => period<=2310;--57600
					when "110" => period<=1155;--115200
					when others=> period<=578; --230400
				end case;
--			end if;
		end if;
	end process ChooseBR;
	
	--come back and write about period duay
	
	Counter: process(clk) is
	begin
		if(rising_edge(clk)) then
			if(reset='0') then
				work<=0;
				count<=0;
			else
				if(count<period) then
					work<=0;
					count<=count+1;
				else
					work<=1;
					count<=0;
				end if;
			end if;
		end if;
	end process Counter;
	
	Rubkha: process(clk) is
	begin
		if(rising_edge(clk)) then
			if(reset='0') then
				state<="00000";
			else
				case state is
				------------------->>>>
				when "00000" =>
					if(work=1) then
						if (myinput="01110") then
							info<="01001110";
						else
							info<="01110000";
						end if;
						state<="00001";
					else
						state<="00000";
					end if;
				
				when "00001" =>
					if(work=1) then
						ascii<=info(0);
						state<="00010";
					else
						state<="00001";
					end if;
				when "00010" =>
					if(work=1) then
						ascii<=info(1);
						state<="00011";
					else
						state<="00010";
					end if;
				when "00011" =>
					if(work=1) then
						ascii<=info(2);
						state<="00100";
					else
						state<="00011";
					end if;
				when "00100" =>
					if(work=1) then
						ascii<=info(3);
						state<="00101";
					else
						state<="00100";
					end if;
				when "00101" =>
					if(work=1) then
						ascii<=info(4);
						state<="00110";
					else
						state<="00101";
					end if;
				when "00110" =>
					if(work=1) then
						ascii<=info(5);
						state<="00111";
					else
						state<="00110";
					end if;
				when "00111" =>
					if(work=1) then
						ascii<=info(6);
						state<="01000";
					else
						state<="00111";
					end if;
				when others=>
					if(work=1) then
						ascii<=info(7);
						state<="01001";
					else
						state<="01000";
					end if;
			end case;

			end if;
		end if;
	end process Rubkha;

end Behavioral;

