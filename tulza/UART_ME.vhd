----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:24 01/04/2017 
-- Design Name: 
-- Module Name:    UART_ME - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_ME is
    Port ( SysRstB				: in	std_logic;
			  SysClk				: in	std_logic;
			  reset 					: in STD_LOGIC;
			  dsw 					: in  STD_LOGIC_VECTOR(2 downto 0);
           --din : in  STD_LOGIC_VECTOR (29 downto 0);
           dout : out  STD_LOGIC);
			  
end UART_ME;

architecture Behavioral of UART_ME is
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

TYPE state is (firstst,secondst,thirdst,fourthst);
signal mult, mult16 ,clkmult : integer; 

signal tm_reg : std_logic_vector(7 downto 0);
signal tmcount : integer;
signal tmFSM : state := firstst;
signal tmBusy,Top16,Toptm : std_logic;
signal RegDin : std_logic_vector(7 downto 0);
signal Din : std_logic_vector(7 downto 0) := "10100110";
signal SysRst :std_logic;
signal clk133 : std_logic;
signal RstB : std_logic;
signal count1 : integer;
begin
 SysRst		<= not SysRstB;
	
	u_dcm133 : dcm133
	Port map 
	(
		CLKIN_IN 		=> SysClk	,
		RST_IN 			=> SysRst   ,
		CLKFX_OUT 		=> clk133    ,
		CLKIN_IBUFG_OUT => open     ,
		CLK0_OUT 		=> open     ,
		LOCKED_OUT 		=> RstB
	);
 

 process (reset, clk133)--BRselect
  begin
   if reset='1' then
    mult <= 0;
   elsif rising_edge(clk133) then
    case dsw is
     when "000" => mult <= 577; -- 230400
     when "001" => mult <= 1154; -- 115200
     when "010" => mult <= 2309; -- 57600
     when "011" => mult <= 3463; -- 38400
     when "100" => mult <= 6927;  --19200
     when "101" => mult <= 9236; -- 14400
     when "110" => mult <=  13854;  
     when "111" => mult <= 27708; -- 4800
     when others => mult <= 35; -- n.u.
     end case;
   end if;
  end process;
  
 process (reset, clk133)--clk gen
   begin
    if reset='1' then
     Top16 <= '0';
     mult16 <= 0;
    elsif rising_edge(clk133) then
     Top16 <= '0';
     if mult16 = mult then
      mult16 <= 0;
      Top16 <= '1';
     else
      mult16 <= mult16 + 1;
     end if;
    end if;
   end process;  
	
	 process (reset, clk133) -- tmclk
   begin
    if reset='1' then
     Toptm <= '0';
     clkmult <= 0;
    elsif rising_edge(clk133) then
     Toptm <= '0';
      if Top16='1' then
       clkmult <= clkmult + 1;
       if clkmult = 15 then
        Toptm <= '1';
        clkmult <= 0;
       end if;
      end if;
    end if;
   end process;

   


  tm_FSM: process (reset, clk133)  --tm
   begin
	--dout <= tm_Reg;
    if reset='1' then
     tm_Reg <= (others => '1');
     tmcount <= 0;
     tmFSM <= firstst;
     tmBusy <= '0';
     --RegDin <= (others=>'0');
    elsif rising_edge(clk133) then
		count1 <= count1+1;
	 if (count1 <= mult) then 
	 count1 <= 0; 
     tmBusy <= '1'; -- except when explicitly '0'
     case tmFSM is
      when firstst =>
        RegDin <= Din;
        --tmBusy <= '1';
        tmFSM <= secondst;
      when secondst =>
       if Toptm='1' then
        tmFSM <= thirdst;
        tmcount <= 8 ;-- start + data
        tm_reg <= RegDin ;
       end if;
      when thirdst =>
		  dout <= '0';
       if Toptm='1' then
         dout <= tm_reg(tmcount) ;
			 tmcount <= tmcount - 1;
        if tmcount=0 then
		   dout <= '1';
         tmFSM <= fourthst;
        end if;
       end if;
      when fourthst =>
       if Toptm='1' then
        tmFSM <= firstst;
       end if;
      when others =>
       tmFSM <= firstst;
     end case;
    end if;
	 
	end if ;
   end process;
	


end Behavioral;