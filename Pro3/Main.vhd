library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Main is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  CLOCK : in  STD_LOGIC;
			  z : out  STD_LOGIC;
			  LEDS : out  STD_LOGIC_VECTOR (6 downto 0);
			  digit : out STD_LOGIC_VECTOR (1 downto 0)
           );
end Main;

architecture Behavioral of Main is
	signal Da : std_logic;
	signal Db : std_logic;
	signal Dc : std_logic;
	signal A : std_logic;
	signal B : std_logic;
	signal C : std_logic;
	signal Seg1 : STD_LOGIC_VECTOR (6 downto 0);
   signal Seg2 : STD_LOGIC_VECTOR (6 downto 0);
	signal LEDBuffer : std_logic_vector(6 downto 0);
	signal ClockDivide : integer := 0;
	signal clock2 : std_logic;
	
component DFF is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin
	Da <= ((not A) and (not B) and (not C)) or ((A) and (C) and (not Y)) or ((A) and (not X) and (not Y)) or ((A) and (X) and (Y)) or ((A) and (B));
	Db <= ((not A) and (not B) and (not C)) or ((not B) and (not C) and (X) and (not Y)) or ((B) and (C) and (X)and (not Y)) or ((B) and (X) and (Y)) or ((A) and (B) and (not X) and (Y)) or ((B) and (not X) and (not Y));
	Dc <= ((not A) and (not B) and (not C)) or ((B) and (not C) and (X) and (not Y)) or ((A) and (not C) and (X)and (not Y)) or ((X) and (C) and (Y)) or ((not X) and (B) and (C)) or ((C) and (not X) and (not Y)) or ((A) and (not X) and(C));
	
	f0 : DFF port map (Da,CLOCK,A);
	f1 : DFF port map (Db,CLOCK,B);
	f2 : DFF port map (Dc,CLOCK,C);
	
	Seg1(6) <= (( Not A)and (Not B) and(Not C)) or ((Not A) and ( B) and (not C)) or ((not A) and (B) and (C)) or ((A)and (Not B) and(C)) or ((A)and (B) and(Not C)) or ((A)and (B) and(C));
   Seg1(5) <= (( Not A)and (Not B) and(Not C)) or ((Not A) and (not B) and (C)) or ((not A) and (B) and (not C)) or ((not A)and (B) and(C)) or ((A)and (not B) and(Not C)) or ((A)and (B) and(C));
	Seg1(4) <= (( Not A)and (Not B) and(Not C)) or ((Not A) and (not B) and (C)) or ((not A) and (B) and (C)) or ((A)and (Not B) and(not C)) or ((A)and (not B) and(C)) or ((A) and (B) and (not C)) or ((A)and (B) and(C));
	Seg1(3) <= (( Not A)and (Not B) and(Not C)) or ((Not A) and ( B) and (not C)) or ((not A) and (B) and (C)) or ((A)and (Not B) and(C)) or ((A)and (B) and(Not C));
	Seg1(2) <= (( Not A)and (Not B) and(Not C)) or ((Not A) and ( B) and (not C)) or ((A) and (B) and (not C));
	Seg1(1) <= (( Not A)and (Not B) and(Not C)) or ((A) and (not B) and (not C)) or ((A) and (not B) and (C)) or ((A)and (B) and(not C));
	Seg1(0) <= (( Not A)and (B) and(Not C)) or ((Not A) and (B) and (C)) or ((A) and (not B) and (not C)) or ((A)and (Not B) and(C)) or ((A)and (B) and(Not C));
	
	
	Seg2(6) <= '1'; Seg2(5) <= '1';Seg2(4) <= '1';Seg2(3) <= '1';Seg2(2) <= '1';Seg2(1) <= '1';Seg2(0) <= '0';
	
	z  <= not(A or B  or C);
	
	process(CLOCK,Seg1,Seg2)
	variable CountSegment : integer := 0;
	variable state : integer := 0;
	
	begin
		CountSegment := CountSegment + 1;
		if(CountSegment = 100) then
			CountSegment := 0;
			state := state + 1;
			if(state = 2) then
				state := 0;
			end if;
			case state is
				when 0 => digit <= "01"; LEDBuffer <= Seg1;
				when 1 => digit <= "10"; LEDBuffer <= Seg2;
				when others => digit <= "11";
			end case;
		end if;
		
		--ClockDivide <= ClockDivide + 1;
		--if(ClockDivide = 25000000) then
		--	ClockDivide <= 0;
		--	clock2 <= not clock2;
		--end if;
		
	end process;
	LEDS <= LEDBuffer;

end Behavioral;
