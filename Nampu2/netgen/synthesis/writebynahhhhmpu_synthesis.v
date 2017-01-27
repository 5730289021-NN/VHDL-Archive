////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: writebynahhhhmpu_synthesis.v
// /___/   /\     Timestamp: Fri Jan 13 14:47:23 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim writebynahhhhmpu.ngc writebynahhhhmpu_synthesis.v 
// Device	: xc3s200-4-tq144
// Input file	: writebynahhhhmpu.ngc
// Output file	: C:\Users\noraw\Documents\VHDL\Nampu2\netgen\synthesis\writebynahhhhmpu_synthesis.v
// # of Modules	: 1
// Design Name	: writebynahhhhmpu
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module writebynahhhhmpu (
  ascii, reset, SysClk, BRin, myinput
);
  output ascii;
  input reset;
  input SysClk;
  input [2 : 0] BRin;
  input [4 : 0] myinput;
  wire BRin_0_IBUF_3;
  wire BRin_1_IBUF_4;
  wire BRin_2_IBUF_5;
  wire \Mcount_count_cy<10>_rt_47 ;
  wire \Mcount_count_cy<11>_rt_49 ;
  wire \Mcount_count_cy<12>_rt_51 ;
  wire \Mcount_count_cy<13>_rt_53 ;
  wire \Mcount_count_cy<14>_rt_55 ;
  wire \Mcount_count_cy<15>_rt_57 ;
  wire \Mcount_count_cy<16>_rt_59 ;
  wire \Mcount_count_cy<17>_rt_61 ;
  wire \Mcount_count_cy<18>_rt_63 ;
  wire \Mcount_count_cy<19>_rt_65 ;
  wire \Mcount_count_cy<1>_rt_67 ;
  wire \Mcount_count_cy<20>_rt_69 ;
  wire \Mcount_count_cy<21>_rt_71 ;
  wire \Mcount_count_cy<22>_rt_73 ;
  wire \Mcount_count_cy<23>_rt_75 ;
  wire \Mcount_count_cy<24>_rt_77 ;
  wire \Mcount_count_cy<25>_rt_79 ;
  wire \Mcount_count_cy<26>_rt_81 ;
  wire \Mcount_count_cy<27>_rt_83 ;
  wire \Mcount_count_cy<28>_rt_85 ;
  wire \Mcount_count_cy<29>_rt_87 ;
  wire \Mcount_count_cy<2>_rt_89 ;
  wire \Mcount_count_cy<30>_rt_91 ;
  wire \Mcount_count_cy<3>_rt_93 ;
  wire \Mcount_count_cy<4>_rt_95 ;
  wire \Mcount_count_cy<5>_rt_97 ;
  wire \Mcount_count_cy<6>_rt_99 ;
  wire \Mcount_count_cy<7>_rt_101 ;
  wire \Mcount_count_cy<8>_rt_103 ;
  wire \Mcount_count_cy<9>_rt_105 ;
  wire \Mcount_count_xor<31>_rt_107 ;
  wire Mrom_period_mux0001;
  wire Mrom_period_mux00011;
  wire Mrom_period_mux000110;
  wire Mrom_period_mux000111_111;
  wire Mrom_period_mux0001131;
  wire Mrom_period_mux0001141;
  wire Mrom_period_mux00012;
  wire Mrom_period_mux000131;
  wire Mrom_period_mux00016;
  wire Mrom_period_mux00018;
  wire Mrom_period_mux00019;
  wire N0;
  wire N1;
  wire N10;
  wire ascii_OBUF_156;
  wire ascii_mux0000;
  wire ascii_mux000011_158;
  wire ascii_mux000017_159;
  wire ascii_mux00005_160;
  wire clk;
  wire count_cmp_ge0000;
  wire count_or0000;
  wire \info[1] ;
  wire \info[4] ;
  wire info_cmp_eq0000_198;
  wire info_not0001;
  wire myinput_0_IBUF_206;
  wire myinput_1_IBUF_207;
  wire myinput_2_IBUF_208;
  wire myinput_3_IBUF_209;
  wire myinput_4_IBUF_210;
  wire reset_IBUF_226;
  wire state_FSM_FFd10_227;
  wire state_FSM_FFd3_228;
  wire state_FSM_FFd4_229;
  wire state_FSM_FFd5_230;
  wire state_FSM_FFd6_231;
  wire state_FSM_FFd7_232;
  wire state_FSM_FFd8_233;
  wire state_FSM_FFd9_234;
  wire state_FSM_Scst_FSM_inv;
  wire \u_dcm133/CLK0_BUF ;
  wire \u_dcm133/CLKFB_IN ;
  wire \u_dcm133/CLKFX_BUF ;
  wire \u_dcm133/CLKIN_IBUFG ;
  wire work_0_or0000;
  wire \NLW_u_dcm133/DCM_INST_CLK90_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_CLK180_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_CLK270_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_CLK2X_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_CLK2X180_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_CLKDV_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_CLKFX180_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_LOCKED_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_PSDONE_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<7>_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<6>_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<5>_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<4>_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<3>_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<2>_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<1>_UNCONNECTED ;
  wire \NLW_u_dcm133/DCM_INST_STATUS<0>_UNCONNECTED ;
  wire [18 : 0] Mcompar_count_cmp_ge0000_cy;
  wire [19 : 0] Mcompar_count_cmp_ge0000_lut;
  wire [30 : 0] Mcount_count_cy;
  wire [0 : 0] Mcount_count_lut;
  wire [31 : 0] Result;
  wire [31 : 0] count;
  wire [2 : 2] info_mux0001;
  wire [13 : 0] period;
  wire [0 : 0] work;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   period_0 (
    .C(clk),
    .D(Mrom_period_mux0001),
    .Q(period[0])
  );
  FD   period_1 (
    .C(clk),
    .D(Mrom_period_mux00011),
    .Q(period[1])
  );
  FD   period_2 (
    .C(clk),
    .D(Mrom_period_mux00012),
    .Q(period[2])
  );
  FD   period_6 (
    .C(clk),
    .D(Mrom_period_mux00016),
    .Q(period[6])
  );
  FD   period_8 (
    .C(clk),
    .D(Mrom_period_mux00018),
    .Q(period[8])
  );
  FD   period_9 (
    .C(clk),
    .D(Mrom_period_mux00019),
    .Q(period[9])
  );
  FD   period_10 (
    .C(clk),
    .D(Mrom_period_mux000110),
    .Q(period[10])
  );
  FD   period_11 (
    .C(clk),
    .D(Mrom_period_mux000111_111),
    .Q(period[11])
  );
  FDE   ascii_11 (
    .C(clk),
    .CE(reset_IBUF_226),
    .D(ascii_mux0000),
    .Q(ascii_OBUF_156)
  );
  FDR #(
    .INIT ( 1'b0 ))
  work_0 (
    .C(clk),
    .D(N1),
    .R(work_0_or0000),
    .Q(work[0])
  );
  FDE   info_1 (
    .C(clk),
    .CE(info_not0001),
    .D(info_cmp_eq0000_198),
    .Q(\info[1] )
  );
  FDE   info_4 (
    .C(clk),
    .CE(info_not0001),
    .D(info_mux0001[2]),
    .Q(\info[4] )
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_0 (
    .C(clk),
    .D(Result[0]),
    .R(count_or0000),
    .Q(count[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_1 (
    .C(clk),
    .D(Result[1]),
    .R(count_or0000),
    .Q(count[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_2 (
    .C(clk),
    .D(Result[2]),
    .R(count_or0000),
    .Q(count[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_3 (
    .C(clk),
    .D(Result[3]),
    .R(count_or0000),
    .Q(count[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_4 (
    .C(clk),
    .D(Result[4]),
    .R(count_or0000),
    .Q(count[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_5 (
    .C(clk),
    .D(Result[5]),
    .R(count_or0000),
    .Q(count[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_6 (
    .C(clk),
    .D(Result[6]),
    .R(count_or0000),
    .Q(count[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_7 (
    .C(clk),
    .D(Result[7]),
    .R(count_or0000),
    .Q(count[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_8 (
    .C(clk),
    .D(Result[8]),
    .R(count_or0000),
    .Q(count[8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_9 (
    .C(clk),
    .D(Result[9]),
    .R(count_or0000),
    .Q(count[9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_10 (
    .C(clk),
    .D(Result[10]),
    .R(count_or0000),
    .Q(count[10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_11 (
    .C(clk),
    .D(Result[11]),
    .R(count_or0000),
    .Q(count[11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_12 (
    .C(clk),
    .D(Result[12]),
    .R(count_or0000),
    .Q(count[12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_13 (
    .C(clk),
    .D(Result[13]),
    .R(count_or0000),
    .Q(count[13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_14 (
    .C(clk),
    .D(Result[14]),
    .R(count_or0000),
    .Q(count[14])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_15 (
    .C(clk),
    .D(Result[15]),
    .R(count_or0000),
    .Q(count[15])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_16 (
    .C(clk),
    .D(Result[16]),
    .R(count_or0000),
    .Q(count[16])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_17 (
    .C(clk),
    .D(Result[17]),
    .R(count_or0000),
    .Q(count[17])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_18 (
    .C(clk),
    .D(Result[18]),
    .R(count_or0000),
    .Q(count[18])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_19 (
    .C(clk),
    .D(Result[19]),
    .R(count_or0000),
    .Q(count[19])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_20 (
    .C(clk),
    .D(Result[20]),
    .R(count_or0000),
    .Q(count[20])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_21 (
    .C(clk),
    .D(Result[21]),
    .R(count_or0000),
    .Q(count[21])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_22 (
    .C(clk),
    .D(Result[22]),
    .R(count_or0000),
    .Q(count[22])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_23 (
    .C(clk),
    .D(Result[23]),
    .R(count_or0000),
    .Q(count[23])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_24 (
    .C(clk),
    .D(Result[24]),
    .R(count_or0000),
    .Q(count[24])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_25 (
    .C(clk),
    .D(Result[25]),
    .R(count_or0000),
    .Q(count[25])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_26 (
    .C(clk),
    .D(Result[26]),
    .R(count_or0000),
    .Q(count[26])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_27 (
    .C(clk),
    .D(Result[27]),
    .R(count_or0000),
    .Q(count[27])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_28 (
    .C(clk),
    .D(Result[28]),
    .R(count_or0000),
    .Q(count[28])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_29 (
    .C(clk),
    .D(Result[29]),
    .R(count_or0000),
    .Q(count[29])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_30 (
    .C(clk),
    .D(Result[30]),
    .R(count_or0000),
    .Q(count[30])
  );
  FDR #(
    .INIT ( 1'b0 ))
  count_31 (
    .C(clk),
    .D(Result[31]),
    .R(count_or0000),
    .Q(count[31])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<0>  (
    .I0(period[0]),
    .I1(count[0]),
    .O(Mcompar_count_cmp_ge0000_lut[0])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(count[0]),
    .S(Mcompar_count_cmp_ge0000_lut[0]),
    .O(Mcompar_count_cmp_ge0000_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<1>  (
    .I0(period[1]),
    .I1(count[1]),
    .O(Mcompar_count_cmp_ge0000_lut[1])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<1>  (
    .CI(Mcompar_count_cmp_ge0000_cy[0]),
    .DI(count[1]),
    .S(Mcompar_count_cmp_ge0000_lut[1]),
    .O(Mcompar_count_cmp_ge0000_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<2>  (
    .I0(period[2]),
    .I1(count[2]),
    .O(Mcompar_count_cmp_ge0000_lut[2])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<2>  (
    .CI(Mcompar_count_cmp_ge0000_cy[1]),
    .DI(count[2]),
    .S(Mcompar_count_cmp_ge0000_lut[2]),
    .O(Mcompar_count_cmp_ge0000_cy[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<3>  (
    .I0(period[3]),
    .I1(count[3]),
    .O(Mcompar_count_cmp_ge0000_lut[3])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<3>  (
    .CI(Mcompar_count_cmp_ge0000_cy[2]),
    .DI(count[3]),
    .S(Mcompar_count_cmp_ge0000_lut[3]),
    .O(Mcompar_count_cmp_ge0000_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<4>  (
    .I0(period[4]),
    .I1(count[4]),
    .O(Mcompar_count_cmp_ge0000_lut[4])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<4>  (
    .CI(Mcompar_count_cmp_ge0000_cy[3]),
    .DI(count[4]),
    .S(Mcompar_count_cmp_ge0000_lut[4]),
    .O(Mcompar_count_cmp_ge0000_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<5>  (
    .I0(count[5]),
    .I1(period[5]),
    .O(Mcompar_count_cmp_ge0000_lut[5])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<5>  (
    .CI(Mcompar_count_cmp_ge0000_cy[4]),
    .DI(count[5]),
    .S(Mcompar_count_cmp_ge0000_lut[5]),
    .O(Mcompar_count_cmp_ge0000_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<6>  (
    .I0(period[6]),
    .I1(count[6]),
    .O(Mcompar_count_cmp_ge0000_lut[6])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<6>  (
    .CI(Mcompar_count_cmp_ge0000_cy[5]),
    .DI(count[6]),
    .S(Mcompar_count_cmp_ge0000_lut[6]),
    .O(Mcompar_count_cmp_ge0000_cy[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<7>  (
    .I0(period[7]),
    .I1(count[7]),
    .O(Mcompar_count_cmp_ge0000_lut[7])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<7>  (
    .CI(Mcompar_count_cmp_ge0000_cy[6]),
    .DI(count[7]),
    .S(Mcompar_count_cmp_ge0000_lut[7]),
    .O(Mcompar_count_cmp_ge0000_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<8>  (
    .I0(period[8]),
    .I1(count[8]),
    .O(Mcompar_count_cmp_ge0000_lut[8])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<8>  (
    .CI(Mcompar_count_cmp_ge0000_cy[7]),
    .DI(count[8]),
    .S(Mcompar_count_cmp_ge0000_lut[8]),
    .O(Mcompar_count_cmp_ge0000_cy[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<9>  (
    .I0(period[9]),
    .I1(count[9]),
    .O(Mcompar_count_cmp_ge0000_lut[9])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<9>  (
    .CI(Mcompar_count_cmp_ge0000_cy[8]),
    .DI(count[9]),
    .S(Mcompar_count_cmp_ge0000_lut[9]),
    .O(Mcompar_count_cmp_ge0000_cy[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<10>  (
    .I0(period[10]),
    .I1(count[10]),
    .O(Mcompar_count_cmp_ge0000_lut[10])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<10>  (
    .CI(Mcompar_count_cmp_ge0000_cy[9]),
    .DI(count[10]),
    .S(Mcompar_count_cmp_ge0000_lut[10]),
    .O(Mcompar_count_cmp_ge0000_cy[10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<11>  (
    .I0(period[11]),
    .I1(count[11]),
    .O(Mcompar_count_cmp_ge0000_lut[11])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<11>  (
    .CI(Mcompar_count_cmp_ge0000_cy[10]),
    .DI(count[11]),
    .S(Mcompar_count_cmp_ge0000_lut[11]),
    .O(Mcompar_count_cmp_ge0000_cy[11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<12>  (
    .I0(period[12]),
    .I1(count[12]),
    .O(Mcompar_count_cmp_ge0000_lut[12])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<12>  (
    .CI(Mcompar_count_cmp_ge0000_cy[11]),
    .DI(count[12]),
    .S(Mcompar_count_cmp_ge0000_lut[12]),
    .O(Mcompar_count_cmp_ge0000_cy[12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<13>  (
    .I0(period[13]),
    .I1(count[13]),
    .O(Mcompar_count_cmp_ge0000_lut[13])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<13>  (
    .CI(Mcompar_count_cmp_ge0000_cy[12]),
    .DI(count[13]),
    .S(Mcompar_count_cmp_ge0000_lut[13]),
    .O(Mcompar_count_cmp_ge0000_cy[13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_count_cmp_ge0000_lut<14>  (
    .I0(count[14]),
    .I1(period[5]),
    .O(Mcompar_count_cmp_ge0000_lut[14])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<14>  (
    .CI(Mcompar_count_cmp_ge0000_cy[13]),
    .DI(count[14]),
    .S(Mcompar_count_cmp_ge0000_lut[14]),
    .O(Mcompar_count_cmp_ge0000_cy[14])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_count_cmp_ge0000_lut<15>  (
    .I0(count[15]),
    .I1(count[16]),
    .I2(count[17]),
    .I3(count[18]),
    .O(Mcompar_count_cmp_ge0000_lut[15])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<15>  (
    .CI(Mcompar_count_cmp_ge0000_cy[14]),
    .DI(N1),
    .S(Mcompar_count_cmp_ge0000_lut[15]),
    .O(Mcompar_count_cmp_ge0000_cy[15])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_count_cmp_ge0000_lut<16>  (
    .I0(count[19]),
    .I1(count[20]),
    .I2(count[21]),
    .I3(count[22]),
    .O(Mcompar_count_cmp_ge0000_lut[16])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<16>  (
    .CI(Mcompar_count_cmp_ge0000_cy[15]),
    .DI(N1),
    .S(Mcompar_count_cmp_ge0000_lut[16]),
    .O(Mcompar_count_cmp_ge0000_cy[16])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_count_cmp_ge0000_lut<17>  (
    .I0(count[23]),
    .I1(count[24]),
    .I2(count[25]),
    .I3(count[26]),
    .O(Mcompar_count_cmp_ge0000_lut[17])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<17>  (
    .CI(Mcompar_count_cmp_ge0000_cy[16]),
    .DI(N1),
    .S(Mcompar_count_cmp_ge0000_lut[17]),
    .O(Mcompar_count_cmp_ge0000_cy[17])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_count_cmp_ge0000_lut<18>  (
    .I0(count[27]),
    .I1(count[28]),
    .I2(count[29]),
    .I3(count[30]),
    .O(Mcompar_count_cmp_ge0000_lut[18])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<18>  (
    .CI(Mcompar_count_cmp_ge0000_cy[17]),
    .DI(N1),
    .S(Mcompar_count_cmp_ge0000_lut[18]),
    .O(Mcompar_count_cmp_ge0000_cy[18])
  );
  MUXCY   \Mcompar_count_cmp_ge0000_cy<19>  (
    .CI(Mcompar_count_cmp_ge0000_cy[18]),
    .DI(N0),
    .S(Mcompar_count_cmp_ge0000_lut[19]),
    .O(count_cmp_ge0000)
  );
  MUXCY   \Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_count_lut[0]),
    .O(Mcount_count_cy[0])
  );
  XORCY   \Mcount_count_xor<0>  (
    .CI(N0),
    .LI(Mcount_count_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_count_cy<1>  (
    .CI(Mcount_count_cy[0]),
    .DI(N0),
    .S(\Mcount_count_cy<1>_rt_67 ),
    .O(Mcount_count_cy[1])
  );
  XORCY   \Mcount_count_xor<1>  (
    .CI(Mcount_count_cy[0]),
    .LI(\Mcount_count_cy<1>_rt_67 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_count_cy<2>  (
    .CI(Mcount_count_cy[1]),
    .DI(N0),
    .S(\Mcount_count_cy<2>_rt_89 ),
    .O(Mcount_count_cy[2])
  );
  XORCY   \Mcount_count_xor<2>  (
    .CI(Mcount_count_cy[1]),
    .LI(\Mcount_count_cy<2>_rt_89 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_count_cy<3>  (
    .CI(Mcount_count_cy[2]),
    .DI(N0),
    .S(\Mcount_count_cy<3>_rt_93 ),
    .O(Mcount_count_cy[3])
  );
  XORCY   \Mcount_count_xor<3>  (
    .CI(Mcount_count_cy[2]),
    .LI(\Mcount_count_cy<3>_rt_93 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_count_cy<4>  (
    .CI(Mcount_count_cy[3]),
    .DI(N0),
    .S(\Mcount_count_cy<4>_rt_95 ),
    .O(Mcount_count_cy[4])
  );
  XORCY   \Mcount_count_xor<4>  (
    .CI(Mcount_count_cy[3]),
    .LI(\Mcount_count_cy<4>_rt_95 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_count_cy<5>  (
    .CI(Mcount_count_cy[4]),
    .DI(N0),
    .S(\Mcount_count_cy<5>_rt_97 ),
    .O(Mcount_count_cy[5])
  );
  XORCY   \Mcount_count_xor<5>  (
    .CI(Mcount_count_cy[4]),
    .LI(\Mcount_count_cy<5>_rt_97 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_count_cy<6>  (
    .CI(Mcount_count_cy[5]),
    .DI(N0),
    .S(\Mcount_count_cy<6>_rt_99 ),
    .O(Mcount_count_cy[6])
  );
  XORCY   \Mcount_count_xor<6>  (
    .CI(Mcount_count_cy[5]),
    .LI(\Mcount_count_cy<6>_rt_99 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_count_cy<7>  (
    .CI(Mcount_count_cy[6]),
    .DI(N0),
    .S(\Mcount_count_cy<7>_rt_101 ),
    .O(Mcount_count_cy[7])
  );
  XORCY   \Mcount_count_xor<7>  (
    .CI(Mcount_count_cy[6]),
    .LI(\Mcount_count_cy<7>_rt_101 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_count_cy<8>  (
    .CI(Mcount_count_cy[7]),
    .DI(N0),
    .S(\Mcount_count_cy<8>_rt_103 ),
    .O(Mcount_count_cy[8])
  );
  XORCY   \Mcount_count_xor<8>  (
    .CI(Mcount_count_cy[7]),
    .LI(\Mcount_count_cy<8>_rt_103 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_count_cy<9>  (
    .CI(Mcount_count_cy[8]),
    .DI(N0),
    .S(\Mcount_count_cy<9>_rt_105 ),
    .O(Mcount_count_cy[9])
  );
  XORCY   \Mcount_count_xor<9>  (
    .CI(Mcount_count_cy[8]),
    .LI(\Mcount_count_cy<9>_rt_105 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_count_cy<10>  (
    .CI(Mcount_count_cy[9]),
    .DI(N0),
    .S(\Mcount_count_cy<10>_rt_47 ),
    .O(Mcount_count_cy[10])
  );
  XORCY   \Mcount_count_xor<10>  (
    .CI(Mcount_count_cy[9]),
    .LI(\Mcount_count_cy<10>_rt_47 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_count_cy<11>  (
    .CI(Mcount_count_cy[10]),
    .DI(N0),
    .S(\Mcount_count_cy<11>_rt_49 ),
    .O(Mcount_count_cy[11])
  );
  XORCY   \Mcount_count_xor<11>  (
    .CI(Mcount_count_cy[10]),
    .LI(\Mcount_count_cy<11>_rt_49 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_count_cy<12>  (
    .CI(Mcount_count_cy[11]),
    .DI(N0),
    .S(\Mcount_count_cy<12>_rt_51 ),
    .O(Mcount_count_cy[12])
  );
  XORCY   \Mcount_count_xor<12>  (
    .CI(Mcount_count_cy[11]),
    .LI(\Mcount_count_cy<12>_rt_51 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_count_cy<13>  (
    .CI(Mcount_count_cy[12]),
    .DI(N0),
    .S(\Mcount_count_cy<13>_rt_53 ),
    .O(Mcount_count_cy[13])
  );
  XORCY   \Mcount_count_xor<13>  (
    .CI(Mcount_count_cy[12]),
    .LI(\Mcount_count_cy<13>_rt_53 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_count_cy<14>  (
    .CI(Mcount_count_cy[13]),
    .DI(N0),
    .S(\Mcount_count_cy<14>_rt_55 ),
    .O(Mcount_count_cy[14])
  );
  XORCY   \Mcount_count_xor<14>  (
    .CI(Mcount_count_cy[13]),
    .LI(\Mcount_count_cy<14>_rt_55 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_count_cy<15>  (
    .CI(Mcount_count_cy[14]),
    .DI(N0),
    .S(\Mcount_count_cy<15>_rt_57 ),
    .O(Mcount_count_cy[15])
  );
  XORCY   \Mcount_count_xor<15>  (
    .CI(Mcount_count_cy[14]),
    .LI(\Mcount_count_cy<15>_rt_57 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_count_cy<16>  (
    .CI(Mcount_count_cy[15]),
    .DI(N0),
    .S(\Mcount_count_cy<16>_rt_59 ),
    .O(Mcount_count_cy[16])
  );
  XORCY   \Mcount_count_xor<16>  (
    .CI(Mcount_count_cy[15]),
    .LI(\Mcount_count_cy<16>_rt_59 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_count_cy<17>  (
    .CI(Mcount_count_cy[16]),
    .DI(N0),
    .S(\Mcount_count_cy<17>_rt_61 ),
    .O(Mcount_count_cy[17])
  );
  XORCY   \Mcount_count_xor<17>  (
    .CI(Mcount_count_cy[16]),
    .LI(\Mcount_count_cy<17>_rt_61 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_count_cy<18>  (
    .CI(Mcount_count_cy[17]),
    .DI(N0),
    .S(\Mcount_count_cy<18>_rt_63 ),
    .O(Mcount_count_cy[18])
  );
  XORCY   \Mcount_count_xor<18>  (
    .CI(Mcount_count_cy[17]),
    .LI(\Mcount_count_cy<18>_rt_63 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_count_cy<19>  (
    .CI(Mcount_count_cy[18]),
    .DI(N0),
    .S(\Mcount_count_cy<19>_rt_65 ),
    .O(Mcount_count_cy[19])
  );
  XORCY   \Mcount_count_xor<19>  (
    .CI(Mcount_count_cy[18]),
    .LI(\Mcount_count_cy<19>_rt_65 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_count_cy<20>  (
    .CI(Mcount_count_cy[19]),
    .DI(N0),
    .S(\Mcount_count_cy<20>_rt_69 ),
    .O(Mcount_count_cy[20])
  );
  XORCY   \Mcount_count_xor<20>  (
    .CI(Mcount_count_cy[19]),
    .LI(\Mcount_count_cy<20>_rt_69 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_count_cy<21>  (
    .CI(Mcount_count_cy[20]),
    .DI(N0),
    .S(\Mcount_count_cy<21>_rt_71 ),
    .O(Mcount_count_cy[21])
  );
  XORCY   \Mcount_count_xor<21>  (
    .CI(Mcount_count_cy[20]),
    .LI(\Mcount_count_cy<21>_rt_71 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_count_cy<22>  (
    .CI(Mcount_count_cy[21]),
    .DI(N0),
    .S(\Mcount_count_cy<22>_rt_73 ),
    .O(Mcount_count_cy[22])
  );
  XORCY   \Mcount_count_xor<22>  (
    .CI(Mcount_count_cy[21]),
    .LI(\Mcount_count_cy<22>_rt_73 ),
    .O(Result[22])
  );
  MUXCY   \Mcount_count_cy<23>  (
    .CI(Mcount_count_cy[22]),
    .DI(N0),
    .S(\Mcount_count_cy<23>_rt_75 ),
    .O(Mcount_count_cy[23])
  );
  XORCY   \Mcount_count_xor<23>  (
    .CI(Mcount_count_cy[22]),
    .LI(\Mcount_count_cy<23>_rt_75 ),
    .O(Result[23])
  );
  MUXCY   \Mcount_count_cy<24>  (
    .CI(Mcount_count_cy[23]),
    .DI(N0),
    .S(\Mcount_count_cy<24>_rt_77 ),
    .O(Mcount_count_cy[24])
  );
  XORCY   \Mcount_count_xor<24>  (
    .CI(Mcount_count_cy[23]),
    .LI(\Mcount_count_cy<24>_rt_77 ),
    .O(Result[24])
  );
  MUXCY   \Mcount_count_cy<25>  (
    .CI(Mcount_count_cy[24]),
    .DI(N0),
    .S(\Mcount_count_cy<25>_rt_79 ),
    .O(Mcount_count_cy[25])
  );
  XORCY   \Mcount_count_xor<25>  (
    .CI(Mcount_count_cy[24]),
    .LI(\Mcount_count_cy<25>_rt_79 ),
    .O(Result[25])
  );
  MUXCY   \Mcount_count_cy<26>  (
    .CI(Mcount_count_cy[25]),
    .DI(N0),
    .S(\Mcount_count_cy<26>_rt_81 ),
    .O(Mcount_count_cy[26])
  );
  XORCY   \Mcount_count_xor<26>  (
    .CI(Mcount_count_cy[25]),
    .LI(\Mcount_count_cy<26>_rt_81 ),
    .O(Result[26])
  );
  MUXCY   \Mcount_count_cy<27>  (
    .CI(Mcount_count_cy[26]),
    .DI(N0),
    .S(\Mcount_count_cy<27>_rt_83 ),
    .O(Mcount_count_cy[27])
  );
  XORCY   \Mcount_count_xor<27>  (
    .CI(Mcount_count_cy[26]),
    .LI(\Mcount_count_cy<27>_rt_83 ),
    .O(Result[27])
  );
  MUXCY   \Mcount_count_cy<28>  (
    .CI(Mcount_count_cy[27]),
    .DI(N0),
    .S(\Mcount_count_cy<28>_rt_85 ),
    .O(Mcount_count_cy[28])
  );
  XORCY   \Mcount_count_xor<28>  (
    .CI(Mcount_count_cy[27]),
    .LI(\Mcount_count_cy<28>_rt_85 ),
    .O(Result[28])
  );
  MUXCY   \Mcount_count_cy<29>  (
    .CI(Mcount_count_cy[28]),
    .DI(N0),
    .S(\Mcount_count_cy<29>_rt_87 ),
    .O(Mcount_count_cy[29])
  );
  XORCY   \Mcount_count_xor<29>  (
    .CI(Mcount_count_cy[28]),
    .LI(\Mcount_count_cy<29>_rt_87 ),
    .O(Result[29])
  );
  MUXCY   \Mcount_count_cy<30>  (
    .CI(Mcount_count_cy[29]),
    .DI(N0),
    .S(\Mcount_count_cy<30>_rt_91 ),
    .O(Mcount_count_cy[30])
  );
  XORCY   \Mcount_count_xor<30>  (
    .CI(Mcount_count_cy[29]),
    .LI(\Mcount_count_cy<30>_rt_91 ),
    .O(Result[30])
  );
  XORCY   \Mcount_count_xor<31>  (
    .CI(Mcount_count_cy[30]),
    .LI(\Mcount_count_xor<31>_rt_107 ),
    .O(Result[31])
  );
  DCM #(
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 3 ),
    .CLKFX_MULTIPLY ( 16 ),
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKIN_PERIOD ( 40.0000000000000000 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .SIM_MODE ( "SAFE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .FACTORY_JF ( 16'h8080 ))
  \u_dcm133/DCM_INST  (
    .RST(N0),
    .CLKIN(\u_dcm133/CLKIN_IBUFG ),
    .CLKFB(\u_dcm133/CLKFB_IN ),
    .PSINCDEC(N0),
    .PSEN(N0),
    .PSCLK(N0),
    .DSSEN(N0),
    .CLK0(\u_dcm133/CLK0_BUF ),
    .CLK90(\NLW_u_dcm133/DCM_INST_CLK90_UNCONNECTED ),
    .CLK180(\NLW_u_dcm133/DCM_INST_CLK180_UNCONNECTED ),
    .CLK270(\NLW_u_dcm133/DCM_INST_CLK270_UNCONNECTED ),
    .CLK2X(\NLW_u_dcm133/DCM_INST_CLK2X_UNCONNECTED ),
    .CLK2X180(\NLW_u_dcm133/DCM_INST_CLK2X180_UNCONNECTED ),
    .CLKDV(\NLW_u_dcm133/DCM_INST_CLKDV_UNCONNECTED ),
    .CLKFX(\u_dcm133/CLKFX_BUF ),
    .CLKFX180(\NLW_u_dcm133/DCM_INST_CLKFX180_UNCONNECTED ),
    .LOCKED(\NLW_u_dcm133/DCM_INST_LOCKED_UNCONNECTED ),
    .PSDONE(\NLW_u_dcm133/DCM_INST_PSDONE_UNCONNECTED ),
    .STATUS({\NLW_u_dcm133/DCM_INST_STATUS<7>_UNCONNECTED , \NLW_u_dcm133/DCM_INST_STATUS<6>_UNCONNECTED , 
\NLW_u_dcm133/DCM_INST_STATUS<5>_UNCONNECTED , \NLW_u_dcm133/DCM_INST_STATUS<4>_UNCONNECTED , \NLW_u_dcm133/DCM_INST_STATUS<3>_UNCONNECTED , 
\NLW_u_dcm133/DCM_INST_STATUS<2>_UNCONNECTED , \NLW_u_dcm133/DCM_INST_STATUS<1>_UNCONNECTED , \NLW_u_dcm133/DCM_INST_STATUS<0>_UNCONNECTED })
  );
  BUFG   \u_dcm133/CLK0_BUFG_INST  (
    .I(\u_dcm133/CLK0_BUF ),
    .O(\u_dcm133/CLKFB_IN )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \u_dcm133/CLKIN_IBUFG_INST  (
    .I(SysClk),
    .O(\u_dcm133/CLKIN_IBUFG )
  );
  BUFG   \u_dcm133/CLKFX_BUFG_INST  (
    .I(\u_dcm133/CLKFX_BUF ),
    .O(clk)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  Mrom_period_mux000191 (
    .I0(BRin_0_IBUF_3),
    .I1(BRin_2_IBUF_5),
    .I2(BRin_1_IBUF_4),
    .O(Mrom_period_mux00019)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Mrom_period_mux000161 (
    .I0(BRin_2_IBUF_5),
    .I1(BRin_1_IBUF_4),
    .I2(BRin_0_IBUF_3),
    .O(Mrom_period_mux00016)
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  Mrom_period_mux0001101 (
    .I0(BRin_0_IBUF_3),
    .I1(BRin_1_IBUF_4),
    .I2(BRin_2_IBUF_5),
    .O(Mrom_period_mux000110)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  Mrom_period_mux000121 (
    .I0(BRin_0_IBUF_3),
    .I1(BRin_1_IBUF_4),
    .I2(BRin_2_IBUF_5),
    .O(Mrom_period_mux00012)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mrom_period_mux0001112 (
    .I0(BRin_1_IBUF_4),
    .I1(BRin_0_IBUF_3),
    .I2(BRin_2_IBUF_5),
    .O(Mrom_period_mux00011)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  Mrom_period_mux000111 (
    .I0(BRin_1_IBUF_4),
    .I1(BRin_0_IBUF_3),
    .I2(BRin_2_IBUF_5),
    .O(Mrom_period_mux0001)
  );
  LUT3 #(
    .INIT ( 8'h64 ))
  Mrom_period_mux000181 (
    .I0(BRin_1_IBUF_4),
    .I1(BRin_2_IBUF_5),
    .I2(BRin_0_IBUF_3),
    .O(Mrom_period_mux00018)
  );
  LUT3 #(
    .INIT ( 8'h65 ))
  Mrom_period_mux00011111 (
    .I0(BRin_1_IBUF_4),
    .I1(BRin_2_IBUF_5),
    .I2(BRin_0_IBUF_3),
    .O(Mrom_period_mux000111_111)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  info_cmp_eq0000_SW0 (
    .I0(myinput_0_IBUF_206),
    .I1(myinput_1_IBUF_207),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  info_cmp_eq0000 (
    .I0(myinput_4_IBUF_210),
    .I1(myinput_3_IBUF_209),
    .I2(myinput_2_IBUF_208),
    .I3(N10),
    .O(info_cmp_eq0000_198)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  info_not00011 (
    .I0(reset_IBUF_226),
    .I1(work[0]),
    .I2(state_FSM_FFd10_227),
    .O(info_not0001)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  ascii_mux00005 (
    .I0(ascii_OBUF_156),
    .I1(work[0]),
    .I2(state_FSM_FFd10_227),
    .O(ascii_mux00005_160)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  ascii_mux000011 (
    .I0(\info[4] ),
    .I1(state_FSM_FFd5_230),
    .I2(state_FSM_FFd4_229),
    .I3(state_FSM_FFd3_228),
    .O(ascii_mux000011_158)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  ascii_mux000017 (
    .I0(\info[1] ),
    .I1(state_FSM_FFd8_233),
    .I2(state_FSM_FFd7_232),
    .I3(state_FSM_FFd6_231),
    .O(ascii_mux000017_159)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  ascii_mux000035 (
    .I0(work[0]),
    .I1(ascii_mux000011_158),
    .I2(ascii_mux000017_159),
    .I3(ascii_mux00005_160),
    .O(ascii_mux0000)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  work_0_or00001 (
    .I0(reset_IBUF_226),
    .I1(count_cmp_ge0000),
    .O(work_0_or0000)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  count_or00001 (
    .I0(reset_IBUF_226),
    .I1(count_cmp_ge0000),
    .O(count_or0000)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_226)
  );
  IBUF   BRin_2_IBUF (
    .I(BRin[2]),
    .O(BRin_2_IBUF_5)
  );
  IBUF   BRin_1_IBUF (
    .I(BRin[1]),
    .O(BRin_1_IBUF_4)
  );
  IBUF   BRin_0_IBUF (
    .I(BRin[0]),
    .O(BRin_0_IBUF_3)
  );
  IBUF   myinput_4_IBUF (
    .I(myinput[4]),
    .O(myinput_4_IBUF_210)
  );
  IBUF   myinput_3_IBUF (
    .I(myinput[3]),
    .O(myinput_3_IBUF_209)
  );
  IBUF   myinput_2_IBUF (
    .I(myinput[2]),
    .O(myinput_2_IBUF_208)
  );
  IBUF   myinput_1_IBUF (
    .I(myinput[1]),
    .O(myinput_1_IBUF_207)
  );
  IBUF   myinput_0_IBUF (
    .I(myinput[0]),
    .O(myinput_0_IBUF_206)
  );
  OBUF   ascii_OBUF (
    .I(ascii_OBUF_156),
    .O(ascii)
  );
  FDR   period_3 (
    .C(clk),
    .D(Mrom_period_mux000131),
    .R(BRin_1_IBUF_4),
    .Q(period[3])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mrom_period_mux0001311 (
    .I0(BRin_0_IBUF_3),
    .I1(BRin_2_IBUF_5),
    .O(Mrom_period_mux000131)
  );
  FDR   period_4 (
    .C(clk),
    .D(N1),
    .R(BRin_2_IBUF_5),
    .Q(period[4])
  );
  FDR   period_5 (
    .C(clk),
    .D(Mrom_period_mux0001141),
    .R(BRin_1_IBUF_4),
    .Q(period[5])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  Mrom_period_mux00011411 (
    .I0(BRin_2_IBUF_5),
    .I1(BRin_0_IBUF_3),
    .O(Mrom_period_mux0001141)
  );
  FDR   period_7 (
    .C(clk),
    .D(BRin_2_IBUF_5),
    .R(BRin_0_IBUF_3),
    .Q(period[7])
  );
  FDR   period_12 (
    .C(clk),
    .D(BRin_0_IBUF_3),
    .R(BRin_2_IBUF_5),
    .Q(period[12])
  );
  FDR   period_13 (
    .C(clk),
    .D(Mrom_period_mux0001131),
    .R(BRin_2_IBUF_5),
    .Q(period[13])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mrom_period_mux00011311 (
    .I0(BRin_0_IBUF_3),
    .I1(BRin_1_IBUF_4),
    .O(Mrom_period_mux0001131)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  state_FSM_FFd3 (
    .C(clk),
    .CE(work[0]),
    .D(state_FSM_FFd4_229),
    .R(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd3_228)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  state_FSM_FFd4 (
    .C(clk),
    .CE(work[0]),
    .D(state_FSM_FFd5_230),
    .R(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd4_229)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  state_FSM_FFd5 (
    .C(clk),
    .CE(work[0]),
    .D(state_FSM_FFd6_231),
    .R(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd5_230)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  state_FSM_FFd6 (
    .C(clk),
    .CE(work[0]),
    .D(state_FSM_FFd7_232),
    .R(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd6_231)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  state_FSM_FFd7 (
    .C(clk),
    .CE(work[0]),
    .D(state_FSM_FFd8_233),
    .R(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd7_232)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  state_FSM_FFd8 (
    .C(clk),
    .CE(work[0]),
    .D(state_FSM_FFd9_234),
    .R(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd8_233)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  state_FSM_FFd9 (
    .C(clk),
    .CE(work[0]),
    .D(state_FSM_FFd10_227),
    .R(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd9_234)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  state_FSM_FFd10 (
    .C(clk),
    .CE(work[0]),
    .D(N0),
    .S(state_FSM_Scst_FSM_inv),
    .Q(state_FSM_FFd10_227)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<1>_rt  (
    .I0(count[1]),
    .O(\Mcount_count_cy<1>_rt_67 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<2>_rt  (
    .I0(count[2]),
    .O(\Mcount_count_cy<2>_rt_89 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<3>_rt  (
    .I0(count[3]),
    .O(\Mcount_count_cy<3>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<4>_rt  (
    .I0(count[4]),
    .O(\Mcount_count_cy<4>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<5>_rt  (
    .I0(count[5]),
    .O(\Mcount_count_cy<5>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<6>_rt  (
    .I0(count[6]),
    .O(\Mcount_count_cy<6>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<7>_rt  (
    .I0(count[7]),
    .O(\Mcount_count_cy<7>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<8>_rt  (
    .I0(count[8]),
    .O(\Mcount_count_cy<8>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<9>_rt  (
    .I0(count[9]),
    .O(\Mcount_count_cy<9>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<10>_rt  (
    .I0(count[10]),
    .O(\Mcount_count_cy<10>_rt_47 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<11>_rt  (
    .I0(count[11]),
    .O(\Mcount_count_cy<11>_rt_49 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<12>_rt  (
    .I0(count[12]),
    .O(\Mcount_count_cy<12>_rt_51 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<13>_rt  (
    .I0(count[13]),
    .O(\Mcount_count_cy<13>_rt_53 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<14>_rt  (
    .I0(count[14]),
    .O(\Mcount_count_cy<14>_rt_55 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<15>_rt  (
    .I0(count[15]),
    .O(\Mcount_count_cy<15>_rt_57 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<16>_rt  (
    .I0(count[16]),
    .O(\Mcount_count_cy<16>_rt_59 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<17>_rt  (
    .I0(count[17]),
    .O(\Mcount_count_cy<17>_rt_61 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<18>_rt  (
    .I0(count[18]),
    .O(\Mcount_count_cy<18>_rt_63 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<19>_rt  (
    .I0(count[19]),
    .O(\Mcount_count_cy<19>_rt_65 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<20>_rt  (
    .I0(count[20]),
    .O(\Mcount_count_cy<20>_rt_69 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<21>_rt  (
    .I0(count[21]),
    .O(\Mcount_count_cy<21>_rt_71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<22>_rt  (
    .I0(count[22]),
    .O(\Mcount_count_cy<22>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<23>_rt  (
    .I0(count[23]),
    .O(\Mcount_count_cy<23>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<24>_rt  (
    .I0(count[24]),
    .O(\Mcount_count_cy<24>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<25>_rt  (
    .I0(count[25]),
    .O(\Mcount_count_cy<25>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<26>_rt  (
    .I0(count[26]),
    .O(\Mcount_count_cy<26>_rt_81 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<27>_rt  (
    .I0(count[27]),
    .O(\Mcount_count_cy<27>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<28>_rt  (
    .I0(count[28]),
    .O(\Mcount_count_cy<28>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<29>_rt  (
    .I0(count[29]),
    .O(\Mcount_count_cy<29>_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<30>_rt  (
    .I0(count[30]),
    .O(\Mcount_count_cy<30>_rt_91 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_xor<31>_rt  (
    .I0(count[31]),
    .O(\Mcount_count_xor<31>_rt_107 )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \info_mux0001<2>1  (
    .I0(myinput_3_IBUF_209),
    .I1(myinput_2_IBUF_208),
    .I2(myinput_4_IBUF_210),
    .I3(N10),
    .O(info_mux0001[2])
  );
  INV   \Mcount_count_lut<0>_INV_0  (
    .I(count[0]),
    .O(Mcount_count_lut[0])
  );
  INV   state_FSM_Scst_FSM_inv1_INV_0 (
    .I(reset_IBUF_226),
    .O(state_FSM_Scst_FSM_inv)
  );
  INV   \Mcompar_count_cmp_ge0000_lut<19>1_INV_0  (
    .I(count[31]),
    .O(Mcompar_count_cmp_ge0000_lut[19])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

