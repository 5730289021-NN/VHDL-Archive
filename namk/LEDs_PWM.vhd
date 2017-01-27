library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity LEDs_PWM is
	Port(SysClk : in std_logic;
		SysRstB: in std_logic;
		dipsw:in std_logic_vector(7 downto 0);
		led:out std_logic );
end LEDs_PWM;
architecture Behavioral of LEDs_PWM is
signal a0:integer:=0;
signal a1:integer:=0;
signal a2:integer:=0;
signal a3:integer:=0;
signal a4:integer:=0;
signal a5:integer:=0;
signal a6:integer:=0;
signal a7:integer:=0;
signal dec:integer:=0;                      
signal clkdiv:std_logic;
signal reset:std_logic;
signal count : integer := 0;
signal tmp :std_logic :='1';
signal SysRst :std_logic;
signal Clk :std_logic;
signal RstB:std_logic;
component dcm133
	port ( CLKIN_IN        : in    std_logic; 
          RST_IN          : in    std_logic; 
          CLKFX_OUT       : out   std_logic; 
          CLKIN_IBUFG_OUT : out   std_logic; 
          CLK0_OUT        : out   std_logic; 
          LOCKED_OUT      : out   std_logic);
end component;
begin
SysRst		<= not SysRstB;
 u_dcm133 : dcm133
	Port map
	(
		CLKIN_IN 		=> SysClk	,
		RST_IN 			=> SysRst   ,
		CLKFX_OUT 		=> Clk      ,
		CLKIN_IBUFG_OUT => open     ,
		CLK0_OUT 		=> open     ,
		LOCKED_OUT 		=> RstB 
	);
process(clk)
begin
	if (clk'event and clk = '1') then
		if (dipsw(0)='1') then a0<=1;
		else a0<=0;
		end if;
		if (dipsw(1)='1') then a1<=2;
		else a1<=0;
		end if;
		if (dipsw(2)='1') then a2<=4; 
		else a2<=0;
		end if;
		if (dipsw(3)='1') then a3<=8; 
		else a3<=0;
		end if;
		if (dipsw(4)='1') then a4<=16;
		else a4<=0;
		end if;
		if (dipsw(5)='1') then a5<=32; 
		else a5<=0;
		end if;
		if (dipsw(6)='1') then a6<=64; 
		else a6<=0;
		end if;
		if (dipsw(7)='1') then a7<=128; 
		else a7<=0;
		end if;
		dec<=a0+a1+a2+a3+a4+a5+a6+a7;
		
	end if;
end process ;
process(clk) --clkgen
begin
	if (count > 256 ) then
		count <= 0;
	elsif(clk'event and clk='1') then
		count <= count+1;
		if (count>dec)then
		tmp <= '0';
		else 
		tmp <= '1';
		end if;
	end if;
end process;
	led <= tmp;
 
end Behavioral;