library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity PRO is
    Port (  BS1 : in  STD_LOGIC; --set A
            BS2 : in  STD_LOGIC; --set B
            BS3 : in  STD_LOGIC; --plus
            BS4 : in  STD_LOGIC; --minus
            BS5 : in  STD_LOGIC; --reset
            DIP : in  STD_LOGIC_VECTOR (7 downto 0); --Dip Switch 8 bits
				CLK : in  STD_LOGIC;
             Z  : out  STD_LOGIC_VECTOR (6 downto 0); --Seven Segment 7 bits
           digi : out  STD_LOGIC_VECTOR (3 downto 0) --Digit 4 bits
);
end PRO;

architecture Behavioral of PRO is
 signal A: std_logic_vector(7 downto 0); -- input A
 signal B: std_logic_vector(7 downto 0); -- input B
 signal C: std_logic; -- carry in
 signal C1, C2 , C3 , C4 , C5, C6 , C7 : STD_LOGIC; --Set variables for each Ci+1
 signal Cout : STD_LOGIC; --Set C out
 signal SxorB : STD_LOGIC_Vector (7 downto 0); --Set variables for the result of C exclusive or vector B
 signal F: std_logic_vector(8 downto 0); -- Result 9 bit
 signal binIN: std_logic_vector(11 downto 0); -- binary 12 bit for changing to 4 digit
 signal ones,tens,hundreds,thousands: std_logic_vector(3 downto 0); -- 4 digits
 signal zout: std_logic_vector(3 downto 0);
 signal CNT: std_logic_vector(1 downto 0);
 signal digi2: std_logic_vector(3 downto 0);
 
component bin2bcd_12bit is
    Port ( binIN : in  STD_LOGIC_VECTOR (11 downto 0);
           ones : out  STD_LOGIC_VECTOR (3 downto 0);
           tens : out  STD_LOGIC_VECTOR (3 downto 0);
           hundreds : out  STD_LOGIC_VECTOR (3 downto 0);
           thousands : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
    
component sevenseg is
Port ( digit_0 : in  STD_LOGIC_VECTOR (3 downto 0);
           Z: out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component CNTGEN is
    Port ( CLK : in  STD_LOGIC;
           CNT : out  STD_LOGIC_vector(1 downto 0));
end component;

component decoder is
port( CNT : in std_logic_vector(1 downto 0);
  digi: out std_logic_vector(3 downto 0));
end component;

begin
 process 
  begin

  if (BS1= '0') then
   A <= DIP; -- set A
   binIN<="0000" & A; -- Change A to 12-bits for Showing A
  end if;
 
  if (BS2= '0') then
   B <= DIP; -- set B
   binIN<="0000" & B; -- Change B to 12-bits for Showing B
  end if;
 
  if (BS3= '0') then             -- plus
	C<='0';
	SxorB(0) <= C xor B(0); 
   SxorB(1) <= C xor B(1);
   SxorB(2) <= C xor B(2);
   SxorB(3) <= C xor B(3);
   SxorB(4) <= C xor B(4);
   SxorB(5) <= C xor B(5);
   SxorB(6) <= C xor B(6);
   SxorB(7) <= C xor B(7);
   F(0) <= A(0) xor SxorB(0) xor C;
   C1 <= (A(0) and SxorB(0)) or (C and (A(0) xor SxorB(0)));
   F(1) <= A(1) xor SxorB(1) xor C1;
   C2 <= (A(1) and SxorB(1)) or (C1 and (A(1) xor SxorB(1)));
   F(2) <= A(2) xor SxorB(2) xor C2;
   C3 <= (A(2) and SxorB(2)) or (C2 and (A(2) xor SxorB(2)));
   F(3) <= A(3) xor SxorB(3) xor C3;
   C4 <= (A(3) and SxorB(3)) or (C3 and (A(3) xor SxorB(3)));
   F(4) <= A(4) xor SxorB(4) xor C4;
   C5 <= (A(4) and SxorB(4)) or (C4 and (A(4) xor SxorB(4)));
   F(5) <= A(5) xor SxorB(5) xor C5;
   C6 <= (A(5) and SxorB(5)) or (C5 and (A(5) xor SxorB(5)));
   F(6) <= A(6) xor SxorB(6) xor C6;
   C7 <= (A(6) and SxorB(6)) or (C6 and (A(6) xor SxorB(6)));
   F(7) <= A(7) xor SxorB(7) xor C7;
   Cout <= (A(7) and SxorB(7)) or (C7 and (A(7) xor SxorB(7)));
   F(8) <= Cout;
   binIN<="000" & F;
  end if;
 
  if (BS4= '0') then -- minus
	C <= '0';
   -- Find the result, F and Cout of the device of a two's complement adder/subtractor combination.
   F(0) <= A(0) xor B(0) xor C;
   C1 <= ((not(A(0))) and B(0)) or (B(0) and C)or (C and (not(A(0))));
	F(1) <= A(1) xor B(1) xor C1;
   C2 <= (not(A(1)) and B(1)) or (B(1) and C1)or (C1 and not(A(1)));
	F(2) <= A(2) xor B(2) xor C2;
   C3 <= (not(A(2)) and B(2)) or (B(2) and C2)or (C2 and not(A(2)));
	F(3) <= A(3) xor B(3) xor C3;
   C4 <= (not(A(3)) and B(3)) or (B(3) and C3)or (C3 and not(A(3)));
	F(4) <= A(4) xor B(4) xor C4;
   C5 <= (not(A(4)) and B(4)) or (B(4) and C4)or (C4 and not(A(4)));
	F(5) <= A(5) xor B(5) xor C5;
   C6 <= (not(A(5)) and B(5)) or (B(5) and C5)or (C5 and not(A(5)));
	F(6) <= A(6) xor B(6) xor C6;
   C7 <= (not(A(6)) and B(6)) or (B(6) and C6)or (C6 and not(A(6)));
	F(7) <= A(7) xor B(7) xor C7;
   Cout <= (not(A(7)) and B(7)) or (B(7) and C7)or (C7 and not(A(7)));
   F(8) <= Cout;
   binIN<="000" & F;
  end if;
 
  if (BS5= '0') then
   C <= '0';
   A <= "00000000";
   B <= "00000000";
   binIN<="000000000000";
  end if;
 end process;

 bin: bin2bcd_12bit port map (binIN,ones,tens,hundreds,thousands);
 CLOCK: CNTGEN port map (CLK,CNT);
 DCD: decoder port map (CNT,digi2);
 digi <= digi2;
 
 process(CLK)
  begin
   if (digi2 = "1110") then zout<=ones; end if;
   if (digi2 = "1101") then zout<=tens; end if;
   if (digi2 = "1011") then zout<=hundreds; end if;
   if (digi2 = "0111") then zout<=thousands; end if;
 end process;

 seg: sevenseg port map (zout,Z);

end Behavioral;