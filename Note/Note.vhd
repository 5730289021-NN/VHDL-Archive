----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:51 11/21/2016 
-- Design Name: 
-- Module Name:    Note - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Note is
    Port ( osc : in  STD_LOGIC;
           buzzer : out  STD_LOGIC;
			  a : out STD_LOGIC);
end Note;

architecture Behavioral of Note is

signal C4 : std_logic_vector(16 downto 0);
signal D4 : std_logic_vector(16 downto 0);
signal E4 : std_logic_vector(16 downto 0);
signal F4 : std_logic_vector(16 downto 0);
signal G4 : std_logic_vector(15 downto 0);
signal A4 : std_logic_vector(15 downto 0);
signal B4 : std_logic_vector(15 downto 0);
signal C5 : std_logic_vector(15 downto 0);
signal R1 : std_logic;
signal R2 : std_logic;
signal R3 : std_logic;
signal R4 : std_logic;
signal R5 : std_logic;
signal R6 : std_logic;
signal R7 : std_logic;
signal R8 : std_logic;
signal Clk : std_logic_vector(24 downto 0);
signal state : std_logic_vector(4 downto 0);
signal output : std_logic;

begin
	a<='1';
	process(osc) begin
		if(osc'event and osc = '1') then
			if (C4>=95785)then C4<= (others=>'0');
			else C4 <= C4 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(D4>=85034) then D4 <= (others=>'0');
			else D4 <= D4 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(E4>=75987) then E4 <= (others=>'0');
			else E4 <= E4 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(F4>=71633) then F4 <= (others=>'0');
			else F4 <= F4 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(G4>=63775) then G4 <= (others=>'0');
			else G4 <= G4 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(A4>=56818) then A4 <= (others=>'0');
			else A4 <= A4 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(B4>=50709) then B4 <= (others=>'0');
			else B4 <= B4 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(C5>=47801) then C5 <= (others=>'0');
			else C5 <= C5 + 1;
			end if;
		end if;
	end process;
	
	process(osc) begin
		if(osc'event and osc = '1') then
			if(Clk>=24999999) then Clk <= (others=>'0');
			else Clk <= Clk + 1;
			end if;
		end if;
	end process;
	
	process(Clk(24)) begin
		if(Clk(24)'event and Clk(24) = '1') then
			if(state>=21) then state <= "00000";
			else state <= state + 1;
			end if;
		end if;
	end process;
	
	process(R1,R2,R3,R4,R5,R6,R7,R8) begin
		if (C4<86207) then R1<='0'; else R1<='1'; end if;
		if (D4<76531) then R2<='0'; else R2<='1'; end if;
		if (E4<68388) then R3<='0'; else R3<='1'; end if;
		if (F4<64450) then R4<='0'; else R4<='1'; end if;
		if (G4<57038) then R5<='0'; else R5<='1'; end if;
		if (A4<51136) then R6<='0'; else R6<='1'; end if;
		if (B4<45638) then R7<='0'; else R7<='1'; end if;
		if (C5<43021) then R8<='0'; else R8<='1'; end if;
	end process;
	
	process(state)
		begin
		case state is
			when "00000"=> output <= R1;
			when "00001"=> output <= R2;
			when "00010"=> output <= R3;
			when "00011"=> output <= R4;
			when "00100"=> output <= R5;
			when "00101"=> output <= R6;
			when "00110"=> output <= R7;
			when "00111"=> output <= R8;
			when "01000"=> output <= R7;
			when "01001"=> output <= R6;
			when "01010"=> output <= R5;
			when "01011"=> output <= R4;
			when "01100"=> output <= R3;
			when "01101"=> output <= R2;
			when "01110"=> output <= R1;
			when "01111"=> output <= R3;
			when "10000"=> output <= R5;
			when "10001"=> output <= R8;
			when "10010"=> output <= R5;
			when "10011"=> output <= R3;
			when others => output <= R1;
		end case;
	end process;
	buzzer<=output;

end Behavioral;

