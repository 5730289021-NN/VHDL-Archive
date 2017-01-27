library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity scroll is
	port( mclk : in STD_LOGIC;
			btn : in STD_LOGIC_VECTOR(3 downto 3);
			a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
			an : out STD_LOGIC_VECTOR(3 downto 0);
			dp : out STD_LOGIC
		  );
end scroll;

architecture Behavioral of scroll is
component clkdiv is
	port(
			mclk : in STD_LOGIC;
			clr : in STD_LOGIC;
			clk190 : out STD_LOGIC;
			clk3 : out STD_LOGIC
			);
end component;

component P7 is
	port(
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		x : out STD_LOGIC_VECTOR(12 downto 0)
		);
end component;

component x7 is
	port( 
			x    : 	in STD_LOGIC_VECTOR(12 downto 0);
	      cclk : 	in STD_LOGIC;
			clr  : 	in STD_LOGIC;
			a_to_g : out STD_LOGIC_vector(6 downto 0);
			an   : 	out STD_LOGIC_VECTOR(3 downto 0);
			dp   : 	out STD_LOGIC
		  );
end component;

signal clr,clk190,clk3 : STD_LOGIC;
signal x : STD_LOGIC_VECTOR(12 downto 0);
begin
	clr <= btn(3);
	U1 : clkdiv
		port map(
				mclk =>mclk,
				clr => clr,
				clk190 => clk190,
				clk3 => clk3
				);
	U2 : P7
		port map(
				clk => clk3,
				clr => clr,
				x => x
				);
	U3 : x7
		port map(
			x => x,
			cclk => clk190,
			clr => clr,
			a_to_g => a_to_g,
			an => an,
			dp => dp
		);
end Behavioral;

