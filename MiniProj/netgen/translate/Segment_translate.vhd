--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Segment_translate.vhd
-- /___/   /\     Timestamp: Sat Nov 19 21:56:31 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm Segment -w -dir netgen/translate -ofmt vhdl -sim Segment.ngd Segment_translate.vhd 
-- Device	: 3s200tq144-4
-- Input file	: Segment.ngd
-- Output file	: C:\Users\noraw\Documents\VHDL\MiniProj\netgen\translate\Segment_translate.vhd
-- # of Entities	: 1
-- Design Name	: Segment
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Segment is
  port (
    d0 : out STD_LOGIC; 
    d1 : out STD_LOGIC; 
    d2 : out STD_LOGIC; 
    d3 : out STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    Segments : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    bcd : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Segment;

architecture Structure of Segment is
  signal Mrom_Segments_mux0001 : STD_LOGIC; 
  signal Mrom_Segments_mux00011 : STD_LOGIC; 
  signal Mrom_Segments_mux000121 : STD_LOGIC; 
  signal Mrom_Segments_mux000131 : STD_LOGIC; 
  signal Mrom_Segments_mux00014 : STD_LOGIC; 
  signal Mrom_Segments_mux00015 : STD_LOGIC; 
  signal Mrom_Segments_mux00016 : STD_LOGIC; 
  signal Segments_0_17 : STD_LOGIC; 
  signal Segments_1_18 : STD_LOGIC; 
  signal Segments_2_19 : STD_LOGIC; 
  signal Segments_3_20 : STD_LOGIC; 
  signal Segments_4_21 : STD_LOGIC; 
  signal Segments_5_22 : STD_LOGIC; 
  signal Segments_6_23 : STD_LOGIC; 
  signal bcd_0_IBUF_28 : STD_LOGIC; 
  signal bcd_1_IBUF_29 : STD_LOGIC; 
  signal bcd_2_IBUF_30 : STD_LOGIC; 
  signal bcd_3_IBUF_31 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal d3_OBUF_38 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  XST_GND : X_ZERO
    port map (
      O => d3_OBUF_38
    );
  Segments_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mrom_Segments_mux0001,
      O => Segments_0_17,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Segments_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mrom_Segments_mux00011,
      O => Segments_1_18,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Segments_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mrom_Segments_mux00014,
      O => Segments_4_21,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Segments_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mrom_Segments_mux00015,
      O => Segments_5_22,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Segments_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mrom_Segments_mux00016,
      O => Segments_6_23,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Mrom_Segments_mux000141 : X_LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      ADR0 => bcd_3_IBUF_31,
      ADR1 => bcd_1_IBUF_29,
      ADR2 => bcd_2_IBUF_30,
      ADR3 => bcd_0_IBUF_28,
      O => Mrom_Segments_mux00014
    );
  Mrom_Segments_mux000151 : X_LUT4
    generic map(
      INIT => X"ACE8"
    )
    port map (
      ADR0 => bcd_3_IBUF_31,
      ADR1 => bcd_2_IBUF_30,
      ADR2 => bcd_1_IBUF_29,
      ADR3 => bcd_0_IBUF_28,
      O => Mrom_Segments_mux00015
    );
  Mrom_Segments_mux0001111 : X_LUT4
    generic map(
      INIT => X"F9D8"
    )
    port map (
      ADR0 => bcd_2_IBUF_30,
      ADR1 => bcd_3_IBUF_31,
      ADR2 => bcd_1_IBUF_29,
      ADR3 => bcd_0_IBUF_28,
      O => Mrom_Segments_mux00011
    );
  Mrom_Segments_mux000111 : X_LUT4
    generic map(
      INIT => X"E9C9"
    )
    port map (
      ADR0 => bcd_2_IBUF_30,
      ADR1 => bcd_3_IBUF_31,
      ADR2 => bcd_1_IBUF_29,
      ADR3 => bcd_0_IBUF_28,
      O => Mrom_Segments_mux0001
    );
  Mrom_Segments_mux000161 : X_LUT4
    generic map(
      INIT => X"FA14"
    )
    port map (
      ADR0 => bcd_1_IBUF_29,
      ADR1 => bcd_0_IBUF_28,
      ADR2 => bcd_2_IBUF_30,
      ADR3 => bcd_3_IBUF_31,
      O => Mrom_Segments_mux00016
    );
  bcd_3_IBUF : X_BUF
    port map (
      I => bcd(3),
      O => bcd_3_IBUF_31
    );
  bcd_2_IBUF : X_BUF
    port map (
      I => bcd(2),
      O => bcd_2_IBUF_30
    );
  bcd_1_IBUF : X_BUF
    port map (
      I => bcd(1),
      O => bcd_1_IBUF_29
    );
  bcd_0_IBUF : X_BUF
    port map (
      I => bcd(0),
      O => bcd_0_IBUF_28
    );
  Segments_2 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mrom_Segments_mux000121,
      SSET => bcd_0_IBUF_28,
      O => Segments_2_19,
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Mrom_Segments_mux0001211 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => bcd_1_IBUF_29,
      ADR1 => bcd_3_IBUF_31,
      ADR2 => bcd_2_IBUF_30,
      O => Mrom_Segments_mux000121
    );
  Segments_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Mrom_Segments_mux000131,
      SSET => Mrom_Segments_mux00016,
      O => Segments_3_20,
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Mrom_Segments_mux0001311 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => bcd_2_IBUF_30,
      ADR1 => bcd_1_IBUF_29,
      ADR2 => bcd_0_IBUF_28,
      O => Mrom_Segments_mux000131
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  Segments_0_OBUF : X_OBUF
    port map (
      I => Segments_0_17,
      O => Segments(0)
    );
  Segments_1_OBUF : X_OBUF
    port map (
      I => Segments_1_18,
      O => Segments(1)
    );
  Segments_2_OBUF : X_OBUF
    port map (
      I => Segments_2_19,
      O => Segments(2)
    );
  Segments_3_OBUF : X_OBUF
    port map (
      I => Segments_3_20,
      O => Segments(3)
    );
  Segments_4_OBUF : X_OBUF
    port map (
      I => Segments_4_21,
      O => Segments(4)
    );
  Segments_5_OBUF : X_OBUF
    port map (
      I => Segments_5_22,
      O => Segments(5)
    );
  Segments_6_OBUF : X_OBUF
    port map (
      I => Segments_6_23,
      O => Segments(6)
    );
  d0_OBUF : X_OBUF
    port map (
      I => d3_OBUF_38,
      O => d0
    );
  d1_OBUF : X_OBUF
    port map (
      I => d3_OBUF_38,
      O => d1
    );
  d2_OBUF : X_OBUF
    port map (
      I => d3_OBUF_38,
      O => d2
    );
  d3_OBUF : X_OBUF
    port map (
      I => d3_OBUF_38,
      O => d3
    );
  NlwBlock_Segment_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Segment_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

