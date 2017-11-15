// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Tue Oct 31 14:26:46 2017
// Host        : DESKTOP-O5E2KVK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Van/CMPE_140/Lab 7/Lab
//               7.sim/sim_1/synth/func/tb_mips_top_func_synth.v}
// Design      : mips_fpga
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder
   (y,
    a,
    S,
    \q_reg[6] ,
    \q_reg[6]_0 ,
    \q_reg[2] ,
    \q_reg[5] ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 );
  output [30:0]y;
  input [28:0]a;
  input [3:0]S;
  input [3:0]\q_reg[6] ;
  input [3:0]\q_reg[6]_0 ;
  input [3:0]\q_reg[2] ;
  input [3:0]\q_reg[5] ;
  input [3:0]\q_reg[5]_0 ;
  input [3:0]\q_reg[5]_1 ;
  input [2:0]\q_reg[5]_2 ;

  wire [3:0]S;
  wire [28:0]a;
  wire [3:0]\q_reg[2] ;
  wire [3:0]\q_reg[5] ;
  wire [3:0]\q_reg[5]_0 ;
  wire [3:0]\q_reg[5]_1 ;
  wire [2:0]\q_reg[5]_2 ;
  wire [3:0]\q_reg[6] ;
  wire [3:0]\q_reg[6]_0 ;
  wire [30:0]y;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__0_n_4;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__1_n_4;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__2_n_4;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__3_n_4;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__4_n_4;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__5_n_4;
  wire y_carry__6_n_3;
  wire y_carry__6_n_4;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire y_carry_n_4;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_1,y_carry_n_2,y_carry_n_3,y_carry_n_4}),
        .CYINIT(1'b0),
        .DI({a[2:0],1'b0}),
        .O(y[3:0]),
        .S(S));
  CARRY4 y_carry__0
       (.CI(y_carry_n_1),
        .CO({y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3,y_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI(a[6:3]),
        .O(y[7:4]),
        .S(\q_reg[6] ));
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_1),
        .CO({y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3,y_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI(a[10:7]),
        .O(y[11:8]),
        .S(\q_reg[6]_0 ));
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_1),
        .CO({y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3,y_carry__2_n_4}),
        .CYINIT(1'b0),
        .DI(a[14:11]),
        .O(y[15:12]),
        .S(\q_reg[2] ));
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_1),
        .CO({y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3,y_carry__3_n_4}),
        .CYINIT(1'b0),
        .DI(a[18:15]),
        .O(y[19:16]),
        .S(\q_reg[5] ));
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_1),
        .CO({y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3,y_carry__4_n_4}),
        .CYINIT(1'b0),
        .DI(a[22:19]),
        .O(y[23:20]),
        .S(\q_reg[5]_0 ));
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_1),
        .CO({y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3,y_carry__5_n_4}),
        .CYINIT(1'b0),
        .DI(a[26:23]),
        .O(y[27:24]),
        .S(\q_reg[5]_1 ));
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_1),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_3,y_carry__6_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,a[28:27]}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],y[30:28]}),
        .S({1'b0,\q_reg[5]_2 }));
endmodule

module alu
   (data2,
    CO,
    \q_reg[4] ,
    Q,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    sink_bit_OBUF,
    A,
    p_0_in,
    alu_ctrl,
    S,
    \q_reg[2] ,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \q_reg[2]_2 ,
    \q_reg[2]_3 ,
    \q_reg[2]_4 ,
    \q_reg[2]_5 ,
    DI,
    \q_reg[2]_6 ,
    \q_reg[2]_7 ,
    \q_reg[2]_8 ,
    \q_reg[2]_9 ,
    \q_reg[2]_10 ,
    \q_reg[2]_11 ,
    \q_reg[2]_12 ,
    \q_reg[7] ,
    \q_reg[25] ,
    D,
    E);
  output [31:0]data2;
  output [0:0]CO;
  output \q_reg[4] ;
  output [31:0]Q;
  output \q_reg[4]_0 ;
  output \q_reg[4]_1 ;
  output sink_bit_OBUF;
  input [0:0]A;
  input [29:0]p_0_in;
  input [0:0]alu_ctrl;
  input [3:0]S;
  input [3:0]\q_reg[2] ;
  input [3:0]\q_reg[2]_0 ;
  input [3:0]\q_reg[2]_1 ;
  input [3:0]\q_reg[2]_2 ;
  input [3:0]\q_reg[2]_3 ;
  input [3:0]\q_reg[2]_4 ;
  input [3:0]\q_reg[2]_5 ;
  input [3:0]DI;
  input [3:0]\q_reg[2]_6 ;
  input [3:0]\q_reg[2]_7 ;
  input [3:0]\q_reg[2]_8 ;
  input [3:0]\q_reg[2]_9 ;
  input [3:0]\q_reg[2]_10 ;
  input [3:0]\q_reg[2]_11 ;
  input [3:0]\q_reg[2]_12 ;
  input \q_reg[7] ;
  input \q_reg[25] ;
  input [31:0]D;
  input [0:0]E;

  wire [0:0]A;
  wire [0:0]CO;
  wire [31:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [31:0]Q;
  wire [3:0]S;
  wire _inferred__0_carry__0_n_1;
  wire _inferred__0_carry__0_n_2;
  wire _inferred__0_carry__0_n_3;
  wire _inferred__0_carry__0_n_4;
  wire _inferred__0_carry__1_n_1;
  wire _inferred__0_carry__1_n_2;
  wire _inferred__0_carry__1_n_3;
  wire _inferred__0_carry__1_n_4;
  wire _inferred__0_carry__2_n_1;
  wire _inferred__0_carry__2_n_2;
  wire _inferred__0_carry__2_n_3;
  wire _inferred__0_carry__2_n_4;
  wire _inferred__0_carry__3_n_1;
  wire _inferred__0_carry__3_n_2;
  wire _inferred__0_carry__3_n_3;
  wire _inferred__0_carry__3_n_4;
  wire _inferred__0_carry__4_n_1;
  wire _inferred__0_carry__4_n_2;
  wire _inferred__0_carry__4_n_3;
  wire _inferred__0_carry__4_n_4;
  wire _inferred__0_carry__5_n_1;
  wire _inferred__0_carry__5_n_2;
  wire _inferred__0_carry__5_n_3;
  wire _inferred__0_carry__5_n_4;
  wire _inferred__0_carry__6_n_2;
  wire _inferred__0_carry__6_n_3;
  wire _inferred__0_carry__6_n_4;
  wire _inferred__0_carry_n_1;
  wire _inferred__0_carry_n_2;
  wire _inferred__0_carry_n_3;
  wire _inferred__0_carry_n_4;
  wire [0:0]alu_ctrl;
  wire [31:0]data2;
  wire [29:0]p_0_in;
  wire \q_reg[25] ;
  wire [3:0]\q_reg[2] ;
  wire [3:0]\q_reg[2]_0 ;
  wire [3:0]\q_reg[2]_1 ;
  wire [3:0]\q_reg[2]_10 ;
  wire [3:0]\q_reg[2]_11 ;
  wire [3:0]\q_reg[2]_12 ;
  wire [3:0]\q_reg[2]_2 ;
  wire [3:0]\q_reg[2]_3 ;
  wire [3:0]\q_reg[2]_4 ;
  wire [3:0]\q_reg[2]_5 ;
  wire [3:0]\q_reg[2]_6 ;
  wire [3:0]\q_reg[2]_7 ;
  wire [3:0]\q_reg[2]_8 ;
  wire [3:0]\q_reg[2]_9 ;
  wire \q_reg[4] ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[7] ;
  wire sink_bit_OBUF;
  wire sink_bit_OBUF_inst_i_10_n_1;
  wire sink_bit_OBUF_inst_i_11_n_1;
  wire sink_bit_OBUF_inst_i_12_n_1;
  wire sink_bit_OBUF_inst_i_2_n_1;
  wire sink_bit_OBUF_inst_i_7_n_1;
  wire sink_bit_OBUF_inst_i_8_n_1;
  wire sink_bit_OBUF_inst_i_9_n_1;
  wire y2_carry__0_n_1;
  wire y2_carry__0_n_2;
  wire y2_carry__0_n_3;
  wire y2_carry__0_n_4;
  wire y2_carry__1_n_1;
  wire y2_carry__1_n_2;
  wire y2_carry__1_n_3;
  wire y2_carry__1_n_4;
  wire y2_carry__2_n_2;
  wire y2_carry__2_n_3;
  wire y2_carry__2_n_4;
  wire y2_carry_n_1;
  wire y2_carry_n_2;
  wire y2_carry_n_3;
  wire y2_carry_n_4;
  wire y_carry_i_12_n_1;
  wire [3:3]NLW__inferred__0_carry__6_CO_UNCONNECTED;
  wire [3:0]NLW_y2_carry_O_UNCONNECTED;
  wire [3:0]NLW_y2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_y2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_y2_carry__2_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry
       (.CI(1'b0),
        .CO({_inferred__0_carry_n_1,_inferred__0_carry_n_2,_inferred__0_carry_n_3,_inferred__0_carry_n_4}),
        .CYINIT(A),
        .DI({p_0_in[2:0],alu_ctrl}),
        .O(data2[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry__0
       (.CI(_inferred__0_carry_n_1),
        .CO({_inferred__0_carry__0_n_1,_inferred__0_carry__0_n_2,_inferred__0_carry__0_n_3,_inferred__0_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI(p_0_in[6:3]),
        .O(data2[7:4]),
        .S(\q_reg[2] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry__1
       (.CI(_inferred__0_carry__0_n_1),
        .CO({_inferred__0_carry__1_n_1,_inferred__0_carry__1_n_2,_inferred__0_carry__1_n_3,_inferred__0_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI(p_0_in[10:7]),
        .O(data2[11:8]),
        .S(\q_reg[2]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry__2
       (.CI(_inferred__0_carry__1_n_1),
        .CO({_inferred__0_carry__2_n_1,_inferred__0_carry__2_n_2,_inferred__0_carry__2_n_3,_inferred__0_carry__2_n_4}),
        .CYINIT(1'b0),
        .DI(p_0_in[14:11]),
        .O(data2[15:12]),
        .S(\q_reg[2]_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry__3
       (.CI(_inferred__0_carry__2_n_1),
        .CO({_inferred__0_carry__3_n_1,_inferred__0_carry__3_n_2,_inferred__0_carry__3_n_3,_inferred__0_carry__3_n_4}),
        .CYINIT(1'b0),
        .DI(p_0_in[18:15]),
        .O(data2[19:16]),
        .S(\q_reg[2]_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry__4
       (.CI(_inferred__0_carry__3_n_1),
        .CO({_inferred__0_carry__4_n_1,_inferred__0_carry__4_n_2,_inferred__0_carry__4_n_3,_inferred__0_carry__4_n_4}),
        .CYINIT(1'b0),
        .DI(p_0_in[22:19]),
        .O(data2[23:20]),
        .S(\q_reg[2]_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry__5
       (.CI(_inferred__0_carry__4_n_1),
        .CO({_inferred__0_carry__5_n_1,_inferred__0_carry__5_n_2,_inferred__0_carry__5_n_3,_inferred__0_carry__5_n_4}),
        .CYINIT(1'b0),
        .DI(p_0_in[26:23]),
        .O(data2[27:24]),
        .S(\q_reg[2]_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _inferred__0_carry__6
       (.CI(_inferred__0_carry__5_n_1),
        .CO({NLW__inferred__0_carry__6_CO_UNCONNECTED[3],_inferred__0_carry__6_n_2,_inferred__0_carry__6_n_3,_inferred__0_carry__6_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[29:27]}),
        .O(data2[31:28]),
        .S(\q_reg[2]_5 ));
  LUT5 #(
    .INIT(32'h40BFBFBF)) 
    sink_bit_OBUF_inst_i_1
       (.I0(sink_bit_OBUF_inst_i_2_n_1),
        .I1(\q_reg[4]_1 ),
        .I2(\q_reg[4] ),
        .I3(\q_reg[7] ),
        .I4(\q_reg[25] ),
        .O(sink_bit_OBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_10
       (.I0(Q[30]),
        .I1(Q[31]),
        .I2(Q[29]),
        .I3(Q[28]),
        .O(sink_bit_OBUF_inst_i_10_n_1));
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_11
       (.I0(Q[23]),
        .I1(Q[22]),
        .I2(Q[21]),
        .I3(Q[20]),
        .O(sink_bit_OBUF_inst_i_11_n_1));
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_12
       (.I0(Q[19]),
        .I1(Q[18]),
        .I2(Q[17]),
        .I3(Q[16]),
        .O(sink_bit_OBUF_inst_i_12_n_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    sink_bit_OBUF_inst_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(sink_bit_OBUF_inst_i_7_n_1),
        .O(sink_bit_OBUF_inst_i_2_n_1));
  LUT5 #(
    .INIT(32'h00000001)) 
    sink_bit_OBUF_inst_i_3
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(sink_bit_OBUF_inst_i_8_n_1),
        .O(\q_reg[4]_1 ));
  LUT4 #(
    .INIT(16'h4000)) 
    sink_bit_OBUF_inst_i_4
       (.I0(sink_bit_OBUF_inst_i_9_n_1),
        .I1(sink_bit_OBUF_inst_i_10_n_1),
        .I2(sink_bit_OBUF_inst_i_11_n_1),
        .I3(sink_bit_OBUF_inst_i_12_n_1),
        .O(\q_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_7
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(sink_bit_OBUF_inst_i_7_n_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sink_bit_OBUF_inst_i_8
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[11]),
        .I3(Q[10]),
        .O(sink_bit_OBUF_inst_i_8_n_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sink_bit_OBUF_inst_i_9
       (.I0(Q[25]),
        .I1(Q[24]),
        .I2(Q[27]),
        .I3(Q[26]),
        .O(sink_bit_OBUF_inst_i_9_n_1));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 y2_carry
       (.CI(1'b0),
        .CO({y2_carry_n_1,y2_carry_n_2,y2_carry_n_3,y2_carry_n_4}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_y2_carry_O_UNCONNECTED[3:0]),
        .S(\q_reg[2]_6 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 y2_carry__0
       (.CI(y2_carry_n_1),
        .CO({y2_carry__0_n_1,y2_carry__0_n_2,y2_carry__0_n_3,y2_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI(\q_reg[2]_7 ),
        .O(NLW_y2_carry__0_O_UNCONNECTED[3:0]),
        .S(\q_reg[2]_8 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 y2_carry__1
       (.CI(y2_carry__0_n_1),
        .CO({y2_carry__1_n_1,y2_carry__1_n_2,y2_carry__1_n_3,y2_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI(\q_reg[2]_9 ),
        .O(NLW_y2_carry__1_O_UNCONNECTED[3:0]),
        .S(\q_reg[2]_10 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 y2_carry__2
       (.CI(y2_carry__1_n_1),
        .CO({CO,y2_carry__2_n_2,y2_carry__2_n_3,y2_carry__2_n_4}),
        .CYINIT(1'b0),
        .DI(\q_reg[2]_11 ),
        .O(NLW_y2_carry__2_O_UNCONNECTED[3:0]),
        .S(\q_reg[2]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    y_carry_i_11
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(y_carry_i_12_n_1),
        .O(\q_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    y_carry_i_12
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(y_carry_i_12_n_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[10] 
       (.CLR(1'b0),
        .D(D[10]),
        .G(E),
        .GE(1'b1),
        .Q(Q[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[11] 
       (.CLR(1'b0),
        .D(D[11]),
        .G(E),
        .GE(1'b1),
        .Q(Q[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[12] 
       (.CLR(1'b0),
        .D(D[12]),
        .G(E),
        .GE(1'b1),
        .Q(Q[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[13] 
       (.CLR(1'b0),
        .D(D[13]),
        .G(E),
        .GE(1'b1),
        .Q(Q[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[14] 
       (.CLR(1'b0),
        .D(D[14]),
        .G(E),
        .GE(1'b1),
        .Q(Q[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[15] 
       (.CLR(1'b0),
        .D(D[15]),
        .G(E),
        .GE(1'b1),
        .Q(Q[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[16] 
       (.CLR(1'b0),
        .D(D[16]),
        .G(E),
        .GE(1'b1),
        .Q(Q[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[17] 
       (.CLR(1'b0),
        .D(D[17]),
        .G(E),
        .GE(1'b1),
        .Q(Q[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[18] 
       (.CLR(1'b0),
        .D(D[18]),
        .G(E),
        .GE(1'b1),
        .Q(Q[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[19] 
       (.CLR(1'b0),
        .D(D[19]),
        .G(E),
        .GE(1'b1),
        .Q(Q[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[20] 
       (.CLR(1'b0),
        .D(D[20]),
        .G(E),
        .GE(1'b1),
        .Q(Q[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[21] 
       (.CLR(1'b0),
        .D(D[21]),
        .G(E),
        .GE(1'b1),
        .Q(Q[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[22] 
       (.CLR(1'b0),
        .D(D[22]),
        .G(E),
        .GE(1'b1),
        .Q(Q[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[23] 
       (.CLR(1'b0),
        .D(D[23]),
        .G(E),
        .GE(1'b1),
        .Q(Q[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[24] 
       (.CLR(1'b0),
        .D(D[24]),
        .G(E),
        .GE(1'b1),
        .Q(Q[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[25] 
       (.CLR(1'b0),
        .D(D[25]),
        .G(E),
        .GE(1'b1),
        .Q(Q[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[26] 
       (.CLR(1'b0),
        .D(D[26]),
        .G(E),
        .GE(1'b1),
        .Q(Q[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[27] 
       (.CLR(1'b0),
        .D(D[27]),
        .G(E),
        .GE(1'b1),
        .Q(Q[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[28] 
       (.CLR(1'b0),
        .D(D[28]),
        .G(E),
        .GE(1'b1),
        .Q(Q[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[29] 
       (.CLR(1'b0),
        .D(D[29]),
        .G(E),
        .GE(1'b1),
        .Q(Q[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[30] 
       (.CLR(1'b0),
        .D(D[30]),
        .G(E),
        .GE(1'b1),
        .Q(Q[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[31] 
       (.CLR(1'b0),
        .D(D[31]),
        .G(E),
        .GE(1'b1),
        .Q(Q[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[8] 
       (.CLR(1'b0),
        .D(D[8]),
        .G(E),
        .GE(1'b1),
        .Q(Q[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[9] 
       (.CLR(1'b0),
        .D(D[9]),
        .G(E),
        .GE(1'b1),
        .Q(Q[9]));
endmodule

module bdebouncer
   (clk_pb,
    CLK,
    D);
  output clk_pb;
  input CLK;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire clk_pb;
  wire debounced_button0__0;
  wire debounced_button_i_2_n_1;
  wire debounced_button_i_3_n_1;
  wire [15:0]history;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    debounced_button_i_1
       (.I0(debounced_button_i_2_n_1),
        .I1(history[1]),
        .I2(history[0]),
        .I3(history[3]),
        .I4(history[2]),
        .I5(debounced_button_i_3_n_1),
        .O(debounced_button0__0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    debounced_button_i_2
       (.I0(history[12]),
        .I1(history[13]),
        .I2(history[10]),
        .I3(history[11]),
        .I4(history[15]),
        .I5(history[14]),
        .O(debounced_button_i_2_n_1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    debounced_button_i_3
       (.I0(history[6]),
        .I1(history[7]),
        .I2(history[4]),
        .I3(history[5]),
        .I4(history[9]),
        .I5(history[8]),
        .O(debounced_button_i_3_n_1));
  FDRE #(
    .INIT(1'b0)) 
    debounced_button_reg
       (.C(CLK),
        .CE(1'b1),
        .D(debounced_button0__0),
        .Q(clk_pb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[1]),
        .Q(history[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[11]),
        .Q(history[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[12]),
        .Q(history[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[13]),
        .Q(history[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[14]),
        .Q(history[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[15]),
        .Q(history[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(history[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[2]),
        .Q(history[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[3]),
        .Q(history[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[4]),
        .Q(history[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[5]),
        .Q(history[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[6]),
        .Q(history[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[7]),
        .Q(history[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[8]),
        .Q(history[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[9]),
        .Q(history[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \history_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(history[10]),
        .Q(history[9]),
        .R(1'b0));
endmodule

module clk_gen
   (CLK,
    rst_IBUF,
    clk_IBUF_BUFG);
  output CLK;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire CLK;
  wire clk_5KHz_i_1_n_1;
  wire clk_IBUF_BUFG;
  wire [31:0]count2;
  wire count20_carry__0_n_1;
  wire count20_carry__0_n_2;
  wire count20_carry__0_n_3;
  wire count20_carry__0_n_4;
  wire count20_carry__1_n_1;
  wire count20_carry__1_n_2;
  wire count20_carry__1_n_3;
  wire count20_carry__1_n_4;
  wire count20_carry__2_n_1;
  wire count20_carry__2_n_2;
  wire count20_carry__2_n_3;
  wire count20_carry__2_n_4;
  wire count20_carry__3_n_1;
  wire count20_carry__3_n_2;
  wire count20_carry__3_n_3;
  wire count20_carry__3_n_4;
  wire count20_carry__4_n_1;
  wire count20_carry__4_n_2;
  wire count20_carry__4_n_3;
  wire count20_carry__4_n_4;
  wire count20_carry__5_n_1;
  wire count20_carry__5_n_2;
  wire count20_carry__5_n_3;
  wire count20_carry__5_n_4;
  wire count20_carry__6_n_3;
  wire count20_carry__6_n_4;
  wire count20_carry_i_10_n_1;
  wire count20_carry_i_11_n_1;
  wire count20_carry_i_12_n_1;
  wire count20_carry_i_5_n_1;
  wire count20_carry_i_6_n_1;
  wire count20_carry_i_7_n_1;
  wire count20_carry_i_8_n_1;
  wire count20_carry_i_9_n_1;
  wire count20_carry_n_1;
  wire count20_carry_n_2;
  wire count20_carry_n_3;
  wire count20_carry_n_4;
  wire [13:4]count2_0;
  wire [31:0]p_0_in;
  wire rst_IBUF;
  wire [3:2]NLW_count20_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count20_carry__6_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFEF0010)) 
    clk_5KHz_i_1
       (.I0(count20_carry_i_5_n_1),
        .I1(count20_carry_i_6_n_1),
        .I2(count20_carry_i_7_n_1),
        .I3(count20_carry_i_8_n_1),
        .I4(CLK),
        .O(clk_5KHz_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clk_5KHz_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_5KHz_i_1_n_1),
        .Q(CLK),
        .R(rst_IBUF));
  CARRY4 count20_carry
       (.CI(1'b0),
        .CO({count20_carry_n_1,count20_carry_n_2,count20_carry_n_3,count20_carry_n_4}),
        .CYINIT(count2[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S({count2_0[4],count2[3:1]}));
  CARRY4 count20_carry__0
       (.CI(count20_carry_n_1),
        .CO({count20_carry__0_n_1,count20_carry__0_n_2,count20_carry__0_n_3,count20_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S({count2_0[8],count2[7:5]}));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    count20_carry__0_i_1
       (.I0(count2[8]),
        .I1(count20_carry_i_5_n_1),
        .I2(count20_carry_i_6_n_1),
        .I3(count20_carry_i_7_n_1),
        .I4(count20_carry_i_8_n_1),
        .O(count2_0[8]));
  CARRY4 count20_carry__1
       (.CI(count20_carry__0_n_1),
        .CO({count20_carry__1_n_1,count20_carry__1_n_2,count20_carry__1_n_3,count20_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S({count2[12:11],count2_0[10:9]}));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    count20_carry__1_i_3
       (.I0(count2[10]),
        .I1(count20_carry_i_5_n_1),
        .I2(count20_carry_i_6_n_1),
        .I3(count20_carry_i_7_n_1),
        .I4(count20_carry_i_8_n_1),
        .O(count2_0[10]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    count20_carry__1_i_4
       (.I0(count2[9]),
        .I1(count20_carry_i_5_n_1),
        .I2(count20_carry_i_6_n_1),
        .I3(count20_carry_i_7_n_1),
        .I4(count20_carry_i_8_n_1),
        .O(count2_0[9]));
  CARRY4 count20_carry__2
       (.CI(count20_carry__1_n_1),
        .CO({count20_carry__2_n_1,count20_carry__2_n_2,count20_carry__2_n_3,count20_carry__2_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S({count2[16:14],count2_0[13]}));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    count20_carry__2_i_4
       (.I0(count2[13]),
        .I1(count20_carry_i_5_n_1),
        .I2(count20_carry_i_6_n_1),
        .I3(count20_carry_i_7_n_1),
        .I4(count20_carry_i_8_n_1),
        .O(count2_0[13]));
  CARRY4 count20_carry__3
       (.CI(count20_carry__2_n_1),
        .CO({count20_carry__3_n_1,count20_carry__3_n_2,count20_carry__3_n_3,count20_carry__3_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S(count2[20:17]));
  CARRY4 count20_carry__4
       (.CI(count20_carry__3_n_1),
        .CO({count20_carry__4_n_1,count20_carry__4_n_2,count20_carry__4_n_3,count20_carry__4_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[24:21]),
        .S(count2[24:21]));
  CARRY4 count20_carry__5
       (.CI(count20_carry__4_n_1),
        .CO({count20_carry__5_n_1,count20_carry__5_n_2,count20_carry__5_n_3,count20_carry__5_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[28:25]),
        .S(count2[28:25]));
  CARRY4 count20_carry__6
       (.CI(count20_carry__5_n_1),
        .CO({NLW_count20_carry__6_CO_UNCONNECTED[3:2],count20_carry__6_n_3,count20_carry__6_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count20_carry__6_O_UNCONNECTED[3],p_0_in[31:29]}),
        .S({1'b0,count2[31:29]}));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    count20_carry_i_1
       (.I0(count2[4]),
        .I1(count20_carry_i_5_n_1),
        .I2(count20_carry_i_6_n_1),
        .I3(count20_carry_i_7_n_1),
        .I4(count20_carry_i_8_n_1),
        .O(count2_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    count20_carry_i_10
       (.I0(count2[10]),
        .I1(count2[0]),
        .I2(count2[11]),
        .I3(count2[5]),
        .O(count20_carry_i_10_n_1));
  LUT4 #(
    .INIT(16'hFFDF)) 
    count20_carry_i_11
       (.I0(count2[9]),
        .I1(count2[30]),
        .I2(count2[13]),
        .I3(count2[12]),
        .O(count20_carry_i_11_n_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    count20_carry_i_12
       (.I0(count2[28]),
        .I1(count2[1]),
        .I2(count2[29]),
        .I3(count2[2]),
        .O(count20_carry_i_12_n_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    count20_carry_i_5
       (.I0(count2[31]),
        .I1(count2[27]),
        .I2(count2[3]),
        .I3(count2[26]),
        .I4(count20_carry_i_9_n_1),
        .O(count20_carry_i_5_n_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    count20_carry_i_6
       (.I0(count2[21]),
        .I1(count2[22]),
        .I2(count2[20]),
        .I3(count2[23]),
        .I4(count20_carry_i_10_n_1),
        .O(count20_carry_i_6_n_1));
  LUT5 #(
    .INIT(32'h00000001)) 
    count20_carry_i_7
       (.I0(count2[15]),
        .I1(count2[24]),
        .I2(count2[14]),
        .I3(count2[25]),
        .I4(count20_carry_i_11_n_1),
        .O(count20_carry_i_7_n_1));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    count20_carry_i_8
       (.I0(count2[6]),
        .I1(count2[4]),
        .I2(count2[7]),
        .I3(count2[8]),
        .I4(count20_carry_i_12_n_1),
        .O(count20_carry_i_8_n_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    count20_carry_i_9
       (.I0(count2[19]),
        .I1(count2[16]),
        .I2(count2[18]),
        .I3(count2[17]),
        .O(count20_carry_i_9_n_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count2[0]_i_1 
       (.I0(count2[0]),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(count2[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(count2[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(count2[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(count2[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(count2[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(count2[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(count2[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(count2[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(count2[17]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(count2[18]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(count2[19]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(count2[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(count2[20]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(count2[21]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(count2[22]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(count2[23]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(count2[24]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(count2[25]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[26]),
        .Q(count2[26]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[27]),
        .Q(count2[27]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(count2[28]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[29]),
        .Q(count2[29]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(count2[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[30]),
        .Q(count2[30]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[31]),
        .Q(count2[31]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(count2[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(count2[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(count2[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(count2[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(count2[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(count2[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(count2[9]),
        .R(rst_IBUF));
endmodule

module datapath
   (A,
    B,
    D,
    n_0_92_BUFG_inst_n_1,
    Q,
    \LEDOUT[1] ,
    \LEDOUT[2] ,
    \LEDOUT[0] ,
    \LEDOUT[1]_0 ,
    \LEDOUT[2]_0 ,
    \LEDOUT[3] ,
    \LEDOUT[4] ,
    \LEDOUT[5] ,
    \LEDOUT[6] ,
    \LEDOUT[0]_0 ,
    \LEDOUT[3]_0 ,
    \LEDOUT[4]_0 ,
    \LEDOUT[5]_0 ,
    \LEDOUT[6]_0 ,
    sink_bit_OBUF,
    we_dm,
    switches_IBUF,
    \switches[2] ,
    q,
    \index_reg[0] ,
    E,
    clk_pb_BUFG,
    AR);
  output [16:0]A;
  output [14:0]B;
  output [15:0]D;
  output n_0_92_BUFG_inst_n_1;
  output [5:0]Q;
  output \LEDOUT[1] ;
  output \LEDOUT[2] ;
  output \LEDOUT[0] ;
  output \LEDOUT[1]_0 ;
  output \LEDOUT[2]_0 ;
  output \LEDOUT[3] ;
  output \LEDOUT[4] ;
  output \LEDOUT[5] ;
  output \LEDOUT[6] ;
  output \LEDOUT[0]_0 ;
  output \LEDOUT[3]_0 ;
  output \LEDOUT[4]_0 ;
  output \LEDOUT[5]_0 ;
  output \LEDOUT[6]_0 ;
  output sink_bit_OBUF;
  output we_dm;
  input [7:0]switches_IBUF;
  input \switches[2] ;
  input [31:0]q;
  input [0:0]\index_reg[0] ;
  input [0:0]E;
  input clk_pb_BUFG;
  input [0:0]AR;

  wire [16:0]A;
  wire [0:0]AR;
  wire [14:0]B;
  wire [15:0]D;
  wire [0:0]E;
  wire \LEDOUT[0] ;
  wire \LEDOUT[0]_0 ;
  wire \LEDOUT[1] ;
  wire \LEDOUT[1]_0 ;
  wire \LEDOUT[2] ;
  wire \LEDOUT[2]_0 ;
  wire \LEDOUT[3] ;
  wire \LEDOUT[3]_0 ;
  wire \LEDOUT[4] ;
  wire \LEDOUT[4]_0 ;
  wire \LEDOUT[5] ;
  wire \LEDOUT[5]_0 ;
  wire \LEDOUT[6] ;
  wire \LEDOUT[6]_0 ;
  wire [5:0]Q;
  wire [30:2]a;
  wire [2:2]alu_ctrl;
  wire alu_n_34;
  wire alu_n_67;
  wire alu_n_68;
  wire [31:0]alu_out;
  wire [31:0]alu_pa;
  wire clk_pb_BUFG;
  wire [31:0]d;
  wire [31:0]data2;
  wire en;
  wire hi_n_1;
  wire hi_n_10;
  wire hi_n_11;
  wire hi_n_12;
  wire hi_n_13;
  wire hi_n_14;
  wire hi_n_15;
  wire hi_n_16;
  wire hi_n_17;
  wire hi_n_18;
  wire hi_n_19;
  wire hi_n_2;
  wire hi_n_20;
  wire hi_n_21;
  wire hi_n_22;
  wire hi_n_23;
  wire hi_n_24;
  wire hi_n_25;
  wire hi_n_26;
  wire hi_n_27;
  wire hi_n_28;
  wire hi_n_29;
  wire hi_n_3;
  wire hi_n_30;
  wire hi_n_31;
  wire hi_n_32;
  wire hi_n_4;
  wire hi_n_5;
  wire hi_n_6;
  wire hi_n_7;
  wire hi_n_8;
  wire hi_n_9;
  wire [0:0]\index_reg[0] ;
  wire [23:14]instr;
  wire multu_n_1;
  wire multu_n_10;
  wire multu_n_11;
  wire multu_n_12;
  wire multu_n_13;
  wire multu_n_14;
  wire multu_n_15;
  wire multu_n_16;
  wire multu_n_17;
  wire multu_n_18;
  wire multu_n_19;
  wire multu_n_2;
  wire multu_n_20;
  wire multu_n_21;
  wire multu_n_22;
  wire multu_n_23;
  wire multu_n_24;
  wire multu_n_25;
  wire multu_n_26;
  wire multu_n_27;
  wire multu_n_28;
  wire multu_n_29;
  wire multu_n_3;
  wire multu_n_30;
  wire multu_n_31;
  wire multu_n_32;
  wire multu_n_4;
  wire multu_n_5;
  wire multu_n_6;
  wire multu_n_7;
  wire multu_n_8;
  wire multu_n_9;
  wire n_0_92_BUFG_inst_n_1;
  wire [30:1]p_0_in;
  wire pc_reg_n_1;
  wire pc_reg_n_10;
  wire pc_reg_n_11;
  wire pc_reg_n_12;
  wire pc_reg_n_13;
  wire pc_reg_n_14;
  wire pc_reg_n_15;
  wire pc_reg_n_155;
  wire pc_reg_n_156;
  wire pc_reg_n_157;
  wire pc_reg_n_158;
  wire pc_reg_n_159;
  wire pc_reg_n_16;
  wire pc_reg_n_160;
  wire pc_reg_n_161;
  wire pc_reg_n_162;
  wire pc_reg_n_163;
  wire pc_reg_n_164;
  wire pc_reg_n_165;
  wire pc_reg_n_166;
  wire pc_reg_n_167;
  wire pc_reg_n_168;
  wire pc_reg_n_169;
  wire pc_reg_n_17;
  wire pc_reg_n_170;
  wire pc_reg_n_171;
  wire pc_reg_n_172;
  wire pc_reg_n_173;
  wire pc_reg_n_174;
  wire pc_reg_n_175;
  wire pc_reg_n_176;
  wire pc_reg_n_177;
  wire pc_reg_n_178;
  wire pc_reg_n_179;
  wire pc_reg_n_18;
  wire pc_reg_n_180;
  wire pc_reg_n_181;
  wire pc_reg_n_182;
  wire pc_reg_n_183;
  wire pc_reg_n_184;
  wire pc_reg_n_185;
  wire pc_reg_n_187;
  wire pc_reg_n_188;
  wire pc_reg_n_189;
  wire pc_reg_n_19;
  wire pc_reg_n_190;
  wire pc_reg_n_191;
  wire pc_reg_n_192;
  wire pc_reg_n_193;
  wire pc_reg_n_194;
  wire pc_reg_n_195;
  wire pc_reg_n_196;
  wire pc_reg_n_2;
  wire pc_reg_n_20;
  wire pc_reg_n_21;
  wire pc_reg_n_214;
  wire pc_reg_n_22;
  wire pc_reg_n_23;
  wire pc_reg_n_230;
  wire pc_reg_n_231;
  wire pc_reg_n_232;
  wire pc_reg_n_233;
  wire pc_reg_n_234;
  wire pc_reg_n_235;
  wire pc_reg_n_236;
  wire pc_reg_n_237;
  wire pc_reg_n_238;
  wire pc_reg_n_239;
  wire pc_reg_n_24;
  wire pc_reg_n_240;
  wire pc_reg_n_241;
  wire pc_reg_n_242;
  wire pc_reg_n_243;
  wire pc_reg_n_25;
  wire pc_reg_n_259;
  wire pc_reg_n_26;
  wire pc_reg_n_260;
  wire pc_reg_n_261;
  wire pc_reg_n_262;
  wire pc_reg_n_263;
  wire pc_reg_n_264;
  wire pc_reg_n_265;
  wire pc_reg_n_266;
  wire pc_reg_n_267;
  wire pc_reg_n_27;
  wire pc_reg_n_28;
  wire pc_reg_n_29;
  wire pc_reg_n_298;
  wire pc_reg_n_299;
  wire pc_reg_n_3;
  wire pc_reg_n_30;
  wire pc_reg_n_300;
  wire pc_reg_n_301;
  wire pc_reg_n_302;
  wire pc_reg_n_303;
  wire pc_reg_n_304;
  wire pc_reg_n_305;
  wire pc_reg_n_306;
  wire pc_reg_n_307;
  wire pc_reg_n_308;
  wire pc_reg_n_309;
  wire pc_reg_n_31;
  wire pc_reg_n_310;
  wire pc_reg_n_311;
  wire pc_reg_n_312;
  wire pc_reg_n_313;
  wire pc_reg_n_314;
  wire pc_reg_n_315;
  wire pc_reg_n_316;
  wire pc_reg_n_317;
  wire pc_reg_n_318;
  wire pc_reg_n_319;
  wire pc_reg_n_32;
  wire pc_reg_n_320;
  wire pc_reg_n_321;
  wire pc_reg_n_322;
  wire pc_reg_n_323;
  wire pc_reg_n_324;
  wire pc_reg_n_325;
  wire pc_reg_n_326;
  wire pc_reg_n_327;
  wire pc_reg_n_328;
  wire pc_reg_n_329;
  wire pc_reg_n_33;
  wire pc_reg_n_330;
  wire pc_reg_n_331;
  wire pc_reg_n_332;
  wire pc_reg_n_333;
  wire pc_reg_n_334;
  wire pc_reg_n_335;
  wire pc_reg_n_336;
  wire pc_reg_n_337;
  wire pc_reg_n_338;
  wire pc_reg_n_339;
  wire pc_reg_n_34;
  wire pc_reg_n_340;
  wire pc_reg_n_341;
  wire pc_reg_n_342;
  wire pc_reg_n_343;
  wire pc_reg_n_344;
  wire pc_reg_n_345;
  wire pc_reg_n_35;
  wire pc_reg_n_36;
  wire pc_reg_n_37;
  wire pc_reg_n_38;
  wire pc_reg_n_39;
  wire pc_reg_n_4;
  wire pc_reg_n_40;
  wire pc_reg_n_41;
  wire pc_reg_n_5;
  wire pc_reg_n_6;
  wire pc_reg_n_7;
  wire pc_reg_n_8;
  wire pc_reg_n_84;
  wire pc_reg_n_85;
  wire pc_reg_n_86;
  wire pc_reg_n_87;
  wire pc_reg_n_88;
  wire pc_reg_n_9;
  wire [31:1]\pc_src_mux/y ;
  wire [31:0]q;
  wire [31:0]q_0;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [4:0]rf_wa;
  wire sink_bit_OBUF;
  wire \switches[2] ;
  wire [7:0]switches_IBUF;
  wire [31:0]wd;
  wire we;
  wire we_dm;
  wire y0;

  alu alu
       (.A(alu_pa[0]),
        .CO(y0),
        .D({pc_reg_n_10,pc_reg_n_11,pc_reg_n_12,pc_reg_n_13,pc_reg_n_14,pc_reg_n_15,pc_reg_n_16,pc_reg_n_17,pc_reg_n_18,pc_reg_n_19,pc_reg_n_20,pc_reg_n_21,pc_reg_n_22,pc_reg_n_23,pc_reg_n_24,pc_reg_n_25,pc_reg_n_26,pc_reg_n_27,pc_reg_n_28,pc_reg_n_29,pc_reg_n_30,pc_reg_n_31,pc_reg_n_32,pc_reg_n_33,pc_reg_n_34,pc_reg_n_35,pc_reg_n_36,pc_reg_n_37,pc_reg_n_38,pc_reg_n_39,pc_reg_n_40,pc_reg_n_41}),
        .DI({pc_reg_n_2,pc_reg_n_3,pc_reg_n_4,pc_reg_n_5}),
        .E(E),
        .Q({alu_out[31:8],Q,alu_out[1:0]}),
        .S({pc_reg_n_264,pc_reg_n_265,pc_reg_n_266,pc_reg_n_267}),
        .alu_ctrl(alu_ctrl),
        .data2(data2),
        .p_0_in(p_0_in),
        .\q_reg[25] (pc_reg_n_259),
        .\q_reg[2] ({pc_reg_n_298,pc_reg_n_299,pc_reg_n_300,pc_reg_n_301}),
        .\q_reg[2]_0 ({pc_reg_n_302,pc_reg_n_303,pc_reg_n_304,pc_reg_n_305}),
        .\q_reg[2]_1 ({pc_reg_n_306,pc_reg_n_307,pc_reg_n_308,pc_reg_n_309}),
        .\q_reg[2]_10 ({pc_reg_n_172,pc_reg_n_173,pc_reg_n_174,pc_reg_n_175}),
        .\q_reg[2]_11 ({pc_reg_n_176,pc_reg_n_177,pc_reg_n_178,pc_reg_n_179}),
        .\q_reg[2]_12 ({pc_reg_n_180,pc_reg_n_181,pc_reg_n_182,pc_reg_n_183}),
        .\q_reg[2]_2 ({pc_reg_n_310,pc_reg_n_311,pc_reg_n_312,pc_reg_n_313}),
        .\q_reg[2]_3 ({pc_reg_n_314,pc_reg_n_315,pc_reg_n_316,pc_reg_n_317}),
        .\q_reg[2]_4 ({pc_reg_n_318,pc_reg_n_319,pc_reg_n_320,pc_reg_n_321}),
        .\q_reg[2]_5 ({pc_reg_n_84,pc_reg_n_85,pc_reg_n_86,pc_reg_n_87}),
        .\q_reg[2]_6 ({pc_reg_n_6,pc_reg_n_7,pc_reg_n_8,pc_reg_n_9}),
        .\q_reg[2]_7 ({pc_reg_n_156,pc_reg_n_157,pc_reg_n_158,pc_reg_n_159}),
        .\q_reg[2]_8 ({pc_reg_n_160,pc_reg_n_161,pc_reg_n_162,pc_reg_n_163}),
        .\q_reg[2]_9 ({pc_reg_n_168,pc_reg_n_169,pc_reg_n_170,pc_reg_n_171}),
        .\q_reg[4] (alu_n_34),
        .\q_reg[4]_0 (alu_n_67),
        .\q_reg[4]_1 (alu_n_68),
        .\q_reg[7] (pc_reg_n_188),
        .sink_bit_OBUF(sink_bit_OBUF));
  dreg2 hi
       (.AR(AR),
        .E(en),
        .Q({hi_n_1,hi_n_2,hi_n_3,hi_n_4,hi_n_5,hi_n_6,hi_n_7,hi_n_8,hi_n_9,hi_n_10,hi_n_11,hi_n_12,hi_n_13,hi_n_14,hi_n_15,hi_n_16,hi_n_17,hi_n_18,hi_n_19,hi_n_20,hi_n_21,hi_n_22,hi_n_23,hi_n_24,hi_n_25,hi_n_26,hi_n_27,hi_n_28,hi_n_29,hi_n_30,hi_n_31,hi_n_32}),
        .clk_pb_BUFG(clk_pb_BUFG),
        .y(d));
  dreg2_0 lo
       (.AR(AR),
        .D({multu_n_1,multu_n_2,multu_n_3,multu_n_4,multu_n_5,multu_n_6,multu_n_7,multu_n_8,multu_n_9,multu_n_10,multu_n_11,multu_n_12,multu_n_13,multu_n_14,multu_n_15,multu_n_16,multu_n_17,multu_n_18,multu_n_19,multu_n_20,multu_n_21,multu_n_22,multu_n_23,multu_n_24,multu_n_25,multu_n_26,multu_n_27,multu_n_28,multu_n_29,multu_n_30,multu_n_31,multu_n_32}),
        .E(en),
        .Q(q_0),
        .clk_pb_BUFG(clk_pb_BUFG));
  mult multu
       (.B(A),
        .D({multu_n_1,multu_n_2,multu_n_3,multu_n_4,multu_n_5,multu_n_6,multu_n_7,multu_n_8,multu_n_9,multu_n_10,multu_n_11,multu_n_12,multu_n_13,multu_n_14,multu_n_15,multu_n_16,multu_n_17,multu_n_18,multu_n_19,multu_n_20,multu_n_21,multu_n_22,multu_n_23,multu_n_24,multu_n_25,multu_n_26,multu_n_27,multu_n_28,multu_n_29,multu_n_30,multu_n_31,multu_n_32}),
        .alu_pa(alu_pa),
        .\q_reg[2] (B),
        .y(d));
  adder pc_plus_br
       (.S({pc_reg_n_260,pc_reg_n_261,pc_reg_n_262,pc_reg_n_263}),
        .a(a),
        .\q_reg[2] ({pc_reg_n_322,pc_reg_n_323,pc_reg_n_324,pc_reg_n_325}),
        .\q_reg[5] ({pc_reg_n_334,pc_reg_n_335,pc_reg_n_336,pc_reg_n_337}),
        .\q_reg[5]_0 ({pc_reg_n_330,pc_reg_n_331,pc_reg_n_332,pc_reg_n_333}),
        .\q_reg[5]_1 ({pc_reg_n_326,pc_reg_n_327,pc_reg_n_328,pc_reg_n_329}),
        .\q_reg[5]_2 ({pc_reg_n_164,pc_reg_n_165,pc_reg_n_166}),
        .\q_reg[6] ({pc_reg_n_338,pc_reg_n_339,pc_reg_n_340,pc_reg_n_341}),
        .\q_reg[6]_0 ({pc_reg_n_342,pc_reg_n_343,pc_reg_n_344,pc_reg_n_345}),
        .y(\pc_src_mux/y ));
  dreg pc_reg
       (.A(A),
        .ADDRD(rf_wa),
        .AR(AR),
        .B(B),
        .CO(y0),
        .D({pc_reg_n_10,pc_reg_n_11,pc_reg_n_12,pc_reg_n_13,pc_reg_n_14,pc_reg_n_15,pc_reg_n_16,pc_reg_n_17,pc_reg_n_18,pc_reg_n_19,pc_reg_n_20,pc_reg_n_21,pc_reg_n_22,pc_reg_n_23,pc_reg_n_24,pc_reg_n_25,pc_reg_n_26,pc_reg_n_27,pc_reg_n_28,pc_reg_n_29,pc_reg_n_30,pc_reg_n_31,pc_reg_n_32,pc_reg_n_33,pc_reg_n_34,pc_reg_n_35,pc_reg_n_36,pc_reg_n_37,pc_reg_n_38,pc_reg_n_39,pc_reg_n_40,pc_reg_n_41}),
        .DI({pc_reg_n_2,pc_reg_n_3,pc_reg_n_4,pc_reg_n_5}),
        .E(en),
        .\LEDOUT[0] (\LEDOUT[0] ),
        .\LEDOUT[0]_0 (\LEDOUT[0]_0 ),
        .\LEDOUT[1] (\LEDOUT[1] ),
        .\LEDOUT[1]_0 (\LEDOUT[1]_0 ),
        .\LEDOUT[2] (\LEDOUT[2] ),
        .\LEDOUT[2]_0 (\LEDOUT[2]_0 ),
        .\LEDOUT[3] (\LEDOUT[3] ),
        .\LEDOUT[3]_0 (\LEDOUT[3]_0 ),
        .\LEDOUT[4] (\LEDOUT[4] ),
        .\LEDOUT[4]_0 (\LEDOUT[4]_0 ),
        .\LEDOUT[5] (\LEDOUT[5] ),
        .\LEDOUT[5]_0 (\LEDOUT[5]_0 ),
        .\LEDOUT[6] (\LEDOUT[6] ),
        .\LEDOUT[6]_0 (\LEDOUT[6]_0 ),
        .Q({hi_n_1,hi_n_2,hi_n_3,hi_n_4,hi_n_5,hi_n_6,hi_n_7,hi_n_8,hi_n_9,hi_n_10,hi_n_11,hi_n_12,hi_n_13,hi_n_14,hi_n_15,hi_n_16,hi_n_17,hi_n_18,hi_n_19,hi_n_20,hi_n_21,hi_n_22,hi_n_23,hi_n_24,hi_n_25,hi_n_26,hi_n_27,hi_n_28,hi_n_29,hi_n_30,hi_n_31,hi_n_32}),
        .S({pc_reg_n_260,pc_reg_n_261,pc_reg_n_262,pc_reg_n_263}),
        .alu_ctrl(alu_ctrl),
        .alu_pa(alu_pa),
        .clk_pb_BUFG(clk_pb_BUFG),
        .data2(data2),
        .\index_reg[0] (\index_reg[0] ),
        .n_0_92_BUFG_inst_n_1(n_0_92_BUFG_inst_n_1),
        .p_0_in(p_0_in),
        .q(q),
        .\q_reg[12]_0 ({pc_reg_n_342,pc_reg_n_343,pc_reg_n_344,pc_reg_n_345}),
        .\q_reg[16]_0 ({pc_reg_n_322,pc_reg_n_323,pc_reg_n_324,pc_reg_n_325}),
        .\q_reg[20]_0 ({pc_reg_n_334,pc_reg_n_335,pc_reg_n_336,pc_reg_n_337}),
        .\q_reg[24]_0 ({pc_reg_n_330,pc_reg_n_331,pc_reg_n_332,pc_reg_n_333}),
        .\q_reg[25]_0 ({instr[23:17],instr[14]}),
        .\q_reg[28]_0 ({pc_reg_n_326,pc_reg_n_327,pc_reg_n_328,pc_reg_n_329}),
        .\q_reg[30]_0 (a),
        .\q_reg[31]_0 ({pc_reg_n_164,pc_reg_n_165,pc_reg_n_166}),
        .\q_reg[31]_1 (q_0),
        .\q_reg[4]_0 (alu_n_67),
        .\q_reg[4]_1 (alu_n_68),
        .\q_reg[4]_2 (alu_n_34),
        .\q_reg[4]_3 ({alu_out[31:8],Q,alu_out[1:0]}),
        .\q_reg[8]_0 ({pc_reg_n_338,pc_reg_n_339,pc_reg_n_340,pc_reg_n_341}),
        .rd10(rd10),
        .rd20(rd20),
        .\reg_hex_reg[0] (pc_reg_n_1),
        .\reg_hex_reg[0]_0 ({pc_reg_n_6,pc_reg_n_7,pc_reg_n_8,pc_reg_n_9}),
        .\reg_hex_reg[0]_1 ({pc_reg_n_156,pc_reg_n_157,pc_reg_n_158,pc_reg_n_159}),
        .\reg_hex_reg[0]_2 ({pc_reg_n_160,pc_reg_n_161,pc_reg_n_162,pc_reg_n_163}),
        .\reg_hex_reg[0]_3 ({pc_reg_n_168,pc_reg_n_169,pc_reg_n_170,pc_reg_n_171}),
        .\reg_hex_reg[0]_4 ({pc_reg_n_172,pc_reg_n_173,pc_reg_n_174,pc_reg_n_175}),
        .\reg_hex_reg[0]_5 ({pc_reg_n_176,pc_reg_n_177,pc_reg_n_178,pc_reg_n_179}),
        .\reg_hex_reg[0]_6 ({pc_reg_n_180,pc_reg_n_181,pc_reg_n_182,pc_reg_n_183}),
        .\reg_hex_reg[0]_7 (pc_reg_n_196),
        .\reg_hex_reg[10] (pc_reg_n_193),
        .\reg_hex_reg[10]_0 (pc_reg_n_238),
        .\reg_hex_reg[11] (pc_reg_n_194),
        .\reg_hex_reg[11]_0 (pc_reg_n_239),
        .\reg_hex_reg[11]_1 ({pc_reg_n_302,pc_reg_n_303,pc_reg_n_304,pc_reg_n_305}),
        .\reg_hex_reg[11]_2 ({pc_reg_n_318,pc_reg_n_319,pc_reg_n_320,pc_reg_n_321}),
        .\reg_hex_reg[12] (pc_reg_n_155),
        .\reg_hex_reg[12]_0 (pc_reg_n_240),
        .\reg_hex_reg[13] (pc_reg_n_195),
        .\reg_hex_reg[13]_0 (pc_reg_n_241),
        .\reg_hex_reg[14] (pc_reg_n_242),
        .\reg_hex_reg[15] ({pc_reg_n_84,pc_reg_n_85,pc_reg_n_86,pc_reg_n_87}),
        .\reg_hex_reg[15]_0 (pc_reg_n_167),
        .\reg_hex_reg[15]_1 (pc_reg_n_243),
        .\reg_hex_reg[15]_2 ({pc_reg_n_306,pc_reg_n_307,pc_reg_n_308,pc_reg_n_309}),
        .\reg_hex_reg[1] (pc_reg_n_88),
        .\reg_hex_reg[1]_0 (pc_reg_n_214),
        .\reg_hex_reg[2] (pc_reg_n_184),
        .\reg_hex_reg[2]_0 (pc_reg_n_230),
        .\reg_hex_reg[3] (pc_reg_n_185),
        .\reg_hex_reg[3]_0 (pc_reg_n_231),
        .\reg_hex_reg[3]_1 ({pc_reg_n_264,pc_reg_n_265,pc_reg_n_266,pc_reg_n_267}),
        .\reg_hex_reg[3]_2 ({pc_reg_n_310,pc_reg_n_311,pc_reg_n_312,pc_reg_n_313}),
        .\reg_hex_reg[4] (pc_reg_n_187),
        .\reg_hex_reg[4]_0 (pc_reg_n_232),
        .\reg_hex_reg[5] (pc_reg_n_189),
        .\reg_hex_reg[5]_0 (pc_reg_n_233),
        .\reg_hex_reg[6] (pc_reg_n_190),
        .\reg_hex_reg[6]_0 (pc_reg_n_234),
        .\reg_hex_reg[7] (pc_reg_n_191),
        .\reg_hex_reg[7]_0 (pc_reg_n_235),
        .\reg_hex_reg[7]_1 ({pc_reg_n_298,pc_reg_n_299,pc_reg_n_300,pc_reg_n_301}),
        .\reg_hex_reg[7]_2 ({pc_reg_n_314,pc_reg_n_315,pc_reg_n_316,pc_reg_n_317}),
        .\reg_hex_reg[8] (pc_reg_n_236),
        .\reg_hex_reg[9] (pc_reg_n_192),
        .\reg_hex_reg[9]_0 (pc_reg_n_237),
        .sink_bit(pc_reg_n_188),
        .sink_bit_0(pc_reg_n_259),
        .switches_IBUF(switches_IBUF[6:5]),
        .wd(wd),
        .we(we),
        .we_dm(we_dm),
        .y(\pc_src_mux/y ));
  regfile rf
       (.ADDRD(rf_wa),
        .D(D),
        .clk_pb_BUFG(clk_pb_BUFG),
        .\q_reg[2] (pc_reg_n_196),
        .\q_reg[2]_0 (pc_reg_n_1),
        .\q_reg[2]_1 (pc_reg_n_214),
        .\q_reg[2]_10 (pc_reg_n_235),
        .\q_reg[2]_11 (pc_reg_n_237),
        .\q_reg[2]_12 (pc_reg_n_236),
        .\q_reg[2]_13 (pc_reg_n_238),
        .\q_reg[2]_14 (pc_reg_n_239),
        .\q_reg[2]_15 (pc_reg_n_241),
        .\q_reg[2]_2 (pc_reg_n_240),
        .\q_reg[2]_3 (pc_reg_n_243),
        .\q_reg[2]_4 (pc_reg_n_230),
        .\q_reg[2]_5 (pc_reg_n_231),
        .\q_reg[2]_6 (pc_reg_n_232),
        .\q_reg[2]_7 (pc_reg_n_233),
        .\q_reg[2]_8 (pc_reg_n_242),
        .\q_reg[2]_9 (pc_reg_n_234),
        .\q_reg[3] (pc_reg_n_187),
        .\q_reg[5] (pc_reg_n_155),
        .\q_reg[5]_0 (pc_reg_n_167),
        .\q_reg[5]_1 (pc_reg_n_189),
        .\q_reg[6] (pc_reg_n_88),
        .\q_reg[6]_0 (pc_reg_n_184),
        .\q_reg[6]_1 (pc_reg_n_185),
        .\q_reg[6]_2 ({instr[23:17],instr[14]}),
        .\q_reg[6]_3 (pc_reg_n_190),
        .\q_reg[6]_4 (pc_reg_n_191),
        .\q_reg[6]_5 (pc_reg_n_192),
        .\q_reg[6]_6 (pc_reg_n_193),
        .\q_reg[6]_7 (pc_reg_n_194),
        .\q_reg[6]_8 (pc_reg_n_195),
        .rd10(rd10),
        .rd20(rd20),
        .\switches[2] (\switches[2] ),
        .switches_IBUF(switches_IBUF),
        .wd(wd),
        .we(we));
endmodule

module dmem
   (q,
    clk_pb_BUFG,
    wd_dm,
    we_dm,
    Q);
  output [31:0]q;
  input clk_pb_BUFG;
  input [31:0]wd_dm;
  input we_dm;
  input [5:0]Q;

  wire [5:0]Q;
  wire clk_pb_BUFG;
  wire [31:0]q;
  wire [31:0]wd_dm;
  wire we_dm;

  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[0]),
        .O(q[0]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_10_10
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[10]),
        .O(q[10]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_11_11
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[11]),
        .O(q[11]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[12]),
        .O(q[12]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_13_13
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[13]),
        .O(q[13]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_14_14
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[14]),
        .O(q[14]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_15_15
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[15]),
        .O(q[15]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_16_16
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[16]),
        .O(q[16]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_17_17
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[17]),
        .O(q[17]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_18_18
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[18]),
        .O(q[18]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_19_19
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[19]),
        .O(q[19]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_1_1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[1]),
        .O(q[1]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_20_20
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[20]),
        .O(q[20]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_21_21
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[21]),
        .O(q[21]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_22_22
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[22]),
        .O(q[22]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_23_23
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[23]),
        .O(q[23]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_24_24
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[24]),
        .O(q[24]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_25_25
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[25]),
        .O(q[25]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_26_26
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[26]),
        .O(q[26]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_27_27
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[27]),
        .O(q[27]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_28_28
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[28]),
        .O(q[28]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_29_29
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[29]),
        .O(q[29]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_2_2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[2]),
        .O(q[2]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_30_30
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[30]),
        .O(q[30]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_31_31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[31]),
        .O(q[31]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_3_3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[3]),
        .O(q[3]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_4_4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[4]),
        .O(q[4]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_5_5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[5]),
        .O(q[5]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_6_6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[6]),
        .O(q[6]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_7_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[7]),
        .O(q[7]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_8_8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[8]),
        .O(q[8]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
  RAM64X1S #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    ram_reg_0_63_9_9
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(wd_dm[9]),
        .O(q[9]),
        .WCLK(clk_pb_BUFG),
        .WE(we_dm));
endmodule

module dreg
   (\reg_hex_reg[0] ,
    DI,
    \reg_hex_reg[0]_0 ,
    D,
    alu_ctrl,
    \q_reg[25]_0 ,
    n_0_92_BUFG_inst_n_1,
    alu_pa,
    \reg_hex_reg[15] ,
    \reg_hex_reg[1] ,
    wd,
    \q_reg[30]_0 ,
    ADDRD,
    \reg_hex_reg[12] ,
    \reg_hex_reg[0]_1 ,
    \reg_hex_reg[0]_2 ,
    \q_reg[31]_0 ,
    \reg_hex_reg[15]_0 ,
    \reg_hex_reg[0]_3 ,
    \reg_hex_reg[0]_4 ,
    \reg_hex_reg[0]_5 ,
    \reg_hex_reg[0]_6 ,
    \reg_hex_reg[2] ,
    \reg_hex_reg[3] ,
    E,
    \reg_hex_reg[4] ,
    sink_bit,
    \reg_hex_reg[5] ,
    \reg_hex_reg[6] ,
    \reg_hex_reg[7] ,
    \reg_hex_reg[9] ,
    \reg_hex_reg[10] ,
    \reg_hex_reg[11] ,
    \reg_hex_reg[13] ,
    \reg_hex_reg[0]_7 ,
    A,
    \reg_hex_reg[1]_0 ,
    B,
    \reg_hex_reg[2]_0 ,
    \reg_hex_reg[3]_0 ,
    \reg_hex_reg[4]_0 ,
    \reg_hex_reg[5]_0 ,
    \reg_hex_reg[6]_0 ,
    \reg_hex_reg[7]_0 ,
    \reg_hex_reg[8] ,
    \reg_hex_reg[9]_0 ,
    \reg_hex_reg[10]_0 ,
    \reg_hex_reg[11]_0 ,
    \reg_hex_reg[12]_0 ,
    \reg_hex_reg[13]_0 ,
    \reg_hex_reg[14] ,
    \reg_hex_reg[15]_1 ,
    we,
    \LEDOUT[1] ,
    \LEDOUT[2] ,
    \LEDOUT[0] ,
    \LEDOUT[1]_0 ,
    \LEDOUT[2]_0 ,
    \LEDOUT[3] ,
    \LEDOUT[4] ,
    \LEDOUT[5] ,
    \LEDOUT[6] ,
    \LEDOUT[0]_0 ,
    \LEDOUT[3]_0 ,
    \LEDOUT[4]_0 ,
    \LEDOUT[5]_0 ,
    \LEDOUT[6]_0 ,
    sink_bit_0,
    S,
    \reg_hex_reg[3]_1 ,
    p_0_in,
    \reg_hex_reg[7]_1 ,
    \reg_hex_reg[11]_1 ,
    \reg_hex_reg[15]_2 ,
    \reg_hex_reg[3]_2 ,
    \reg_hex_reg[7]_2 ,
    \reg_hex_reg[11]_2 ,
    \q_reg[16]_0 ,
    \q_reg[28]_0 ,
    \q_reg[24]_0 ,
    \q_reg[20]_0 ,
    \q_reg[8]_0 ,
    \q_reg[12]_0 ,
    we_dm,
    switches_IBUF,
    rd10,
    CO,
    data2,
    y,
    rd20,
    Q,
    \q_reg[31]_1 ,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[4]_2 ,
    \q_reg[4]_3 ,
    q,
    \index_reg[0] ,
    clk_pb_BUFG,
    AR);
  output \reg_hex_reg[0] ;
  output [3:0]DI;
  output [3:0]\reg_hex_reg[0]_0 ;
  output [31:0]D;
  output [0:0]alu_ctrl;
  output [7:0]\q_reg[25]_0 ;
  output n_0_92_BUFG_inst_n_1;
  output [31:0]alu_pa;
  output [3:0]\reg_hex_reg[15] ;
  output \reg_hex_reg[1] ;
  output [31:0]wd;
  output [28:0]\q_reg[30]_0 ;
  output [4:0]ADDRD;
  output \reg_hex_reg[12] ;
  output [3:0]\reg_hex_reg[0]_1 ;
  output [3:0]\reg_hex_reg[0]_2 ;
  output [2:0]\q_reg[31]_0 ;
  output \reg_hex_reg[15]_0 ;
  output [3:0]\reg_hex_reg[0]_3 ;
  output [3:0]\reg_hex_reg[0]_4 ;
  output [3:0]\reg_hex_reg[0]_5 ;
  output [3:0]\reg_hex_reg[0]_6 ;
  output \reg_hex_reg[2] ;
  output \reg_hex_reg[3] ;
  output [0:0]E;
  output \reg_hex_reg[4] ;
  output sink_bit;
  output \reg_hex_reg[5] ;
  output \reg_hex_reg[6] ;
  output \reg_hex_reg[7] ;
  output \reg_hex_reg[9] ;
  output \reg_hex_reg[10] ;
  output \reg_hex_reg[11] ;
  output \reg_hex_reg[13] ;
  output \reg_hex_reg[0]_7 ;
  output [16:0]A;
  output \reg_hex_reg[1]_0 ;
  output [14:0]B;
  output \reg_hex_reg[2]_0 ;
  output \reg_hex_reg[3]_0 ;
  output \reg_hex_reg[4]_0 ;
  output \reg_hex_reg[5]_0 ;
  output \reg_hex_reg[6]_0 ;
  output \reg_hex_reg[7]_0 ;
  output \reg_hex_reg[8] ;
  output \reg_hex_reg[9]_0 ;
  output \reg_hex_reg[10]_0 ;
  output \reg_hex_reg[11]_0 ;
  output \reg_hex_reg[12]_0 ;
  output \reg_hex_reg[13]_0 ;
  output \reg_hex_reg[14] ;
  output \reg_hex_reg[15]_1 ;
  output we;
  output \LEDOUT[1] ;
  output \LEDOUT[2] ;
  output \LEDOUT[0] ;
  output \LEDOUT[1]_0 ;
  output \LEDOUT[2]_0 ;
  output \LEDOUT[3] ;
  output \LEDOUT[4] ;
  output \LEDOUT[5] ;
  output \LEDOUT[6] ;
  output \LEDOUT[0]_0 ;
  output \LEDOUT[3]_0 ;
  output \LEDOUT[4]_0 ;
  output \LEDOUT[5]_0 ;
  output \LEDOUT[6]_0 ;
  output sink_bit_0;
  output [3:0]S;
  output [3:0]\reg_hex_reg[3]_1 ;
  output [29:0]p_0_in;
  output [3:0]\reg_hex_reg[7]_1 ;
  output [3:0]\reg_hex_reg[11]_1 ;
  output [3:0]\reg_hex_reg[15]_2 ;
  output [3:0]\reg_hex_reg[3]_2 ;
  output [3:0]\reg_hex_reg[7]_2 ;
  output [3:0]\reg_hex_reg[11]_2 ;
  output [3:0]\q_reg[16]_0 ;
  output [3:0]\q_reg[28]_0 ;
  output [3:0]\q_reg[24]_0 ;
  output [3:0]\q_reg[20]_0 ;
  output [3:0]\q_reg[8]_0 ;
  output [3:0]\q_reg[12]_0 ;
  output we_dm;
  input [1:0]switches_IBUF;
  input [31:0]rd10;
  input [0:0]CO;
  input [31:0]data2;
  input [30:0]y;
  input [31:0]rd20;
  input [31:0]Q;
  input [31:0]\q_reg[31]_1 ;
  input \q_reg[4]_0 ;
  input \q_reg[4]_1 ;
  input \q_reg[4]_2 ;
  input [31:0]\q_reg[4]_3 ;
  input [31:0]q;
  input [0:0]\index_reg[0] ;
  input clk_pb_BUFG;
  input [0:0]AR;

  wire [16:0]A;
  wire [4:0]ADDRD;
  wire [0:0]AR;
  wire [14:0]B;
  wire [0:0]CO;
  wire [31:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \LEDOUT[0] ;
  wire \LEDOUT[0]_0 ;
  wire \LEDOUT[1] ;
  wire \LEDOUT[1]_0 ;
  wire \LEDOUT[2] ;
  wire \LEDOUT[2]_0 ;
  wire \LEDOUT[3] ;
  wire \LEDOUT[3]_0 ;
  wire \LEDOUT[4] ;
  wire \LEDOUT[4]_0 ;
  wire \LEDOUT[5] ;
  wire \LEDOUT[5]_0 ;
  wire \LEDOUT[6] ;
  wire \LEDOUT[6]_0 ;
  wire [31:0]Q;
  wire [3:0]\^S ;
  wire [31:1]a;
  wire [0:0]alu_ctrl;
  wire [0:0]alu_ctrl__0;
  wire [31:0]alu_pa;
  wire [30:1]alu_pb;
  wire [31:31]alu_pb__0;
  wire clk_pb_BUFG;
  wire [31:0]data2;
  wire [6:0]digit4;
  wire [6:0]digit6;
  wire [0:0]\index_reg[0] ;
  wire [28:0]instr;
  wire n_0_92_BUFG_inst_n_1;
  wire [29:0]p_0_in;
  wire [31:0]pc_current;
  wire [31:0]q;
  wire \q[0]_i_1_n_1 ;
  wire \q[10]_i_1_n_1 ;
  wire \q[11]_i_1_n_1 ;
  wire \q[12]_i_1_n_1 ;
  wire \q[13]_i_1_n_1 ;
  wire \q[14]_i_1_n_1 ;
  wire \q[15]_i_1_n_1 ;
  wire \q[16]_i_1_n_1 ;
  wire \q[17]_i_1_n_1 ;
  wire \q[18]_i_1_n_1 ;
  wire \q[19]_i_1_n_1 ;
  wire \q[1]_i_1_n_1 ;
  wire \q[20]_i_1_n_1 ;
  wire \q[21]_i_1_n_1 ;
  wire \q[22]_i_1_n_1 ;
  wire \q[23]_i_1_n_1 ;
  wire \q[24]_i_1_n_1 ;
  wire \q[25]_i_1_n_1 ;
  wire \q[26]_i_1_n_1 ;
  wire \q[27]_i_1_n_1 ;
  wire \q[28]_i_1_n_1 ;
  wire \q[29]_i_1_n_1 ;
  wire \q[2]_i_1_n_1 ;
  wire \q[30]_i_1_n_1 ;
  wire \q[31]_i_1__0_n_1 ;
  wire \q[31]_i_2_n_1 ;
  wire \q[31]_i_3_n_1 ;
  wire \q[31]_i_4_n_1 ;
  wire \q[3]_i_1_n_1 ;
  wire \q[4]_i_1_n_1 ;
  wire \q[5]_i_1_n_1 ;
  wire \q[6]_i_1_n_1 ;
  wire \q[7]_i_1_n_1 ;
  wire \q[8]_i_1_n_1 ;
  wire \q[9]_i_1_n_1 ;
  wire [3:0]\q_reg[12]_0 ;
  wire [3:0]\q_reg[16]_0 ;
  wire [3:0]\q_reg[20]_0 ;
  wire [3:0]\q_reg[24]_0 ;
  wire [7:0]\q_reg[25]_0 ;
  wire [3:0]\q_reg[28]_0 ;
  wire [28:0]\q_reg[30]_0 ;
  wire [2:0]\q_reg[31]_0 ;
  wire [31:0]\q_reg[31]_1 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[4]_2 ;
  wire [31:0]\q_reg[4]_3 ;
  wire [3:0]\q_reg[8]_0 ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire \reg_hex_reg[0] ;
  wire [3:0]\reg_hex_reg[0]_0 ;
  wire [3:0]\reg_hex_reg[0]_1 ;
  wire [3:0]\reg_hex_reg[0]_2 ;
  wire [3:0]\reg_hex_reg[0]_3 ;
  wire [3:0]\reg_hex_reg[0]_4 ;
  wire [3:0]\reg_hex_reg[0]_5 ;
  wire [3:0]\reg_hex_reg[0]_6 ;
  wire \reg_hex_reg[0]_7 ;
  wire \reg_hex_reg[10] ;
  wire \reg_hex_reg[10]_0 ;
  wire \reg_hex_reg[11] ;
  wire \reg_hex_reg[11]_0 ;
  wire [3:0]\reg_hex_reg[11]_1 ;
  wire [3:0]\reg_hex_reg[11]_2 ;
  wire \reg_hex_reg[12] ;
  wire \reg_hex_reg[12]_0 ;
  wire \reg_hex_reg[13] ;
  wire \reg_hex_reg[13]_0 ;
  wire \reg_hex_reg[14] ;
  wire [3:0]\reg_hex_reg[15] ;
  wire \reg_hex_reg[15]_0 ;
  wire \reg_hex_reg[15]_1 ;
  wire [3:0]\reg_hex_reg[15]_2 ;
  wire \reg_hex_reg[1] ;
  wire \reg_hex_reg[1]_0 ;
  wire \reg_hex_reg[2] ;
  wire \reg_hex_reg[2]_0 ;
  wire \reg_hex_reg[3] ;
  wire \reg_hex_reg[3]_0 ;
  wire [3:0]\reg_hex_reg[3]_1 ;
  wire [3:0]\reg_hex_reg[3]_2 ;
  wire \reg_hex_reg[4] ;
  wire \reg_hex_reg[4]_0 ;
  wire \reg_hex_reg[5] ;
  wire \reg_hex_reg[5]_0 ;
  wire \reg_hex_reg[6] ;
  wire \reg_hex_reg[6]_0 ;
  wire \reg_hex_reg[7] ;
  wire \reg_hex_reg[7]_0 ;
  wire [3:0]\reg_hex_reg[7]_1 ;
  wire [3:0]\reg_hex_reg[7]_2 ;
  wire \reg_hex_reg[8] ;
  wire \reg_hex_reg[9] ;
  wire \reg_hex_reg[9]_0 ;
  wire rf_reg_r1_0_31_0_5_i_16_n_1;
  wire rf_reg_r1_0_31_0_5_i_17_n_1;
  wire rf_reg_r1_0_31_0_5_i_18_n_1;
  wire rf_reg_r1_0_31_0_5_i_19_n_1;
  wire rf_reg_r1_0_31_0_5_i_20_n_1;
  wire rf_reg_r1_0_31_0_5_i_21_n_1;
  wire rf_reg_r1_0_31_0_5_i_22_n_1;
  wire rf_reg_r1_0_31_0_5_i_23_n_1;
  wire rf_reg_r1_0_31_0_5_i_24_n_1;
  wire rf_reg_r1_0_31_12_17_i_10_n_1;
  wire rf_reg_r1_0_31_12_17_i_11_n_1;
  wire rf_reg_r1_0_31_12_17_i_12_n_1;
  wire rf_reg_r1_0_31_12_17_i_7_n_1;
  wire rf_reg_r1_0_31_12_17_i_8_n_1;
  wire rf_reg_r1_0_31_12_17_i_9_n_1;
  wire rf_reg_r1_0_31_18_23_i_10_n_1;
  wire rf_reg_r1_0_31_18_23_i_11_n_1;
  wire rf_reg_r1_0_31_18_23_i_12_n_1;
  wire rf_reg_r1_0_31_18_23_i_7_n_1;
  wire rf_reg_r1_0_31_18_23_i_8_n_1;
  wire rf_reg_r1_0_31_18_23_i_9_n_1;
  wire rf_reg_r1_0_31_24_29_i_10_n_1;
  wire rf_reg_r1_0_31_24_29_i_11_n_1;
  wire rf_reg_r1_0_31_24_29_i_12_n_1;
  wire rf_reg_r1_0_31_24_29_i_7_n_1;
  wire rf_reg_r1_0_31_24_29_i_8_n_1;
  wire rf_reg_r1_0_31_24_29_i_9_n_1;
  wire rf_reg_r1_0_31_30_31_i_3_n_1;
  wire rf_reg_r1_0_31_30_31_i_4_n_1;
  wire rf_reg_r1_0_31_6_11_i_10_n_1;
  wire rf_reg_r1_0_31_6_11_i_11_n_1;
  wire rf_reg_r1_0_31_6_11_i_12_n_1;
  wire rf_reg_r1_0_31_6_11_i_7_n_1;
  wire rf_reg_r1_0_31_6_11_i_8_n_1;
  wire rf_reg_r1_0_31_6_11_i_9_n_1;
  wire sink_bit;
  wire sink_bit_0;
  wire sink_bit_OBUF_inst_i_13_n_1;
  wire sink_bit_OBUF_inst_i_14_n_1;
  wire sink_bit_OBUF_inst_i_15_n_1;
  wire sink_bit_OBUF_inst_i_16_n_1;
  wire sink_bit_OBUF_inst_i_17_n_1;
  wire sink_bit_OBUF_inst_i_18_n_1;
  wire sink_bit_OBUF_inst_i_19_n_1;
  wire sink_bit_OBUF_inst_i_20_n_1;
  wire [1:0]switches_IBUF;
  wire [31:0]wd;
  wire we;
  wire we_dm;
  wire [30:0]y;
  wire y2_carry_i_9_n_1;
  wire y_carry__0_i_1_n_1;
  wire y_carry__0_i_1_n_2;
  wire y_carry__0_i_1_n_3;
  wire y_carry__0_i_1_n_4;
  wire y_carry__1_i_1_n_1;
  wire y_carry__1_i_1_n_2;
  wire y_carry__1_i_1_n_3;
  wire y_carry__1_i_1_n_4;
  wire y_carry__2_i_1_n_1;
  wire y_carry__2_i_1_n_2;
  wire y_carry__2_i_1_n_3;
  wire y_carry__2_i_1_n_4;
  wire y_carry__3_i_1_n_1;
  wire y_carry__3_i_1_n_2;
  wire y_carry__3_i_1_n_3;
  wire y_carry__3_i_1_n_4;
  wire y_carry__4_i_1_n_1;
  wire y_carry__4_i_1_n_2;
  wire y_carry__4_i_1_n_3;
  wire y_carry__4_i_1_n_4;
  wire y_carry__5_i_1_n_1;
  wire y_carry__5_i_1_n_2;
  wire y_carry__5_i_1_n_3;
  wire y_carry__5_i_1_n_4;
  wire y_carry__6_i_1_n_3;
  wire y_carry__6_i_1_n_4;
  wire y_carry_i_1_n_1;
  wire y_carry_i_1_n_2;
  wire y_carry_i_1_n_3;
  wire y_carry_i_1_n_4;
  wire y_carry_i_8_n_1;
  wire \y_reg[0]_i_2_n_1 ;
  wire \y_reg[31]_i_2_n_1 ;
  wire [3:2]NLW_y_carry__6_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_i_1_O_UNCONNECTED;

  assign S[3:1] = \^S [3:1];
  assign S[0] = a[1];
  LUT6 #(
    .INIT(64'h8092FFFF80920000)) 
    \LEDOUT_OBUF[0]_inst_i_2 
       (.I0(pc_current[12]),
        .I1(pc_current[13]),
        .I2(pc_current[14]),
        .I3(pc_current[15]),
        .I4(\index_reg[0] ),
        .I5(digit6[0]),
        .O(\LEDOUT[0] ));
  LUT6 #(
    .INIT(64'h8092FFFF80920000)) 
    \LEDOUT_OBUF[0]_inst_i_3 
       (.I0(pc_current[4]),
        .I1(pc_current[5]),
        .I2(pc_current[6]),
        .I3(pc_current[7]),
        .I4(\index_reg[0] ),
        .I5(digit4[0]),
        .O(\LEDOUT[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8092)) 
    \LEDOUT_OBUF[0]_inst_i_6 
       (.I0(pc_current[8]),
        .I1(pc_current[9]),
        .I2(pc_current[10]),
        .I3(pc_current[11]),
        .O(digit6[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8092)) 
    \LEDOUT_OBUF[0]_inst_i_7 
       (.I0(pc_current[0]),
        .I1(pc_current[1]),
        .I2(pc_current[2]),
        .I3(pc_current[3]),
        .O(digit4[0]));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \LEDOUT_OBUF[1]_inst_i_2 
       (.I0(pc_current[14]),
        .I1(pc_current[12]),
        .I2(pc_current[13]),
        .I3(pc_current[15]),
        .I4(\index_reg[0] ),
        .I5(digit6[1]),
        .O(\LEDOUT[1]_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \LEDOUT_OBUF[1]_inst_i_3 
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[5]),
        .I3(pc_current[7]),
        .I4(\index_reg[0] ),
        .I5(digit4[1]),
        .O(\LEDOUT[1] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \LEDOUT_OBUF[1]_inst_i_6 
       (.I0(pc_current[10]),
        .I1(pc_current[8]),
        .I2(pc_current[9]),
        .I3(pc_current[11]),
        .O(digit6[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \LEDOUT_OBUF[1]_inst_i_7 
       (.I0(pc_current[2]),
        .I1(pc_current[0]),
        .I2(pc_current[1]),
        .I3(pc_current[3]),
        .O(digit4[1]));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \LEDOUT_OBUF[2]_inst_i_2 
       (.I0(pc_current[15]),
        .I1(pc_current[12]),
        .I2(pc_current[14]),
        .I3(pc_current[13]),
        .I4(\index_reg[0] ),
        .I5(digit6[2]),
        .O(\LEDOUT[2]_0 ));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \LEDOUT_OBUF[2]_inst_i_3 
       (.I0(pc_current[7]),
        .I1(pc_current[4]),
        .I2(pc_current[6]),
        .I3(pc_current[5]),
        .I4(\index_reg[0] ),
        .I5(digit4[2]),
        .O(\LEDOUT[2] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \LEDOUT_OBUF[2]_inst_i_6 
       (.I0(pc_current[11]),
        .I1(pc_current[8]),
        .I2(pc_current[10]),
        .I3(pc_current[9]),
        .O(digit6[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \LEDOUT_OBUF[2]_inst_i_7 
       (.I0(pc_current[3]),
        .I1(pc_current[0]),
        .I2(pc_current[2]),
        .I3(pc_current[1]),
        .O(digit4[2]));
  LUT6 #(
    .INIT(64'h4101FFFF41010000)) 
    \LEDOUT_OBUF[3]_inst_i_2 
       (.I0(pc_current[15]),
        .I1(pc_current[14]),
        .I2(pc_current[13]),
        .I3(pc_current[12]),
        .I4(\index_reg[0] ),
        .I5(digit6[3]),
        .O(\LEDOUT[3] ));
  LUT6 #(
    .INIT(64'h4101FFFF41010000)) 
    \LEDOUT_OBUF[3]_inst_i_3 
       (.I0(pc_current[7]),
        .I1(pc_current[6]),
        .I2(pc_current[5]),
        .I3(pc_current[4]),
        .I4(\index_reg[0] ),
        .I5(digit4[3]),
        .O(\LEDOUT[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \LEDOUT_OBUF[3]_inst_i_6 
       (.I0(pc_current[11]),
        .I1(pc_current[10]),
        .I2(pc_current[9]),
        .I3(pc_current[8]),
        .O(digit6[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \LEDOUT_OBUF[3]_inst_i_7 
       (.I0(pc_current[3]),
        .I1(pc_current[2]),
        .I2(pc_current[1]),
        .I3(pc_current[0]),
        .O(digit4[3]));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \LEDOUT_OBUF[4]_inst_i_2 
       (.I0(pc_current[12]),
        .I1(pc_current[14]),
        .I2(pc_current[13]),
        .I3(pc_current[15]),
        .I4(\index_reg[0] ),
        .I5(digit6[4]),
        .O(\LEDOUT[4] ));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \LEDOUT_OBUF[4]_inst_i_3 
       (.I0(pc_current[4]),
        .I1(pc_current[6]),
        .I2(pc_current[5]),
        .I3(pc_current[7]),
        .I4(\index_reg[0] ),
        .I5(digit4[4]),
        .O(\LEDOUT[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \LEDOUT_OBUF[4]_inst_i_6 
       (.I0(pc_current[8]),
        .I1(pc_current[10]),
        .I2(pc_current[9]),
        .I3(pc_current[11]),
        .O(digit6[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \LEDOUT_OBUF[4]_inst_i_7 
       (.I0(pc_current[0]),
        .I1(pc_current[2]),
        .I2(pc_current[1]),
        .I3(pc_current[3]),
        .O(digit4[4]));
  LUT6 #(
    .INIT(64'h4A74FFFF4A740000)) 
    \LEDOUT_OBUF[5]_inst_i_2 
       (.I0(pc_current[15]),
        .I1(pc_current[12]),
        .I2(pc_current[13]),
        .I3(pc_current[14]),
        .I4(\index_reg[0] ),
        .I5(digit6[5]),
        .O(\LEDOUT[5] ));
  LUT6 #(
    .INIT(64'h4A74FFFF4A740000)) 
    \LEDOUT_OBUF[5]_inst_i_3 
       (.I0(pc_current[7]),
        .I1(pc_current[4]),
        .I2(pc_current[5]),
        .I3(pc_current[6]),
        .I4(\index_reg[0] ),
        .I5(digit4[5]),
        .O(\LEDOUT[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4A74)) 
    \LEDOUT_OBUF[5]_inst_i_6 
       (.I0(pc_current[11]),
        .I1(pc_current[8]),
        .I2(pc_current[9]),
        .I3(pc_current[10]),
        .O(digit6[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4A74)) 
    \LEDOUT_OBUF[5]_inst_i_7 
       (.I0(pc_current[3]),
        .I1(pc_current[0]),
        .I2(pc_current[1]),
        .I3(pc_current[2]),
        .O(digit4[5]));
  LUT6 #(
    .INIT(64'h08B4FFFF08B40000)) 
    \LEDOUT_OBUF[6]_inst_i_2 
       (.I0(pc_current[15]),
        .I1(pc_current[12]),
        .I2(pc_current[14]),
        .I3(pc_current[13]),
        .I4(\index_reg[0] ),
        .I5(digit6[6]),
        .O(\LEDOUT[6] ));
  LUT6 #(
    .INIT(64'h08B4FFFF08B40000)) 
    \LEDOUT_OBUF[6]_inst_i_3 
       (.I0(pc_current[7]),
        .I1(pc_current[4]),
        .I2(pc_current[6]),
        .I3(pc_current[5]),
        .I4(\index_reg[0] ),
        .I5(digit4[6]),
        .O(\LEDOUT[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08B4)) 
    \LEDOUT_OBUF[6]_inst_i_6 
       (.I0(pc_current[11]),
        .I1(pc_current[8]),
        .I2(pc_current[10]),
        .I3(pc_current[9]),
        .O(digit6[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08B4)) 
    \LEDOUT_OBUF[6]_inst_i_7 
       (.I0(pc_current[3]),
        .I1(pc_current[0]),
        .I2(pc_current[2]),
        .I3(pc_current[1]),
        .O(digit4[6]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__0_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[7]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__0_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[6]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__0_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[5]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__0_i_4
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[4]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__0_i_5
       (.I0(alu_pb[7]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[7]),
        .O(\reg_hex_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__0_i_6
       (.I0(alu_pb[6]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[6]),
        .O(\reg_hex_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__0_i_7
       (.I0(alu_pb[5]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[5]),
        .O(\reg_hex_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__0_i_8
       (.I0(alu_pb[4]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[4]),
        .O(\reg_hex_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__1_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[11]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__1_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[10]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__1_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[9]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__1_i_4
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[8]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__1_i_5
       (.I0(alu_pb[11]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[11]),
        .O(\reg_hex_reg[11]_1 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__1_i_6
       (.I0(alu_pb[10]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[10]),
        .O(\reg_hex_reg[11]_1 [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__1_i_7
       (.I0(alu_pb[9]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[9]),
        .O(\reg_hex_reg[11]_1 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__1_i_8
       (.I0(alu_pb[8]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[8]),
        .O(\reg_hex_reg[11]_1 [0]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__2_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[15]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'h00C0821820CC0014)) 
    _inferred__0_carry__2_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[14]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__2_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[13]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'h08408218284C0014)) 
    _inferred__0_carry__2_i_4
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[12]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__2_i_5
       (.I0(alu_pb[15]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[15]),
        .O(\reg_hex_reg[15]_2 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__2_i_6
       (.I0(alu_pb[14]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[14]),
        .O(\reg_hex_reg[15]_2 [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__2_i_7
       (.I0(alu_pb[13]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[13]),
        .O(\reg_hex_reg[15]_2 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__2_i_8
       (.I0(alu_pb[12]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[12]),
        .O(\reg_hex_reg[15]_2 [0]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__3_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[19]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__3_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[18]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__3_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[17]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__3_i_4
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[16]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__3_i_5
       (.I0(alu_pb[19]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[19]),
        .O(\reg_hex_reg[3]_2 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__3_i_6
       (.I0(alu_pb[18]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[18]),
        .O(\reg_hex_reg[3]_2 [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__3_i_7
       (.I0(alu_pb[17]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[17]),
        .O(\reg_hex_reg[3]_2 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__3_i_8
       (.I0(alu_pb[16]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[16]),
        .O(\reg_hex_reg[3]_2 [0]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__4_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[23]),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__4_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[22]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__4_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[21]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__4_i_4
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[20]),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__4_i_5
       (.I0(alu_pb[23]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[23]),
        .O(\reg_hex_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__4_i_6
       (.I0(alu_pb[22]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[22]),
        .O(\reg_hex_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__4_i_7
       (.I0(alu_pb[21]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[21]),
        .O(\reg_hex_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__4_i_8
       (.I0(alu_pb[20]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[20]),
        .O(\reg_hex_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__5_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[27]),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__5_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[26]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__5_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[25]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__5_i_4
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[24]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__5_i_5
       (.I0(alu_pb[27]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[27]),
        .O(\reg_hex_reg[11]_2 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__5_i_6
       (.I0(alu_pb[26]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[26]),
        .O(\reg_hex_reg[11]_2 [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__5_i_7
       (.I0(alu_pb[25]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[25]),
        .O(\reg_hex_reg[11]_2 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__5_i_8
       (.I0(alu_pb[24]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[24]),
        .O(\reg_hex_reg[11]_2 [0]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__6_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[30]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__6_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[29]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'h00408218204C0014)) 
    _inferred__0_carry__6_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[28]),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__6_i_4
       (.I0(alu_pb__0),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[31]),
        .O(\reg_hex_reg[15] [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__6_i_5
       (.I0(alu_pb[30]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[30]),
        .O(\reg_hex_reg[15] [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__6_i_6
       (.I0(alu_pb[29]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[29]),
        .O(\reg_hex_reg[15] [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry__6_i_7
       (.I0(alu_pb[28]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[28]),
        .O(\reg_hex_reg[15] [0]));
  LUT6 #(
    .INIT(64'h0CE2AA182CEE2814)) 
    _inferred__0_carry_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[3]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0050820B205C0007)) 
    _inferred__0_carry_i_2
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[2]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h10C0820830CC0004)) 
    _inferred__0_carry_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(rd20[1]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h08400050)) 
    _inferred__0_carry_i_4
       (.I0(pc_current[4]),
        .I1(pc_current[2]),
        .I2(pc_current[5]),
        .I3(pc_current[3]),
        .I4(pc_current[6]),
        .O(alu_ctrl));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry_i_5
       (.I0(alu_pb[3]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[3]),
        .O(\reg_hex_reg[3]_1 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry_i_6
       (.I0(alu_pb[2]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[2]),
        .O(\reg_hex_reg[3]_1 [2]));
  LUT4 #(
    .INIT(16'h6966)) 
    _inferred__0_carry_i_7
       (.I0(alu_pb[1]),
        .I1(alu_ctrl),
        .I2(\q[31]_i_2_n_1 ),
        .I3(rd10[1]),
        .O(\reg_hex_reg[3]_1 [1]));
  LUT6 #(
    .INIT(64'h2C3A80200C3A0000)) 
    _inferred__0_carry_i_8
       (.I0(rd20[0]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(\reg_hex_reg[3]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    n_0_92_BUFG_inst_i_1
       (.I0(pc_current[6]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[5]),
        .I4(pc_current[4]),
        .O(n_0_92_BUFG_inst_n_1));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \q[0]_i_1 
       (.I0(rd10[0]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q[31]_i_4_n_1 ),
        .I3(pc_current[0]),
        .I4(\q[31]_i_3_n_1 ),
        .O(\q[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[10]_i_1 
       (.I0(rd10[10]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[9]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[10]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[11]_i_1 
       (.I0(rd10[11]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[10]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[11]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[12]_i_1 
       (.I0(rd10[12]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[11]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[12]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[13]_i_1 
       (.I0(rd10[13]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[12]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[13]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[14]_i_1 
       (.I0(rd10[14]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[12]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[13]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[14]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00C00900)) 
    \q[14]_i_2 
       (.I0(pc_current[5]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[6]),
        .O(instr[12]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[15]_i_1 
       (.I0(rd10[15]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[14]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[15]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04000004)) 
    \q[15]_i_2 
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[3]),
        .I3(pc_current[5]),
        .I4(pc_current[2]),
        .O(instr[7]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[16]_i_1 
       (.I0(rd10[16]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [0]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[15]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[16]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00008094)) 
    \q[16]_i_2 
       (.I0(pc_current[2]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[6]),
        .I4(pc_current[3]),
        .O(\q_reg[25]_0 [0]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[17]_i_1 
       (.I0(rd10[17]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[15]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[16]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[17]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00002014)) 
    \q[17]_i_2 
       (.I0(pc_current[5]),
        .I1(pc_current[3]),
        .I2(pc_current[4]),
        .I3(pc_current[2]),
        .I4(pc_current[6]),
        .O(instr[15]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[18]_i_1 
       (.I0(rd10[18]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [4]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[17]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[18]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[19]_i_1 
       (.I0(rd10[19]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [1]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[18]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[19]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \q[1]_i_1 
       (.I0(rd10[1]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q[31]_i_4_n_1 ),
        .I3(y[0]),
        .I4(\q[31]_i_3_n_1 ),
        .O(\q[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[20]_i_1 
       (.I0(rd10[20]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [2]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[19]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[20]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[21]_i_1 
       (.I0(rd10[21]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [3]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[20]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[21]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[22]_i_1 
       (.I0(rd10[22]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [4]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[21]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[22]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[23]_i_1 
       (.I0(rd10[23]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [5]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[22]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[23]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[24]_i_1 
       (.I0(rd10[24]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [6]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[23]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[24]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[25]_i_1 
       (.I0(rd10[25]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[24]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[25]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[26]_i_1 
       (.I0(rd10[26]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [5]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[25]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[26]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[27]_i_1 
       (.I0(rd10[27]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[25]_0 [5]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[26]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[27]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[28]_i_1 
       (.I0(rd10[28]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[30]_0 [26]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[27]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[28]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[29]_i_1 
       (.I0(rd10[29]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[30]_0 [27]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[28]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[29]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[2]_i_1 
       (.I0(rd10[2]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[0]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[1]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00A056A0)) 
    \q[2]_i_2 
       (.I0(pc_current[2]),
        .I1(pc_current[6]),
        .I2(pc_current[5]),
        .I3(pc_current[3]),
        .I4(pc_current[4]),
        .O(instr[0]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[30]_i_1 
       (.I0(rd10[30]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(\q_reg[30]_0 [28]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[29]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[30]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \q[31]_i_1 
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(E));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[31]_i_1__0 
       (.I0(rd10[31]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(a[31]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[30]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[31]_i_1__0_n_1 ));
  LUT5 #(
    .INIT(32'h5522AA03)) 
    \q[31]_i_2 
       (.I0(pc_current[2]),
        .I1(pc_current[4]),
        .I2(pc_current[6]),
        .I3(pc_current[3]),
        .I4(pc_current[5]),
        .O(\q[31]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00058820)) 
    \q[31]_i_3 
       (.I0(pc_current[5]),
        .I1(pc_current[3]),
        .I2(pc_current[6]),
        .I3(pc_current[4]),
        .I4(pc_current[2]),
        .O(\q[31]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'h200A0008)) 
    \q[31]_i_4 
       (.I0(pc_current[4]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[2]),
        .I4(pc_current[6]),
        .O(\q[31]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[3]_i_1 
       (.I0(rd10[3]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[1]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[2]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h3C003830)) 
    \q[3]_i_2 
       (.I0(pc_current[6]),
        .I1(pc_current[3]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[4]),
        .O(instr[1]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[4]_i_1 
       (.I0(rd10[4]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[2]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[3]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[4]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30044407)) 
    \q[4]_i_2 
       (.I0(pc_current[6]),
        .I1(pc_current[2]),
        .I2(pc_current[5]),
        .I3(pc_current[4]),
        .I4(pc_current[3]),
        .O(instr[2]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[5]_i_1 
       (.I0(rd10[5]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[3]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[4]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0CAAEAFC)) 
    \q[5]_i_2 
       (.I0(pc_current[6]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(instr[3]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[6]_i_1 
       (.I0(rd10[6]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[4]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[5]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h04002224)) 
    \q[6]_i_2 
       (.I0(pc_current[3]),
        .I1(pc_current[4]),
        .I2(pc_current[6]),
        .I3(pc_current[2]),
        .I4(pc_current[5]),
        .O(instr[4]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[7]_i_1 
       (.I0(rd10[7]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[5]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[6]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[7]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000816)) 
    \q[7]_i_2 
       (.I0(pc_current[5]),
        .I1(pc_current[4]),
        .I2(pc_current[3]),
        .I3(pc_current[2]),
        .I4(pc_current[6]),
        .O(instr[5]));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[8]_i_1 
       (.I0(rd10[8]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[7]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[8]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h22222222F0FFF000)) 
    \q[9]_i_1 
       (.I0(rd10[9]),
        .I1(\q[31]_i_2_n_1 ),
        .I2(instr[7]),
        .I3(\q[31]_i_3_n_1 ),
        .I4(y[8]),
        .I5(\q[31]_i_4_n_1 ),
        .O(\q[9]_i_1_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[0]_i_1_n_1 ),
        .Q(pc_current[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[10]_i_1_n_1 ),
        .Q(pc_current[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[11]_i_1_n_1 ),
        .Q(pc_current[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[12]_i_1_n_1 ),
        .Q(pc_current[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[13]_i_1_n_1 ),
        .Q(pc_current[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[14]_i_1_n_1 ),
        .Q(pc_current[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[15]_i_1_n_1 ),
        .Q(pc_current[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[16]_i_1_n_1 ),
        .Q(pc_current[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[17]_i_1_n_1 ),
        .Q(pc_current[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[18]_i_1_n_1 ),
        .Q(pc_current[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[19]_i_1_n_1 ),
        .Q(pc_current[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[1]_i_1_n_1 ),
        .Q(pc_current[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[20]_i_1_n_1 ),
        .Q(pc_current[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[21]_i_1_n_1 ),
        .Q(pc_current[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[22]_i_1_n_1 ),
        .Q(pc_current[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[23]_i_1_n_1 ),
        .Q(pc_current[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[24]_i_1_n_1 ),
        .Q(pc_current[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[25]_i_1_n_1 ),
        .Q(pc_current[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[26]_i_1_n_1 ),
        .Q(pc_current[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[27]_i_1_n_1 ),
        .Q(pc_current[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[28]_i_1_n_1 ),
        .Q(pc_current[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[29]_i_1_n_1 ),
        .Q(pc_current[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[2]_i_1_n_1 ),
        .Q(pc_current[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[30]_i_1_n_1 ),
        .Q(pc_current[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[31]_i_1__0_n_1 ),
        .Q(pc_current[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[3]_i_1_n_1 ),
        .Q(pc_current[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[4]_i_1_n_1 ),
        .Q(pc_current[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[5]_i_1_n_1 ),
        .Q(pc_current[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[6]_i_1_n_1 ),
        .Q(pc_current[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[7]_i_1_n_1 ),
        .Q(pc_current[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[8]_i_1_n_1 ),
        .Q(pc_current[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_pb_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\q[9]_i_1_n_1 ),
        .Q(pc_current[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[0]_i_3 
       (.I0(A[16]),
        .I1(A[0]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [16]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [0]),
        .O(\reg_hex_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h8802C4829914C480)) 
    \reg_hex[0]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[2]),
        .I2(pc_current[6]),
        .I3(pc_current[5]),
        .I4(pc_current[3]),
        .I5(pc_current[4]),
        .O(\reg_hex_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[10]_i_3 
       (.I0(B[9]),
        .I1(A[10]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [26]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [10]),
        .O(\reg_hex_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hA0100022A000A018)) 
    \reg_hex[10]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[5]),
        .I5(pc_current[2]),
        .O(\reg_hex_reg[10] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[11]_i_3 
       (.I0(B[10]),
        .I1(A[11]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [27]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [11]),
        .O(\reg_hex_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hA0100222A008A018)) 
    \reg_hex[11]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[5]),
        .I5(pc_current[2]),
        .O(\reg_hex_reg[11] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[12]_i_3 
       (.I0(B[11]),
        .I1(A[12]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [28]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [12]),
        .O(\reg_hex_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h0000508000410080)) 
    \reg_hex[12]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[5]),
        .I2(pc_current[2]),
        .I3(pc_current[3]),
        .I4(pc_current[4]),
        .I5(pc_current[6]),
        .O(\reg_hex_reg[12] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[13]_i_3 
       (.I0(B[12]),
        .I1(A[13]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [29]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [13]),
        .O(\reg_hex_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h0AB020A80A002032)) 
    \reg_hex[13]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[5]),
        .I5(pc_current[2]),
        .O(\reg_hex_reg[13] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[14]_i_3 
       (.I0(B[13]),
        .I1(A[14]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [30]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [14]),
        .O(\reg_hex_reg[14] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[15]_i_3 
       (.I0(B[14]),
        .I1(A[15]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [31]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [15]),
        .O(\reg_hex_reg[15]_1 ));
  LUT6 #(
    .INIT(64'h8200200286002110)) 
    \reg_hex[15]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[2]),
        .I5(pc_current[6]),
        .O(\reg_hex_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[1]_i_3 
       (.I0(B[0]),
        .I1(A[1]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [17]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [1]),
        .O(\reg_hex_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hA55080A00540A580)) 
    \reg_hex[1]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[3]),
        .I3(pc_current[5]),
        .I4(pc_current[2]),
        .I5(pc_current[4]),
        .O(\reg_hex_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[2]_i_3 
       (.I0(B[1]),
        .I1(A[2]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [18]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [2]),
        .O(\reg_hex_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA502A0103032009F)) 
    \reg_hex[2]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[2]),
        .I3(pc_current[5]),
        .I4(pc_current[4]),
        .I5(pc_current[3]),
        .O(\reg_hex_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[3]_i_3 
       (.I0(B[2]),
        .I1(A[3]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [19]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [3]),
        .O(\reg_hex_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAF04644DCEC57F0)) 
    \reg_hex[3]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[5]),
        .I3(pc_current[4]),
        .I4(pc_current[2]),
        .I5(pc_current[3]),
        .O(\reg_hex_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[4]_i_3 
       (.I0(B[3]),
        .I1(A[4]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [20]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [4]),
        .O(\reg_hex_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAA980000260404B0)) 
    \reg_hex[4]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[3]),
        .I2(pc_current[4]),
        .I3(pc_current[6]),
        .I4(pc_current[2]),
        .I5(pc_current[5]),
        .O(\reg_hex_reg[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[5]_i_3 
       (.I0(B[4]),
        .I1(A[5]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [21]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [5]),
        .O(\reg_hex_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h882220AA886021B4)) 
    \reg_hex[5]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[5]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[2]),
        .I5(pc_current[6]),
        .O(\reg_hex_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[6]_i_3 
       (.I0(B[5]),
        .I1(A[6]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [22]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [6]),
        .O(\reg_hex_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0010000000A00290)) 
    \reg_hex[6]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[5]),
        .I5(pc_current[2]),
        .O(\reg_hex_reg[6] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[7]_i_3 
       (.I0(B[6]),
        .I1(A[7]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [23]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [7]),
        .O(\reg_hex_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAAB000A800AAA8B8)) 
    \reg_hex[7]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[5]),
        .I5(pc_current[2]),
        .O(\reg_hex_reg[7] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[8]_i_3 
       (.I0(B[7]),
        .I1(A[8]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [24]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [8]),
        .O(\reg_hex_reg[8] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \reg_hex[9]_i_3 
       (.I0(B[8]),
        .I1(A[9]),
        .I2(switches_IBUF[1]),
        .I3(\q_reg[4]_3 [25]),
        .I4(switches_IBUF[0]),
        .I5(\q_reg[4]_3 [9]),
        .O(\reg_hex_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAA1000A800A8A0B8)) 
    \reg_hex[9]_i_4 
       (.I0(switches_IBUF[0]),
        .I1(pc_current[6]),
        .I2(pc_current[4]),
        .I3(pc_current[3]),
        .I4(pc_current[5]),
        .I5(pc_current[2]),
        .O(\reg_hex_reg[9] ));
  LUT5 #(
    .INIT(32'hFEB9FDBF)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(pc_current[3]),
        .I1(pc_current[5]),
        .I2(pc_current[6]),
        .I3(pc_current[4]),
        .I4(pc_current[2]),
        .O(we));
  LUT5 #(
    .INIT(32'h00003204)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(pc_current[5]),
        .I1(pc_current[3]),
        .I2(pc_current[6]),
        .I3(pc_current[4]),
        .I4(pc_current[2]),
        .O(\q_reg[25]_0 [6]));
  LUT5 #(
    .INIT(32'hF0C5AB04)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(ADDRD[4]));
  LUT5 #(
    .INIT(32'hF4C4BB34)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(ADDRD[3]));
  LUT5 #(
    .INIT(32'hF0C44707)) 
    rf_reg_r1_0_31_0_5_i_13
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(ADDRD[2]));
  LUT5 #(
    .INIT(32'hC2FC0100)) 
    rf_reg_r1_0_31_0_5_i_14
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(ADDRD[1]));
  LUT5 #(
    .INIT(32'hF0C4AB04)) 
    rf_reg_r1_0_31_0_5_i_15
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(ADDRD[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_16
       (.I0(q[1]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [1]),
        .O(rf_reg_r1_0_31_0_5_i_16_n_1));
  LUT4 #(
    .INIT(16'h4000)) 
    rf_reg_r1_0_31_0_5_i_17
       (.I0(pc_current[5]),
        .I1(pc_current[3]),
        .I2(pc_current[2]),
        .I3(pc_current[6]),
        .O(rf_reg_r1_0_31_0_5_i_17_n_1));
  LUT5 #(
    .INIT(32'hDDBFFFFB)) 
    rf_reg_r1_0_31_0_5_i_18
       (.I0(pc_current[5]),
        .I1(pc_current[2]),
        .I2(pc_current[6]),
        .I3(pc_current[4]),
        .I4(pc_current[3]),
        .O(rf_reg_r1_0_31_0_5_i_18_n_1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_19
       (.I0(q[0]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [0]),
        .O(rf_reg_r1_0_31_0_5_i_19_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(Q[1]),
        .I1(rf_reg_r1_0_31_0_5_i_16_n_1),
        .I2(\q_reg[31]_1 [1]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(a[1]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_20
       (.I0(q[3]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [3]),
        .O(rf_reg_r1_0_31_0_5_i_20_n_1));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_21
       (.I0(q[2]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [2]),
        .O(rf_reg_r1_0_31_0_5_i_21_n_1));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_22
       (.I0(q[5]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [5]),
        .O(rf_reg_r1_0_31_0_5_i_22_n_1));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_23
       (.I0(q[4]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [4]),
        .O(rf_reg_r1_0_31_0_5_i_23_n_1));
  LUT5 #(
    .INIT(32'h90800100)) 
    rf_reg_r1_0_31_0_5_i_24
       (.I0(pc_current[5]),
        .I1(pc_current[2]),
        .I2(pc_current[4]),
        .I3(pc_current[6]),
        .I4(pc_current[3]),
        .O(rf_reg_r1_0_31_0_5_i_24_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(Q[0]),
        .I1(rf_reg_r1_0_31_0_5_i_19_n_1),
        .I2(\q_reg[31]_1 [0]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(pc_current[0]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(Q[3]),
        .I1(rf_reg_r1_0_31_0_5_i_20_n_1),
        .I2(\q_reg[31]_1 [3]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [1]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(Q[2]),
        .I1(rf_reg_r1_0_31_0_5_i_21_n_1),
        .I2(\q_reg[31]_1 [2]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [0]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[2]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(Q[5]),
        .I1(rf_reg_r1_0_31_0_5_i_22_n_1),
        .I2(\q_reg[31]_1 [5]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [3]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[5]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(Q[4]),
        .I1(rf_reg_r1_0_31_0_5_i_23_n_1),
        .I2(\q_reg[31]_1 [4]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [2]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[4]));
  LUT5 #(
    .INIT(32'h99887770)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(pc_current[5]),
        .I1(pc_current[2]),
        .I2(pc_current[6]),
        .I3(pc_current[4]),
        .I4(pc_current[3]),
        .O(\q_reg[25]_0 [5]));
  LUT5 #(
    .INIT(32'hF00ECFEE)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(pc_current[6]),
        .I1(pc_current[4]),
        .I2(pc_current[2]),
        .I3(pc_current[5]),
        .I4(pc_current[3]),
        .O(\q_reg[25]_0 [7]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(Q[13]),
        .I1(rf_reg_r1_0_31_12_17_i_7_n_1),
        .I2(\q_reg[31]_1 [13]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [11]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_10
       (.I0(q[14]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [14]),
        .O(rf_reg_r1_0_31_12_17_i_10_n_1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_11
       (.I0(q[17]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [17]),
        .O(rf_reg_r1_0_31_12_17_i_11_n_1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_12
       (.I0(q[16]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [16]),
        .O(rf_reg_r1_0_31_12_17_i_12_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(Q[12]),
        .I1(rf_reg_r1_0_31_12_17_i_8_n_1),
        .I2(\q_reg[31]_1 [12]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [10]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[12]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(Q[15]),
        .I1(rf_reg_r1_0_31_12_17_i_9_n_1),
        .I2(\q_reg[31]_1 [15]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [13]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[15]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(Q[14]),
        .I1(rf_reg_r1_0_31_12_17_i_10_n_1),
        .I2(\q_reg[31]_1 [14]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [12]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[14]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(Q[17]),
        .I1(rf_reg_r1_0_31_12_17_i_11_n_1),
        .I2(\q_reg[31]_1 [17]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [15]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[17]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(Q[16]),
        .I1(rf_reg_r1_0_31_12_17_i_12_n_1),
        .I2(\q_reg[31]_1 [16]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [14]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_7
       (.I0(q[13]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [13]),
        .O(rf_reg_r1_0_31_12_17_i_7_n_1));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_8
       (.I0(q[12]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [12]),
        .O(rf_reg_r1_0_31_12_17_i_8_n_1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_9
       (.I0(q[15]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [15]),
        .O(rf_reg_r1_0_31_12_17_i_9_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(Q[19]),
        .I1(rf_reg_r1_0_31_18_23_i_7_n_1),
        .I2(\q_reg[31]_1 [19]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [17]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[19]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_10
       (.I0(q[20]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [20]),
        .O(rf_reg_r1_0_31_18_23_i_10_n_1));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_11
       (.I0(q[23]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [23]),
        .O(rf_reg_r1_0_31_18_23_i_11_n_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_12
       (.I0(q[22]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [22]),
        .O(rf_reg_r1_0_31_18_23_i_12_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(Q[18]),
        .I1(rf_reg_r1_0_31_18_23_i_8_n_1),
        .I2(\q_reg[31]_1 [18]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [16]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[18]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(Q[21]),
        .I1(rf_reg_r1_0_31_18_23_i_9_n_1),
        .I2(\q_reg[31]_1 [21]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [19]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[21]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(Q[20]),
        .I1(rf_reg_r1_0_31_18_23_i_10_n_1),
        .I2(\q_reg[31]_1 [20]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [18]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[20]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(Q[23]),
        .I1(rf_reg_r1_0_31_18_23_i_11_n_1),
        .I2(\q_reg[31]_1 [23]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [21]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[23]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(Q[22]),
        .I1(rf_reg_r1_0_31_18_23_i_12_n_1),
        .I2(\q_reg[31]_1 [22]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [20]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[22]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_7
       (.I0(q[19]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [19]),
        .O(rf_reg_r1_0_31_18_23_i_7_n_1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_8
       (.I0(q[18]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [18]),
        .O(rf_reg_r1_0_31_18_23_i_8_n_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_9
       (.I0(q[21]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [21]),
        .O(rf_reg_r1_0_31_18_23_i_9_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(Q[25]),
        .I1(rf_reg_r1_0_31_24_29_i_7_n_1),
        .I2(\q_reg[31]_1 [25]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [23]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_10
       (.I0(q[26]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [26]),
        .O(rf_reg_r1_0_31_24_29_i_10_n_1));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_11
       (.I0(q[29]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [29]),
        .O(rf_reg_r1_0_31_24_29_i_11_n_1));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_12
       (.I0(q[28]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [28]),
        .O(rf_reg_r1_0_31_24_29_i_12_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(Q[24]),
        .I1(rf_reg_r1_0_31_24_29_i_8_n_1),
        .I2(\q_reg[31]_1 [24]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [22]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[24]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(Q[27]),
        .I1(rf_reg_r1_0_31_24_29_i_9_n_1),
        .I2(\q_reg[31]_1 [27]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [25]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[27]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(Q[26]),
        .I1(rf_reg_r1_0_31_24_29_i_10_n_1),
        .I2(\q_reg[31]_1 [26]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [24]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[26]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(Q[29]),
        .I1(rf_reg_r1_0_31_24_29_i_11_n_1),
        .I2(\q_reg[31]_1 [29]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [27]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[29]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(Q[28]),
        .I1(rf_reg_r1_0_31_24_29_i_12_n_1),
        .I2(\q_reg[31]_1 [28]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [26]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[28]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_7
       (.I0(q[25]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [25]),
        .O(rf_reg_r1_0_31_24_29_i_7_n_1));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_8
       (.I0(q[24]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [24]),
        .O(rf_reg_r1_0_31_24_29_i_8_n_1));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_9
       (.I0(q[27]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [27]),
        .O(rf_reg_r1_0_31_24_29_i_9_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(Q[31]),
        .I1(rf_reg_r1_0_31_30_31_i_3_n_1),
        .I2(\q_reg[31]_1 [31]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(a[31]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[31]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(Q[30]),
        .I1(rf_reg_r1_0_31_30_31_i_4_n_1),
        .I2(\q_reg[31]_1 [30]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [28]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[30]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_30_31_i_3
       (.I0(q[31]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [31]),
        .O(rf_reg_r1_0_31_30_31_i_3_n_1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_30_31_i_4
       (.I0(q[30]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [30]),
        .O(rf_reg_r1_0_31_30_31_i_4_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(Q[7]),
        .I1(rf_reg_r1_0_31_6_11_i_7_n_1),
        .I2(\q_reg[31]_1 [7]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [5]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_10
       (.I0(q[8]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [8]),
        .O(rf_reg_r1_0_31_6_11_i_10_n_1));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_11
       (.I0(q[11]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [11]),
        .O(rf_reg_r1_0_31_6_11_i_11_n_1));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_12
       (.I0(q[10]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [10]),
        .O(rf_reg_r1_0_31_6_11_i_12_n_1));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(Q[6]),
        .I1(rf_reg_r1_0_31_6_11_i_8_n_1),
        .I2(\q_reg[31]_1 [6]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [4]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[6]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(Q[9]),
        .I1(rf_reg_r1_0_31_6_11_i_9_n_1),
        .I2(\q_reg[31]_1 [9]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [7]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[9]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(Q[8]),
        .I1(rf_reg_r1_0_31_6_11_i_10_n_1),
        .I2(\q_reg[31]_1 [8]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [6]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[8]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(Q[11]),
        .I1(rf_reg_r1_0_31_6_11_i_11_n_1),
        .I2(\q_reg[31]_1 [11]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [9]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[11]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(Q[10]),
        .I1(rf_reg_r1_0_31_6_11_i_12_n_1),
        .I2(\q_reg[31]_1 [10]),
        .I3(rf_reg_r1_0_31_0_5_i_17_n_1),
        .I4(\q_reg[30]_0 [8]),
        .I5(rf_reg_r1_0_31_0_5_i_18_n_1),
        .O(wd[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_7
       (.I0(q[7]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [7]),
        .O(rf_reg_r1_0_31_6_11_i_7_n_1));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_8
       (.I0(q[6]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [6]),
        .O(rf_reg_r1_0_31_6_11_i_8_n_1));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_9
       (.I0(q[9]),
        .I1(rf_reg_r1_0_31_0_5_i_24_n_1),
        .I2(\q_reg[4]_3 [9]),
        .O(rf_reg_r1_0_31_6_11_i_9_n_1));
  LUT5 #(
    .INIT(32'hCC884430)) 
    rf_reg_r2_0_31_0_5_i_1
       (.I0(pc_current[3]),
        .I1(pc_current[2]),
        .I2(pc_current[4]),
        .I3(pc_current[6]),
        .I4(pc_current[5]),
        .O(\q_reg[25]_0 [4]));
  LUT5 #(
    .INIT(32'hFA02DC52)) 
    rf_reg_r2_0_31_0_5_i_2
       (.I0(pc_current[4]),
        .I1(pc_current[6]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[3]),
        .O(\q_reg[25]_0 [3]));
  LUT5 #(
    .INIT(32'hCC10405B)) 
    rf_reg_r2_0_31_0_5_i_3
       (.I0(pc_current[6]),
        .I1(pc_current[2]),
        .I2(pc_current[4]),
        .I3(pc_current[5]),
        .I4(pc_current[3]),
        .O(\q_reg[25]_0 [2]));
  LUT5 #(
    .INIT(32'hC4448440)) 
    rf_reg_r2_0_31_0_5_i_4
       (.I0(pc_current[2]),
        .I1(pc_current[3]),
        .I2(pc_current[4]),
        .I3(pc_current[5]),
        .I4(pc_current[6]),
        .O(\q_reg[25]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sink_bit_OBUF_inst_i_13
       (.I0(pc_current[9]),
        .I1(pc_current[8]),
        .I2(pc_current[11]),
        .I3(pc_current[10]),
        .O(sink_bit_OBUF_inst_i_13_n_1));
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_14
       (.I0(pc_current[15]),
        .I1(pc_current[14]),
        .I2(pc_current[13]),
        .I3(pc_current[12]),
        .O(sink_bit_OBUF_inst_i_14_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    sink_bit_OBUF_inst_i_15
       (.I0(pc_current[5]),
        .I1(pc_current[4]),
        .O(sink_bit_OBUF_inst_i_15_n_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_16
       (.I0(pc_current[3]),
        .I1(pc_current[2]),
        .I2(pc_current[1]),
        .I3(pc_current[0]),
        .O(sink_bit_OBUF_inst_i_16_n_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sink_bit_OBUF_inst_i_17
       (.I0(pc_current[25]),
        .I1(pc_current[24]),
        .I2(pc_current[27]),
        .I3(pc_current[26]),
        .O(sink_bit_OBUF_inst_i_17_n_1));
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_18
       (.I0(pc_current[30]),
        .I1(pc_current[31]),
        .I2(pc_current[29]),
        .I3(pc_current[28]),
        .O(sink_bit_OBUF_inst_i_18_n_1));
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_19
       (.I0(pc_current[23]),
        .I1(pc_current[22]),
        .I2(pc_current[21]),
        .I3(pc_current[20]),
        .O(sink_bit_OBUF_inst_i_19_n_1));
  LUT4 #(
    .INIT(16'h0001)) 
    sink_bit_OBUF_inst_i_20
       (.I0(pc_current[19]),
        .I1(pc_current[18]),
        .I2(pc_current[17]),
        .I3(pc_current[16]),
        .O(sink_bit_OBUF_inst_i_20_n_1));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    sink_bit_OBUF_inst_i_5
       (.I0(sink_bit_OBUF_inst_i_13_n_1),
        .I1(sink_bit_OBUF_inst_i_14_n_1),
        .I2(pc_current[7]),
        .I3(pc_current[6]),
        .I4(sink_bit_OBUF_inst_i_15_n_1),
        .I5(sink_bit_OBUF_inst_i_16_n_1),
        .O(sink_bit));
  LUT4 #(
    .INIT(16'h4000)) 
    sink_bit_OBUF_inst_i_6
       (.I0(sink_bit_OBUF_inst_i_17_n_1),
        .I1(sink_bit_OBUF_inst_i_18_n_1),
        .I2(sink_bit_OBUF_inst_i_19_n_1),
        .I3(sink_bit_OBUF_inst_i_20_n_1),
        .O(sink_bit_0));
  LUT5 #(
    .INIT(32'h11000400)) 
    we_dm_OBUF_inst_i_1
       (.I0(pc_current[5]),
        .I1(pc_current[3]),
        .I2(pc_current[6]),
        .I3(pc_current[4]),
        .I4(pc_current[2]),
        .O(we_dm));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__0_i_1
       (.I0(alu_pb[14]),
        .I1(rd10[14]),
        .I2(rd10[15]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[15]),
        .O(\reg_hex_reg[0]_1 [3]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__0_i_2
       (.I0(alu_pb[12]),
        .I1(rd10[12]),
        .I2(rd10[13]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[13]),
        .O(\reg_hex_reg[0]_1 [2]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__0_i_3
       (.I0(alu_pb[10]),
        .I1(rd10[10]),
        .I2(rd10[11]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[11]),
        .O(\reg_hex_reg[0]_1 [1]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__0_i_4
       (.I0(alu_pb[8]),
        .I1(rd10[8]),
        .I2(rd10[9]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[9]),
        .O(\reg_hex_reg[0]_1 [0]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__0_i_5
       (.I0(alu_pb[14]),
        .I1(rd10[14]),
        .I2(alu_pb[15]),
        .I3(rd10[15]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_2 [3]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__0_i_6
       (.I0(alu_pb[12]),
        .I1(rd10[12]),
        .I2(alu_pb[13]),
        .I3(rd10[13]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_2 [2]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__0_i_7
       (.I0(alu_pb[10]),
        .I1(rd10[10]),
        .I2(alu_pb[11]),
        .I3(rd10[11]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_2 [1]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__0_i_8
       (.I0(alu_pb[8]),
        .I1(rd10[8]),
        .I2(alu_pb[9]),
        .I3(rd10[9]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_2 [0]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__1_i_1
       (.I0(alu_pb[22]),
        .I1(rd10[22]),
        .I2(rd10[23]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[23]),
        .O(\reg_hex_reg[0]_3 [3]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__1_i_2
       (.I0(alu_pb[20]),
        .I1(rd10[20]),
        .I2(rd10[21]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[21]),
        .O(\reg_hex_reg[0]_3 [2]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__1_i_3
       (.I0(alu_pb[18]),
        .I1(rd10[18]),
        .I2(rd10[19]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[19]),
        .O(\reg_hex_reg[0]_3 [1]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__1_i_4
       (.I0(alu_pb[16]),
        .I1(rd10[16]),
        .I2(rd10[17]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[17]),
        .O(\reg_hex_reg[0]_3 [0]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__1_i_5
       (.I0(alu_pb[22]),
        .I1(rd10[22]),
        .I2(alu_pb[23]),
        .I3(rd10[23]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_4 [3]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__1_i_6
       (.I0(alu_pb[20]),
        .I1(rd10[20]),
        .I2(alu_pb[21]),
        .I3(rd10[21]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_4 [2]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__1_i_7
       (.I0(alu_pb[18]),
        .I1(rd10[18]),
        .I2(alu_pb[19]),
        .I3(rd10[19]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_4 [1]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__1_i_8
       (.I0(alu_pb[16]),
        .I1(rd10[16]),
        .I2(alu_pb[17]),
        .I3(rd10[17]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_4 [0]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__2_i_1
       (.I0(alu_pb[30]),
        .I1(rd10[30]),
        .I2(rd10[31]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb__0),
        .O(\reg_hex_reg[0]_5 [3]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__2_i_2
       (.I0(alu_pb[28]),
        .I1(rd10[28]),
        .I2(rd10[29]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[29]),
        .O(\reg_hex_reg[0]_5 [2]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__2_i_3
       (.I0(alu_pb[26]),
        .I1(rd10[26]),
        .I2(rd10[27]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[27]),
        .O(\reg_hex_reg[0]_5 [1]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry__2_i_4
       (.I0(alu_pb[24]),
        .I1(rd10[24]),
        .I2(rd10[25]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[25]),
        .O(\reg_hex_reg[0]_5 [0]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__2_i_5
       (.I0(alu_pb[30]),
        .I1(rd10[30]),
        .I2(alu_pb__0),
        .I3(rd10[31]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_6 [3]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__2_i_6
       (.I0(alu_pb[28]),
        .I1(rd10[28]),
        .I2(alu_pb[29]),
        .I3(rd10[29]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_6 [2]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__2_i_7
       (.I0(alu_pb[26]),
        .I1(rd10[26]),
        .I2(alu_pb[27]),
        .I3(rd10[27]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_6 [1]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry__2_i_8
       (.I0(alu_pb[24]),
        .I1(rd10[24]),
        .I2(alu_pb[25]),
        .I3(rd10[25]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_6 [0]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry_i_1
       (.I0(alu_pb[6]),
        .I1(rd10[6]),
        .I2(rd10[7]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[7]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry_i_2
       (.I0(alu_pb[4]),
        .I1(rd10[4]),
        .I2(rd10[5]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry_i_3
       (.I0(alu_pb[2]),
        .I1(rd10[2]),
        .I2(rd10[3]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[3]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hFF2FAA02)) 
    y2_carry_i_4
       (.I0(y2_carry_i_9_n_1),
        .I1(rd10[0]),
        .I2(rd10[1]),
        .I3(\q[31]_i_2_n_1 ),
        .I4(alu_pb[1]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry_i_5
       (.I0(alu_pb[6]),
        .I1(rd10[6]),
        .I2(alu_pb[7]),
        .I3(rd10[7]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_0 [3]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry_i_6
       (.I0(alu_pb[4]),
        .I1(rd10[4]),
        .I2(alu_pb[5]),
        .I3(rd10[5]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry_i_7
       (.I0(alu_pb[2]),
        .I1(rd10[2]),
        .I2(alu_pb[3]),
        .I3(rd10[3]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_0 [1]));
  LUT5 #(
    .INIT(32'h05059009)) 
    y2_carry_i_8
       (.I0(y2_carry_i_9_n_1),
        .I1(rd10[0]),
        .I2(alu_pb[1]),
        .I3(rd10[1]),
        .I4(\q[31]_i_2_n_1 ),
        .O(\reg_hex_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h2C3A80200C3A0000)) 
    y2_carry_i_9
       (.I0(rd20[0]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(y2_carry_i_9_n_1));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_1
       (.I0(rd20[31]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[14]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_10
       (.I0(rd20[22]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_11
       (.I0(rd20[21]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[4]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_12
       (.I0(rd20[20]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[3]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_13
       (.I0(rd20[19]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_14
       (.I0(rd20[18]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[1]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_15
       (.I0(rd20[17]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[0]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_2
       (.I0(rd20[30]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[13]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_3
       (.I0(rd20[29]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[12]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_4
       (.I0(rd20[28]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[11]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_5
       (.I0(rd20[27]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[10]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_6
       (.I0(rd20[26]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[9]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_7
       (.I0(rd20[25]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[8]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_8
       (.I0(rd20[24]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[7]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y__0_i_9
       (.I0(rd20[23]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(B[6]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_1
       (.I0(rd10[16]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[16]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_10
       (.I0(rd10[7]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[7]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_11
       (.I0(rd10[6]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[6]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_12
       (.I0(rd10[5]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[5]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_13
       (.I0(rd10[4]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[4]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_14
       (.I0(rd10[3]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[3]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_15
       (.I0(rd10[2]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[2]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_16
       (.I0(rd10[1]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[1]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_17
       (.I0(rd10[0]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[0]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_2
       (.I0(rd10[15]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[15]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_3
       (.I0(rd10[14]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[14]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_4
       (.I0(rd10[13]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[13]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_5
       (.I0(rd10[12]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[12]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_6
       (.I0(rd10[11]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[11]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_7
       (.I0(rd10[10]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[10]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_8
       (.I0(rd10[9]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[9]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y__1_i_9
       (.I0(rd10[8]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[8]));
  CARRY4 y_carry__0_i_1
       (.CI(y_carry_i_1_n_1),
        .CO({y_carry__0_i_1_n_1,y_carry__0_i_1_n_2,y_carry__0_i_1_n_3,y_carry__0_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\q_reg[30]_0 [6:3]),
        .S(pc_current[8:5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__0_i_2
       (.I0(\q_reg[30]_0 [6]),
        .I1(instr[7]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[8]_0 [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__0_i_3
       (.I0(\q_reg[30]_0 [5]),
        .I1(instr[5]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__0_i_4
       (.I0(\q_reg[30]_0 [4]),
        .I1(instr[4]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__0_i_5
       (.I0(\q_reg[30]_0 [3]),
        .I1(instr[3]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[8]_0 [0]));
  CARRY4 y_carry__1_i_1
       (.CI(y_carry__0_i_1_n_1),
        .CO({y_carry__1_i_1_n_1,y_carry__1_i_1_n_2,y_carry__1_i_1_n_3,y_carry__1_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\q_reg[30]_0 [10:7]),
        .S(pc_current[12:9]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__1_i_2
       (.I0(\q_reg[30]_0 [10]),
        .I1(instr[7]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[12]_0 [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__1_i_3
       (.I0(\q_reg[30]_0 [9]),
        .I1(instr[7]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[12]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__1_i_4
       (.I0(\q_reg[30]_0 [8]),
        .I1(instr[7]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[12]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__1_i_5
       (.I0(\q_reg[30]_0 [7]),
        .I1(instr[7]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[12]_0 [0]));
  CARRY4 y_carry__2_i_1
       (.CI(y_carry__1_i_1_n_1),
        .CO({y_carry__2_i_1_n_1,y_carry__2_i_1_n_2,y_carry__2_i_1_n_3,y_carry__2_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\q_reg[30]_0 [14:11]),
        .S(pc_current[16:13]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__2_i_2
       (.I0(\q_reg[30]_0 [14]),
        .I1(\q_reg[25]_0 [0]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[16]_0 [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__2_i_3
       (.I0(\q_reg[30]_0 [13]),
        .I1(instr[7]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[16]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__2_i_4
       (.I0(\q_reg[30]_0 [12]),
        .I1(instr[12]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[16]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__2_i_5
       (.I0(\q_reg[30]_0 [11]),
        .I1(instr[7]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[16]_0 [0]));
  CARRY4 y_carry__3_i_1
       (.CI(y_carry__2_i_1_n_1),
        .CO({y_carry__3_i_1_n_1,y_carry__3_i_1_n_2,y_carry__3_i_1_n_3,y_carry__3_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\q_reg[30]_0 [18:15]),
        .S(pc_current[20:17]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__3_i_2
       (.I0(\q_reg[30]_0 [18]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[20]_0 [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__3_i_3
       (.I0(\q_reg[30]_0 [17]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[20]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__3_i_4
       (.I0(\q_reg[30]_0 [16]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[20]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__3_i_5
       (.I0(\q_reg[30]_0 [15]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[20]_0 [0]));
  CARRY4 y_carry__4_i_1
       (.CI(y_carry__3_i_1_n_1),
        .CO({y_carry__4_i_1_n_1,y_carry__4_i_1_n_2,y_carry__4_i_1_n_3,y_carry__4_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\q_reg[30]_0 [22:19]),
        .S(pc_current[24:21]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__4_i_2
       (.I0(\q_reg[30]_0 [22]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[24]_0 [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__4_i_3
       (.I0(\q_reg[30]_0 [21]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[24]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__4_i_4
       (.I0(\q_reg[30]_0 [20]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[24]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__4_i_5
       (.I0(\q_reg[30]_0 [19]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[24]_0 [0]));
  CARRY4 y_carry__5_i_1
       (.CI(y_carry__4_i_1_n_1),
        .CO({y_carry__5_i_1_n_1,y_carry__5_i_1_n_2,y_carry__5_i_1_n_3,y_carry__5_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\q_reg[30]_0 [26:23]),
        .S(pc_current[28:25]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__5_i_2
       (.I0(\q_reg[30]_0 [26]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[28]_0 [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__5_i_3
       (.I0(\q_reg[30]_0 [25]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[28]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__5_i_4
       (.I0(\q_reg[30]_0 [24]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[28]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__5_i_5
       (.I0(\q_reg[30]_0 [23]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[28]_0 [0]));
  CARRY4 y_carry__6_i_1
       (.CI(y_carry__5_i_1_n_1),
        .CO({NLW_y_carry__6_i_1_CO_UNCONNECTED[3:2],y_carry__6_i_1_n_3,y_carry__6_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_i_1_O_UNCONNECTED[3],a[31],\q_reg[30]_0 [28:27]}),
        .S({1'b0,pc_current[31:29]}));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__6_i_2
       (.I0(a[31]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__6_i_3
       (.I0(\q_reg[30]_0 [28]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry__6_i_4
       (.I0(\q_reg[30]_0 [27]),
        .I1(instr[15]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\q_reg[31]_0 [0]));
  CARRY4 y_carry_i_1
       (.CI(1'b0),
        .CO({y_carry_i_1_n_1,y_carry_i_1_n_2,y_carry_i_1_n_3,y_carry_i_1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pc_current[2],1'b0}),
        .O({\q_reg[30]_0 [2:0],a[1]}),
        .S({pc_current[4:3],y_carry_i_8_n_1,pc_current[1]}));
  LUT4 #(
    .INIT(16'h0040)) 
    y_carry_i_10
       (.I0(pc_current[3]),
        .I1(pc_current[2]),
        .I2(pc_current[5]),
        .I3(pc_current[4]),
        .O(instr[28]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry_i_2
       (.I0(\q_reg[30]_0 [2]),
        .I1(instr[2]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\^S [3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry_i_3
       (.I0(\q_reg[30]_0 [1]),
        .I1(instr[1]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\^S [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    y_carry_i_4
       (.I0(\q_reg[30]_0 [0]),
        .I1(instr[0]),
        .I2(instr[28]),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[4]_1 ),
        .I5(\q_reg[4]_2 ),
        .O(\^S [1]));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_8
       (.I0(pc_current[2]),
        .O(y_carry_i_8_n_1));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_1
       (.I0(rd10[31]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[31]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_10
       (.I0(rd10[22]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[22]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_11
       (.I0(rd10[21]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[21]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_12
       (.I0(rd10[20]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[20]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_13
       (.I0(rd10[19]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[19]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_14
       (.I0(rd10[18]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[18]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_15
       (.I0(rd10[17]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[17]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_16
       (.I0(rd20[16]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[16]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_17
       (.I0(rd20[15]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[15]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_18
       (.I0(rd20[14]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[14]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_19
       (.I0(rd20[13]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[13]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_2
       (.I0(rd10[30]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[30]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_20
       (.I0(rd20[12]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[12]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_21
       (.I0(rd20[11]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[11]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_22
       (.I0(rd20[10]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_23
       (.I0(rd20[9]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_24
       (.I0(rd20[8]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_25
       (.I0(rd20[7]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_26
       (.I0(rd20[6]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_27
       (.I0(rd20[5]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_28
       (.I0(rd20[4]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_29
       (.I0(rd20[3]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_3
       (.I0(rd10[29]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[29]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_30
       (.I0(rd20[2]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_31
       (.I0(rd20[1]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hA8AAA82A88AAAA02)) 
    y_i_32
       (.I0(rd20[0]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_4
       (.I0(rd10[28]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[28]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_5
       (.I0(rd10[27]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[27]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_6
       (.I0(rd10[26]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[26]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_7
       (.I0(rd10[25]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[25]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_8
       (.I0(rd10[24]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[24]));
  LUT6 #(
    .INIT(64'h8A8A82802A2A2A28)) 
    y_i_9
       (.I0(rd10[23]),
        .I1(pc_current[5]),
        .I2(pc_current[3]),
        .I3(pc_current[6]),
        .I4(pc_current[4]),
        .I5(pc_current[2]),
        .O(alu_pa[23]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \y_reg[0]_i_1 
       (.I0(CO),
        .I1(alu_ctrl),
        .I2(data2[0]),
        .I3(\y_reg[31]_i_2_n_1 ),
        .I4(\y_reg[0]_i_2_n_1 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA20)) 
    \y_reg[0]_i_2 
       (.I0(alu_ctrl__0),
        .I1(\q[31]_i_2_n_1 ),
        .I2(rd10[0]),
        .I3(y2_carry_i_9_n_1),
        .O(\y_reg[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[10]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[10]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[10]),
        .I5(alu_pb[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[10]_i_2 
       (.I0(rd20[10]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[10]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[11]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[11]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[11]),
        .I5(alu_pb[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[11]_i_2 
       (.I0(rd20[11]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[11]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[12]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[12]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[12]),
        .I5(alu_pb[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h20CA80200C0A0300)) 
    \y_reg[12]_i_2 
       (.I0(rd20[12]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[12]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[13]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[13]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[13]),
        .I5(alu_pb[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[13]_i_2 
       (.I0(rd20[13]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[13]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[14]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[14]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[14]),
        .I5(alu_pb[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h2C0A80200C0A0300)) 
    \y_reg[14]_i_2 
       (.I0(rd20[14]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[14]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[15]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[15]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[15]),
        .I5(alu_pb[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[15]_i_2 
       (.I0(rd20[15]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[15]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[16]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[16]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[16]),
        .I5(alu_pb[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[16]_i_2 
       (.I0(rd20[16]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[16]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[17]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[17]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[17]),
        .I5(alu_pb[17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[17]_i_2 
       (.I0(rd20[17]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[17]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[18]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[18]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[18]),
        .I5(alu_pb[18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[18]_i_2 
       (.I0(rd20[18]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[18]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[19]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[19]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[19]),
        .I5(alu_pb[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[19]_i_2 
       (.I0(rd20[19]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[19]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[1]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[1]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[1]),
        .I5(alu_pb[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2C0A80200C0AC000)) 
    \y_reg[1]_i_2 
       (.I0(rd20[1]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[1]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[20]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[20]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[20]),
        .I5(alu_pb[20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[20]_i_2 
       (.I0(rd20[20]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[20]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[21]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[21]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[21]),
        .I5(alu_pb[21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[21]_i_2 
       (.I0(rd20[21]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[21]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[22]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[22]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[22]),
        .I5(alu_pb[22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[22]_i_2 
       (.I0(rd20[22]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[22]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[23]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[23]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[23]),
        .I5(alu_pb[23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[23]_i_2 
       (.I0(rd20[23]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[23]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[24]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[24]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[24]),
        .I5(alu_pb[24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[24]_i_2 
       (.I0(rd20[24]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[24]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[25]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[25]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[25]),
        .I5(alu_pb[25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[25]_i_2 
       (.I0(rd20[25]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[25]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[26]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[26]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[26]),
        .I5(alu_pb[26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[26]_i_2 
       (.I0(rd20[26]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[26]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[27]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[27]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[27]),
        .I5(alu_pb[27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[27]_i_2 
       (.I0(rd20[27]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[27]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[28]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[28]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[28]),
        .I5(alu_pb[28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[28]_i_2 
       (.I0(rd20[28]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[28]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[29]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[29]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[29]),
        .I5(alu_pb[29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[29]_i_2 
       (.I0(rd20[29]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[29]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[2]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[2]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[2]),
        .I5(alu_pb[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h200A80230C0A0C03)) 
    \y_reg[2]_i_2 
       (.I0(rd20[2]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[2]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[30]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[30]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[30]),
        .I5(alu_pb[30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[30]_i_2 
       (.I0(rd20[30]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[30]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[31]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[31]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[31]),
        .I5(alu_pb__0),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hD29DDF9B)) 
    \y_reg[31]_i_2 
       (.I0(pc_current[4]),
        .I1(pc_current[2]),
        .I2(pc_current[5]),
        .I3(pc_current[3]),
        .I4(pc_current[6]),
        .O(\y_reg[31]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \y_reg[31]_i_3 
       (.I0(pc_current[6]),
        .I1(pc_current[3]),
        .I2(pc_current[5]),
        .I3(pc_current[2]),
        .I4(pc_current[4]),
        .O(alu_ctrl__0));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[31]_i_4 
       (.I0(rd20[31]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb__0));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[3]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[3]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[3]),
        .I5(alu_pb[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h2CFABC2C0CCA0300)) 
    \y_reg[3]_i_2 
       (.I0(rd20[3]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[3]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[4]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[4]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[4]),
        .I5(alu_pb[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[4]_i_2 
       (.I0(rd20[4]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[4]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[5]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[5]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[5]),
        .I5(alu_pb[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[5]_i_2 
       (.I0(rd20[5]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[5]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[6]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[6]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[6]),
        .I5(alu_pb[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[6]_i_2 
       (.I0(rd20[6]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[6]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[7]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[7]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[7]),
        .I5(alu_pb[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[7]_i_2 
       (.I0(rd20[7]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[7]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[8]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[8]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[8]),
        .I5(alu_pb[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[8]_i_2 
       (.I0(rd20[8]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[8]));
  LUT6 #(
    .INIT(64'h4D4D4D484D484848)) 
    \y_reg[9]_i_1 
       (.I0(alu_ctrl),
        .I1(data2[9]),
        .I2(\y_reg[31]_i_2_n_1 ),
        .I3(alu_ctrl__0),
        .I4(alu_pa[9]),
        .I5(alu_pb[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h200A80200C0A0300)) 
    \y_reg[9]_i_2 
       (.I0(rd20[9]),
        .I1(pc_current[2]),
        .I2(pc_current[3]),
        .I3(pc_current[4]),
        .I4(pc_current[5]),
        .I5(pc_current[6]),
        .O(alu_pb[9]));
endmodule

module dreg2
   (Q,
    E,
    y,
    clk_pb_BUFG,
    AR);
  output [31:0]Q;
  input [0:0]E;
  input [31:0]y;
  input clk_pb_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk_pb_BUFG;
  wire [31:0]y;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(y[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "dreg2" *) 
module dreg2_0
   (Q,
    E,
    D,
    clk_pb_BUFG,
    AR);
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input clk_pb_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk_pb_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_pb_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module led_mux
   (LEDOUT_OBUF,
    \index_reg[2]_0 ,
    LEDSEL_OBUF,
    \q_reg[14] ,
    \q_reg[6] ,
    \q_reg[15] ,
    \q_reg[7] ,
    \q_reg[12] ,
    \q_reg[4] ,
    \q_reg[15]_0 ,
    \q_reg[7]_0 ,
    \q_reg[12]_0 ,
    \q_reg[4]_0 ,
    \q_reg[15]_1 ,
    \q_reg[7]_1 ,
    \q_reg[15]_2 ,
    \q_reg[7]_2 ,
    Q,
    digit2,
    digit0,
    rst_IBUF,
    CLK);
  output [6:0]LEDOUT_OBUF;
  output [0:0]\index_reg[2]_0 ;
  output [7:0]LEDSEL_OBUF;
  input \q_reg[14] ;
  input \q_reg[6] ;
  input \q_reg[15] ;
  input \q_reg[7] ;
  input \q_reg[12] ;
  input \q_reg[4] ;
  input \q_reg[15]_0 ;
  input \q_reg[7]_0 ;
  input \q_reg[12]_0 ;
  input \q_reg[4]_0 ;
  input \q_reg[15]_1 ;
  input \q_reg[7]_1 ;
  input \q_reg[15]_2 ;
  input \q_reg[7]_2 ;
  input [7:0]Q;
  input [6:0]digit2;
  input [6:0]digit0;
  input rst_IBUF;
  input CLK;

  wire CLK;
  wire [6:0]LEDOUT_OBUF;
  wire \LEDOUT_OBUF[0]_inst_i_4_n_1 ;
  wire \LEDOUT_OBUF[0]_inst_i_5_n_1 ;
  wire \LEDOUT_OBUF[1]_inst_i_4_n_1 ;
  wire \LEDOUT_OBUF[1]_inst_i_5_n_1 ;
  wire \LEDOUT_OBUF[2]_inst_i_4_n_1 ;
  wire \LEDOUT_OBUF[2]_inst_i_5_n_1 ;
  wire \LEDOUT_OBUF[3]_inst_i_4_n_1 ;
  wire \LEDOUT_OBUF[3]_inst_i_5_n_1 ;
  wire \LEDOUT_OBUF[4]_inst_i_4_n_1 ;
  wire \LEDOUT_OBUF[4]_inst_i_5_n_1 ;
  wire \LEDOUT_OBUF[5]_inst_i_4_n_1 ;
  wire \LEDOUT_OBUF[5]_inst_i_5_n_1 ;
  wire \LEDOUT_OBUF[6]_inst_i_4_n_1 ;
  wire \LEDOUT_OBUF[6]_inst_i_5_n_1 ;
  wire [7:0]LEDSEL_OBUF;
  wire [7:0]Q;
  wire [6:0]digit0;
  wire [6:0]digit2;
  wire [2:1]index;
  wire \index[0]_i_1_n_1 ;
  wire \index[1]_i_1_n_1 ;
  wire \index[2]_i_1_n_1 ;
  wire [0:0]\index_reg[2]_0 ;
  wire \q_reg[12] ;
  wire \q_reg[12]_0 ;
  wire \q_reg[14] ;
  wire \q_reg[15] ;
  wire \q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire \q_reg[15]_2 ;
  wire \q_reg[4] ;
  wire \q_reg[4]_0 ;
  wire \q_reg[6] ;
  wire \q_reg[7] ;
  wire \q_reg[7]_0 ;
  wire \q_reg[7]_1 ;
  wire \q_reg[7]_2 ;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LEDOUT_OBUF[0]_inst_i_1 
       (.I0(\q_reg[12] ),
        .I1(\q_reg[4] ),
        .I2(index[2]),
        .I3(\LEDOUT_OBUF[0]_inst_i_4_n_1 ),
        .I4(index[1]),
        .I5(\LEDOUT_OBUF[0]_inst_i_5_n_1 ),
        .O(LEDOUT_OBUF[0]));
  LUT6 #(
    .INIT(64'h8092FFFF80920000)) 
    \LEDOUT_OBUF[0]_inst_i_4 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(\index_reg[2]_0 ),
        .I5(digit2[0]),
        .O(\LEDOUT_OBUF[0]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h8092FFFF80920000)) 
    \LEDOUT_OBUF[0]_inst_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\index_reg[2]_0 ),
        .I5(digit0[0]),
        .O(\LEDOUT_OBUF[0]_inst_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LEDOUT_OBUF[1]_inst_i_1 
       (.I0(\q_reg[14] ),
        .I1(\q_reg[6] ),
        .I2(index[2]),
        .I3(\LEDOUT_OBUF[1]_inst_i_4_n_1 ),
        .I4(index[1]),
        .I5(\LEDOUT_OBUF[1]_inst_i_5_n_1 ),
        .O(LEDOUT_OBUF[1]));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \LEDOUT_OBUF[1]_inst_i_4 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(\index_reg[2]_0 ),
        .I5(digit2[1]),
        .O(\LEDOUT_OBUF[1]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \LEDOUT_OBUF[1]_inst_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\index_reg[2]_0 ),
        .I5(digit0[1]),
        .O(\LEDOUT_OBUF[1]_inst_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LEDOUT_OBUF[2]_inst_i_1 
       (.I0(\q_reg[15] ),
        .I1(\q_reg[7] ),
        .I2(index[2]),
        .I3(\LEDOUT_OBUF[2]_inst_i_4_n_1 ),
        .I4(index[1]),
        .I5(\LEDOUT_OBUF[2]_inst_i_5_n_1 ),
        .O(LEDOUT_OBUF[2]));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \LEDOUT_OBUF[2]_inst_i_4 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\index_reg[2]_0 ),
        .I5(digit2[2]),
        .O(\LEDOUT_OBUF[2]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h445CFFFF445C0000)) 
    \LEDOUT_OBUF[2]_inst_i_5 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\index_reg[2]_0 ),
        .I5(digit0[2]),
        .O(\LEDOUT_OBUF[2]_inst_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LEDOUT_OBUF[3]_inst_i_1 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[7]_0 ),
        .I2(index[2]),
        .I3(\LEDOUT_OBUF[3]_inst_i_4_n_1 ),
        .I4(index[1]),
        .I5(\LEDOUT_OBUF[3]_inst_i_5_n_1 ),
        .O(LEDOUT_OBUF[3]));
  LUT6 #(
    .INIT(64'h4101FFFF41010000)) 
    \LEDOUT_OBUF[3]_inst_i_4 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\index_reg[2]_0 ),
        .I5(digit2[3]),
        .O(\LEDOUT_OBUF[3]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h4101FFFF41010000)) 
    \LEDOUT_OBUF[3]_inst_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\index_reg[2]_0 ),
        .I5(digit0[3]),
        .O(\LEDOUT_OBUF[3]_inst_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LEDOUT_OBUF[4]_inst_i_1 
       (.I0(\q_reg[12]_0 ),
        .I1(\q_reg[4]_0 ),
        .I2(index[2]),
        .I3(\LEDOUT_OBUF[4]_inst_i_4_n_1 ),
        .I4(index[1]),
        .I5(\LEDOUT_OBUF[4]_inst_i_5_n_1 ),
        .O(LEDOUT_OBUF[4]));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \LEDOUT_OBUF[4]_inst_i_4 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(\index_reg[2]_0 ),
        .I5(digit2[4]),
        .O(\LEDOUT_OBUF[4]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hE448FFFFE4480000)) 
    \LEDOUT_OBUF[4]_inst_i_5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\index_reg[2]_0 ),
        .I5(digit0[4]),
        .O(\LEDOUT_OBUF[4]_inst_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LEDOUT_OBUF[5]_inst_i_1 
       (.I0(\q_reg[15]_1 ),
        .I1(\q_reg[7]_1 ),
        .I2(index[2]),
        .I3(\LEDOUT_OBUF[5]_inst_i_4_n_1 ),
        .I4(index[1]),
        .I5(\LEDOUT_OBUF[5]_inst_i_5_n_1 ),
        .O(LEDOUT_OBUF[5]));
  LUT6 #(
    .INIT(64'h4A74FFFF4A740000)) 
    \LEDOUT_OBUF[5]_inst_i_4 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\index_reg[2]_0 ),
        .I5(digit2[5]),
        .O(\LEDOUT_OBUF[5]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h4A74FFFF4A740000)) 
    \LEDOUT_OBUF[5]_inst_i_5 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\index_reg[2]_0 ),
        .I5(digit0[5]),
        .O(\LEDOUT_OBUF[5]_inst_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \LEDOUT_OBUF[6]_inst_i_1 
       (.I0(\q_reg[15]_2 ),
        .I1(\q_reg[7]_2 ),
        .I2(index[2]),
        .I3(\LEDOUT_OBUF[6]_inst_i_4_n_1 ),
        .I4(index[1]),
        .I5(\LEDOUT_OBUF[6]_inst_i_5_n_1 ),
        .O(LEDOUT_OBUF[6]));
  LUT6 #(
    .INIT(64'h08B4FFFF08B40000)) 
    \LEDOUT_OBUF[6]_inst_i_4 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\index_reg[2]_0 ),
        .I5(digit2[6]),
        .O(\LEDOUT_OBUF[6]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08B4FFFF08B40000)) 
    \LEDOUT_OBUF[6]_inst_i_5 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\index_reg[2]_0 ),
        .I5(digit0[6]),
        .O(\LEDOUT_OBUF[6]_inst_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LEDSEL_OBUF[0]_inst_i_1 
       (.I0(index[2]),
        .I1(\index_reg[2]_0 ),
        .I2(index[1]),
        .O(LEDSEL_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \LEDSEL_OBUF[1]_inst_i_1 
       (.I0(index[2]),
        .I1(\index_reg[2]_0 ),
        .I2(index[1]),
        .O(LEDSEL_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \LEDSEL_OBUF[2]_inst_i_1 
       (.I0(index[2]),
        .I1(index[1]),
        .I2(\index_reg[2]_0 ),
        .O(LEDSEL_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \LEDSEL_OBUF[3]_inst_i_1 
       (.I0(index[2]),
        .I1(\index_reg[2]_0 ),
        .I2(index[1]),
        .O(LEDSEL_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \LEDSEL_OBUF[4]_inst_i_1 
       (.I0(\index_reg[2]_0 ),
        .I1(index[1]),
        .I2(index[2]),
        .O(LEDSEL_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \LEDSEL_OBUF[5]_inst_i_1 
       (.I0(\index_reg[2]_0 ),
        .I1(index[1]),
        .I2(index[2]),
        .O(LEDSEL_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \LEDSEL_OBUF[6]_inst_i_1 
       (.I0(index[1]),
        .I1(\index_reg[2]_0 ),
        .I2(index[2]),
        .O(LEDSEL_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \LEDSEL_OBUF[7]_inst_i_1 
       (.I0(\index_reg[2]_0 ),
        .I1(index[1]),
        .I2(index[2]),
        .O(LEDSEL_OBUF[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \index[0]_i_1 
       (.I0(\index_reg[2]_0 ),
        .I1(rst_IBUF),
        .O(\index[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \index[1]_i_1 
       (.I0(index[1]),
        .I1(\index_reg[2]_0 ),
        .I2(rst_IBUF),
        .O(\index[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \index[2]_i_1 
       (.I0(index[2]),
        .I1(\index_reg[2]_0 ),
        .I2(index[1]),
        .I3(rst_IBUF),
        .O(\index[2]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[0]_i_1_n_1 ),
        .Q(\index_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[1]_i_1_n_1 ),
        .Q(index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[2]_i_1_n_1 ),
        .Q(index[2]),
        .R(1'b0));
endmodule

module mips
   (wd_dm,
    D,
    n_0_92_BUFG_inst_n_1,
    Q,
    \LEDOUT[1] ,
    \LEDOUT[2] ,
    \LEDOUT[0] ,
    \LEDOUT[1]_0 ,
    \LEDOUT[2]_0 ,
    \LEDOUT[3] ,
    \LEDOUT[4] ,
    \LEDOUT[5] ,
    \LEDOUT[6] ,
    \LEDOUT[0]_0 ,
    \LEDOUT[3]_0 ,
    \LEDOUT[4]_0 ,
    \LEDOUT[5]_0 ,
    \LEDOUT[6]_0 ,
    sink_bit_OBUF,
    we_dm,
    switches_IBUF,
    \switches[2] ,
    q,
    \index_reg[0] ,
    E,
    clk_pb_BUFG,
    AR);
  output [31:0]wd_dm;
  output [15:0]D;
  output n_0_92_BUFG_inst_n_1;
  output [5:0]Q;
  output \LEDOUT[1] ;
  output \LEDOUT[2] ;
  output \LEDOUT[0] ;
  output \LEDOUT[1]_0 ;
  output \LEDOUT[2]_0 ;
  output \LEDOUT[3] ;
  output \LEDOUT[4] ;
  output \LEDOUT[5] ;
  output \LEDOUT[6] ;
  output \LEDOUT[0]_0 ;
  output \LEDOUT[3]_0 ;
  output \LEDOUT[4]_0 ;
  output \LEDOUT[5]_0 ;
  output \LEDOUT[6]_0 ;
  output sink_bit_OBUF;
  output we_dm;
  input [7:0]switches_IBUF;
  input \switches[2] ;
  input [31:0]q;
  input [0:0]\index_reg[0] ;
  input [0:0]E;
  input clk_pb_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [15:0]D;
  wire [0:0]E;
  wire \LEDOUT[0] ;
  wire \LEDOUT[0]_0 ;
  wire \LEDOUT[1] ;
  wire \LEDOUT[1]_0 ;
  wire \LEDOUT[2] ;
  wire \LEDOUT[2]_0 ;
  wire \LEDOUT[3] ;
  wire \LEDOUT[3]_0 ;
  wire \LEDOUT[4] ;
  wire \LEDOUT[4]_0 ;
  wire \LEDOUT[5] ;
  wire \LEDOUT[5]_0 ;
  wire \LEDOUT[6] ;
  wire \LEDOUT[6]_0 ;
  wire [5:0]Q;
  wire clk_pb_BUFG;
  wire [0:0]\index_reg[0] ;
  wire n_0_92_BUFG_inst_n_1;
  wire [31:0]q;
  wire sink_bit_OBUF;
  wire \switches[2] ;
  wire [7:0]switches_IBUF;
  wire [31:0]wd_dm;
  wire we_dm;

  datapath dp
       (.A(wd_dm[16:0]),
        .AR(AR),
        .B(wd_dm[31:17]),
        .D(D),
        .E(E),
        .\LEDOUT[0] (\LEDOUT[0] ),
        .\LEDOUT[0]_0 (\LEDOUT[0]_0 ),
        .\LEDOUT[1] (\LEDOUT[1] ),
        .\LEDOUT[1]_0 (\LEDOUT[1]_0 ),
        .\LEDOUT[2] (\LEDOUT[2] ),
        .\LEDOUT[2]_0 (\LEDOUT[2]_0 ),
        .\LEDOUT[3] (\LEDOUT[3] ),
        .\LEDOUT[3]_0 (\LEDOUT[3]_0 ),
        .\LEDOUT[4] (\LEDOUT[4] ),
        .\LEDOUT[4]_0 (\LEDOUT[4]_0 ),
        .\LEDOUT[5] (\LEDOUT[5] ),
        .\LEDOUT[5]_0 (\LEDOUT[5]_0 ),
        .\LEDOUT[6] (\LEDOUT[6] ),
        .\LEDOUT[6]_0 (\LEDOUT[6]_0 ),
        .Q(Q),
        .clk_pb_BUFG(clk_pb_BUFG),
        .\index_reg[0] (\index_reg[0] ),
        .n_0_92_BUFG_inst_n_1(n_0_92_BUFG_inst_n_1),
        .q(q),
        .sink_bit_OBUF(sink_bit_OBUF),
        .\switches[2] (\switches[2] ),
        .switches_IBUF(switches_IBUF),
        .we_dm(we_dm));
endmodule

(* NotValidForBitStream *)
module mips_fpga
   (clk,
    rst,
    button,
    switches,
    we_dm,
    sink_bit,
    LEDSEL,
    LEDOUT);
  input clk;
  input rst;
  input button;
  input [7:0]switches;
  output we_dm;
  output sink_bit;
  output [7:0]LEDSEL;
  output [7:0]LEDOUT;

  wire [7:0]LEDOUT;
  wire [6:0]LEDOUT_OBUF;
  wire [7:0]LEDSEL;
  wire [7:0]LEDSEL_OBUF;
  wire [7:2]alu_out;
  wire button;
  wire button_IBUF;
  wire clk;
  wire clk_5KHz;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_pb;
  wire clk_pb_BUFG;
  wire [6:0]digit0;
  wire [6:0]digit2;
  wire [0:0]index;
  wire mips_n_56;
  wire mips_n_57;
  wire mips_n_58;
  wire mips_n_59;
  wire mips_n_60;
  wire mips_n_61;
  wire mips_n_62;
  wire mips_n_63;
  wire mips_n_64;
  wire mips_n_65;
  wire mips_n_66;
  wire mips_n_67;
  wire mips_n_68;
  wire mips_n_69;
  wire n_0_92_BUFG;
  wire n_0_92_BUFG_inst_n_1;
  wire [31:0]rd_dm;
  wire [15:0]reg_hex;
  wire \reg_hex[15]_i_5_n_1 ;
  wire \reg_hex_reg_n_1_[0] ;
  wire \reg_hex_reg_n_1_[10] ;
  wire \reg_hex_reg_n_1_[11] ;
  wire \reg_hex_reg_n_1_[12] ;
  wire \reg_hex_reg_n_1_[13] ;
  wire \reg_hex_reg_n_1_[14] ;
  wire \reg_hex_reg_n_1_[15] ;
  wire \reg_hex_reg_n_1_[1] ;
  wire \reg_hex_reg_n_1_[2] ;
  wire \reg_hex_reg_n_1_[3] ;
  wire \reg_hex_reg_n_1_[4] ;
  wire \reg_hex_reg_n_1_[5] ;
  wire \reg_hex_reg_n_1_[6] ;
  wire \reg_hex_reg_n_1_[7] ;
  wire \reg_hex_reg_n_1_[8] ;
  wire \reg_hex_reg_n_1_[9] ;
  wire rst;
  wire rst_IBUF;
  wire sink_bit;
  wire sink_bit_OBUF;
  wire [7:0]switches;
  wire [7:0]switches_IBUF;
  wire [31:0]wd_dm;
  wire we_dm;
  wire we_dm_OBUF;

  OBUF \LEDOUT_OBUF[0]_inst 
       (.I(LEDOUT_OBUF[0]),
        .O(LEDOUT[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8092)) 
    \LEDOUT_OBUF[0]_inst_i_8 
       (.I0(\reg_hex_reg_n_1_[8] ),
        .I1(\reg_hex_reg_n_1_[9] ),
        .I2(\reg_hex_reg_n_1_[10] ),
        .I3(\reg_hex_reg_n_1_[11] ),
        .O(digit2[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8092)) 
    \LEDOUT_OBUF[0]_inst_i_9 
       (.I0(\reg_hex_reg_n_1_[0] ),
        .I1(\reg_hex_reg_n_1_[1] ),
        .I2(\reg_hex_reg_n_1_[2] ),
        .I3(\reg_hex_reg_n_1_[3] ),
        .O(digit0[0]));
  OBUF \LEDOUT_OBUF[1]_inst 
       (.I(LEDOUT_OBUF[1]),
        .O(LEDOUT[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \LEDOUT_OBUF[1]_inst_i_8 
       (.I0(\reg_hex_reg_n_1_[10] ),
        .I1(\reg_hex_reg_n_1_[8] ),
        .I2(\reg_hex_reg_n_1_[9] ),
        .I3(\reg_hex_reg_n_1_[11] ),
        .O(digit2[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \LEDOUT_OBUF[1]_inst_i_9 
       (.I0(\reg_hex_reg_n_1_[2] ),
        .I1(\reg_hex_reg_n_1_[0] ),
        .I2(\reg_hex_reg_n_1_[1] ),
        .I3(\reg_hex_reg_n_1_[3] ),
        .O(digit0[1]));
  OBUF \LEDOUT_OBUF[2]_inst 
       (.I(LEDOUT_OBUF[2]),
        .O(LEDOUT[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \LEDOUT_OBUF[2]_inst_i_8 
       (.I0(\reg_hex_reg_n_1_[11] ),
        .I1(\reg_hex_reg_n_1_[8] ),
        .I2(\reg_hex_reg_n_1_[10] ),
        .I3(\reg_hex_reg_n_1_[9] ),
        .O(digit2[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \LEDOUT_OBUF[2]_inst_i_9 
       (.I0(\reg_hex_reg_n_1_[3] ),
        .I1(\reg_hex_reg_n_1_[0] ),
        .I2(\reg_hex_reg_n_1_[2] ),
        .I3(\reg_hex_reg_n_1_[1] ),
        .O(digit0[2]));
  OBUF \LEDOUT_OBUF[3]_inst 
       (.I(LEDOUT_OBUF[3]),
        .O(LEDOUT[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \LEDOUT_OBUF[3]_inst_i_8 
       (.I0(\reg_hex_reg_n_1_[11] ),
        .I1(\reg_hex_reg_n_1_[10] ),
        .I2(\reg_hex_reg_n_1_[9] ),
        .I3(\reg_hex_reg_n_1_[8] ),
        .O(digit2[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \LEDOUT_OBUF[3]_inst_i_9 
       (.I0(\reg_hex_reg_n_1_[3] ),
        .I1(\reg_hex_reg_n_1_[2] ),
        .I2(\reg_hex_reg_n_1_[1] ),
        .I3(\reg_hex_reg_n_1_[0] ),
        .O(digit0[3]));
  OBUF \LEDOUT_OBUF[4]_inst 
       (.I(LEDOUT_OBUF[4]),
        .O(LEDOUT[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \LEDOUT_OBUF[4]_inst_i_8 
       (.I0(\reg_hex_reg_n_1_[8] ),
        .I1(\reg_hex_reg_n_1_[10] ),
        .I2(\reg_hex_reg_n_1_[9] ),
        .I3(\reg_hex_reg_n_1_[11] ),
        .O(digit2[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \LEDOUT_OBUF[4]_inst_i_9 
       (.I0(\reg_hex_reg_n_1_[0] ),
        .I1(\reg_hex_reg_n_1_[2] ),
        .I2(\reg_hex_reg_n_1_[1] ),
        .I3(\reg_hex_reg_n_1_[3] ),
        .O(digit0[4]));
  OBUF \LEDOUT_OBUF[5]_inst 
       (.I(LEDOUT_OBUF[5]),
        .O(LEDOUT[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4A74)) 
    \LEDOUT_OBUF[5]_inst_i_8 
       (.I0(\reg_hex_reg_n_1_[11] ),
        .I1(\reg_hex_reg_n_1_[8] ),
        .I2(\reg_hex_reg_n_1_[9] ),
        .I3(\reg_hex_reg_n_1_[10] ),
        .O(digit2[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h4A74)) 
    \LEDOUT_OBUF[5]_inst_i_9 
       (.I0(\reg_hex_reg_n_1_[3] ),
        .I1(\reg_hex_reg_n_1_[0] ),
        .I2(\reg_hex_reg_n_1_[1] ),
        .I3(\reg_hex_reg_n_1_[2] ),
        .O(digit0[5]));
  OBUF \LEDOUT_OBUF[6]_inst 
       (.I(LEDOUT_OBUF[6]),
        .O(LEDOUT[6]));
  LUT4 #(
    .INIT(16'h08B4)) 
    \LEDOUT_OBUF[6]_inst_i_8 
       (.I0(\reg_hex_reg_n_1_[11] ),
        .I1(\reg_hex_reg_n_1_[8] ),
        .I2(\reg_hex_reg_n_1_[10] ),
        .I3(\reg_hex_reg_n_1_[9] ),
        .O(digit2[6]));
  LUT4 #(
    .INIT(16'h08B4)) 
    \LEDOUT_OBUF[6]_inst_i_9 
       (.I0(\reg_hex_reg_n_1_[3] ),
        .I1(\reg_hex_reg_n_1_[0] ),
        .I2(\reg_hex_reg_n_1_[2] ),
        .I3(\reg_hex_reg_n_1_[1] ),
        .O(digit0[6]));
  OBUF \LEDOUT_OBUF[7]_inst 
       (.I(1'b1),
        .O(LEDOUT[7]));
  OBUF \LEDSEL_OBUF[0]_inst 
       (.I(LEDSEL_OBUF[0]),
        .O(LEDSEL[0]));
  OBUF \LEDSEL_OBUF[1]_inst 
       (.I(LEDSEL_OBUF[1]),
        .O(LEDSEL[1]));
  OBUF \LEDSEL_OBUF[2]_inst 
       (.I(LEDSEL_OBUF[2]),
        .O(LEDSEL[2]));
  OBUF \LEDSEL_OBUF[3]_inst 
       (.I(LEDSEL_OBUF[3]),
        .O(LEDSEL[3]));
  OBUF \LEDSEL_OBUF[4]_inst 
       (.I(LEDSEL_OBUF[4]),
        .O(LEDSEL[4]));
  OBUF \LEDSEL_OBUF[5]_inst 
       (.I(LEDSEL_OBUF[5]),
        .O(LEDSEL[5]));
  OBUF \LEDSEL_OBUF[6]_inst 
       (.I(LEDSEL_OBUF[6]),
        .O(LEDSEL[6]));
  OBUF \LEDSEL_OBUF[7]_inst 
       (.I(LEDSEL_OBUF[7]),
        .O(LEDSEL[7]));
  bdebouncer bd
       (.CLK(clk_5KHz),
        .D(button_IBUF),
        .clk_pb(clk_pb));
  IBUF button_IBUF_inst
       (.I(button),
        .O(button_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  clk_gen clk_gen
       (.CLK(clk_5KHz),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF));
  BUFG clk_pb_BUFG_inst
       (.I(clk_pb),
        .O(clk_pb_BUFG));
  dmem dmem
       (.Q(alu_out),
        .clk_pb_BUFG(clk_pb_BUFG),
        .q(rd_dm),
        .wd_dm(wd_dm),
        .we_dm(we_dm_OBUF));
  led_mux led_mux
       (.CLK(clk_5KHz),
        .LEDOUT_OBUF(LEDOUT_OBUF),
        .LEDSEL_OBUF(LEDSEL_OBUF),
        .Q({\reg_hex_reg_n_1_[15] ,\reg_hex_reg_n_1_[14] ,\reg_hex_reg_n_1_[13] ,\reg_hex_reg_n_1_[12] ,\reg_hex_reg_n_1_[7] ,\reg_hex_reg_n_1_[6] ,\reg_hex_reg_n_1_[5] ,\reg_hex_reg_n_1_[4] }),
        .digit0(digit0),
        .digit2(digit2),
        .\index_reg[2]_0 (index),
        .\q_reg[12] (mips_n_58),
        .\q_reg[12]_0 (mips_n_62),
        .\q_reg[14] (mips_n_59),
        .\q_reg[15] (mips_n_60),
        .\q_reg[15]_0 (mips_n_61),
        .\q_reg[15]_1 (mips_n_63),
        .\q_reg[15]_2 (mips_n_64),
        .\q_reg[4] (mips_n_65),
        .\q_reg[4]_0 (mips_n_67),
        .\q_reg[6] (mips_n_56),
        .\q_reg[7] (mips_n_57),
        .\q_reg[7]_0 (mips_n_66),
        .\q_reg[7]_1 (mips_n_68),
        .\q_reg[7]_2 (mips_n_69),
        .rst_IBUF(rst_IBUF));
  mips mips
       (.AR(rst_IBUF),
        .D(reg_hex),
        .E(n_0_92_BUFG),
        .\LEDOUT[0] (mips_n_58),
        .\LEDOUT[0]_0 (mips_n_65),
        .\LEDOUT[1] (mips_n_56),
        .\LEDOUT[1]_0 (mips_n_59),
        .\LEDOUT[2] (mips_n_57),
        .\LEDOUT[2]_0 (mips_n_60),
        .\LEDOUT[3] (mips_n_61),
        .\LEDOUT[3]_0 (mips_n_66),
        .\LEDOUT[4] (mips_n_62),
        .\LEDOUT[4]_0 (mips_n_67),
        .\LEDOUT[5] (mips_n_63),
        .\LEDOUT[5]_0 (mips_n_68),
        .\LEDOUT[6] (mips_n_64),
        .\LEDOUT[6]_0 (mips_n_69),
        .Q(alu_out),
        .clk_pb_BUFG(clk_pb_BUFG),
        .\index_reg[0] (index),
        .n_0_92_BUFG_inst_n_1(n_0_92_BUFG_inst_n_1),
        .q(rd_dm),
        .sink_bit_OBUF(sink_bit_OBUF),
        .\switches[2] (\reg_hex[15]_i_5_n_1 ),
        .switches_IBUF(switches_IBUF),
        .wd_dm(wd_dm),
        .we_dm(we_dm_OBUF));
  BUFG n_0_92_BUFG_inst
       (.I(n_0_92_BUFG_inst_n_1),
        .O(n_0_92_BUFG));
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_hex[15]_i_5 
       (.I0(switches_IBUF[3]),
        .I1(switches_IBUF[4]),
        .I2(switches_IBUF[0]),
        .I3(switches_IBUF[1]),
        .I4(switches_IBUF[2]),
        .O(\reg_hex[15]_i_5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[0]),
        .Q(\reg_hex_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[10]),
        .Q(\reg_hex_reg_n_1_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[11]),
        .Q(\reg_hex_reg_n_1_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[12]),
        .Q(\reg_hex_reg_n_1_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[13]),
        .Q(\reg_hex_reg_n_1_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[14]),
        .Q(\reg_hex_reg_n_1_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[15]),
        .Q(\reg_hex_reg_n_1_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[1]),
        .Q(\reg_hex_reg_n_1_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[2]),
        .Q(\reg_hex_reg_n_1_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[3]),
        .Q(\reg_hex_reg_n_1_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[4]),
        .Q(\reg_hex_reg_n_1_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[5]),
        .Q(\reg_hex_reg_n_1_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[6]),
        .Q(\reg_hex_reg_n_1_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[7]),
        .Q(\reg_hex_reg_n_1_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[8]),
        .Q(\reg_hex_reg_n_1_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_hex_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_hex[9]),
        .Q(\reg_hex_reg_n_1_[9] ),
        .R(1'b0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF sink_bit_OBUF_inst
       (.I(sink_bit_OBUF),
        .O(sink_bit));
  IBUF \switches_IBUF[0]_inst 
       (.I(switches[0]),
        .O(switches_IBUF[0]));
  IBUF \switches_IBUF[1]_inst 
       (.I(switches[1]),
        .O(switches_IBUF[1]));
  IBUF \switches_IBUF[2]_inst 
       (.I(switches[2]),
        .O(switches_IBUF[2]));
  IBUF \switches_IBUF[3]_inst 
       (.I(switches[3]),
        .O(switches_IBUF[3]));
  IBUF \switches_IBUF[4]_inst 
       (.I(switches[4]),
        .O(switches_IBUF[4]));
  IBUF \switches_IBUF[5]_inst 
       (.I(switches[5]),
        .O(switches_IBUF[5]));
  IBUF \switches_IBUF[6]_inst 
       (.I(switches[6]),
        .O(switches_IBUF[6]));
  IBUF \switches_IBUF[7]_inst 
       (.I(switches[7]),
        .O(switches_IBUF[7]));
  OBUF we_dm_OBUF_inst
       (.I(we_dm_OBUF),
        .O(we_dm));
endmodule

module mult
   (D,
    y,
    alu_pa,
    B,
    \q_reg[2] );
  output [31:0]D;
  output [31:0]y;
  input [31:0]alu_pa;
  input [16:0]B;
  input [14:0]\q_reg[2] ;

  wire [16:0]B;
  wire [31:0]D;
  wire [31:0]alu_pa;
  wire \q[11]_i_2_n_1 ;
  wire \q[11]_i_3_n_1 ;
  wire \q[11]_i_4_n_1 ;
  wire \q[11]_i_5_n_1 ;
  wire \q[15]_i_2_n_1 ;
  wire \q[15]_i_3_n_1 ;
  wire \q[15]_i_4_n_1 ;
  wire \q[15]_i_5_n_1 ;
  wire \q[19]_i_2__0_n_1 ;
  wire \q[19]_i_2_n_1 ;
  wire \q[19]_i_3__0_n_1 ;
  wire \q[19]_i_3_n_1 ;
  wire \q[19]_i_4__0_n_1 ;
  wire \q[19]_i_4_n_1 ;
  wire \q[19]_i_5__0_n_1 ;
  wire \q[23]_i_2__0_n_1 ;
  wire \q[23]_i_2_n_1 ;
  wire \q[23]_i_3__0_n_1 ;
  wire \q[23]_i_3_n_1 ;
  wire \q[23]_i_4__0_n_1 ;
  wire \q[23]_i_4_n_1 ;
  wire \q[23]_i_5__0_n_1 ;
  wire \q[23]_i_5_n_1 ;
  wire \q[27]_i_2__0_n_1 ;
  wire \q[27]_i_2_n_1 ;
  wire \q[27]_i_3__0_n_1 ;
  wire \q[27]_i_3_n_1 ;
  wire \q[27]_i_4__0_n_1 ;
  wire \q[27]_i_4_n_1 ;
  wire \q[27]_i_5__0_n_1 ;
  wire \q[27]_i_5_n_1 ;
  wire \q[31]_i_2_n_1 ;
  wire \q[31]_i_3__0_n_1 ;
  wire \q[31]_i_3_n_1 ;
  wire \q[31]_i_4__0_n_1 ;
  wire \q[31]_i_4_n_1 ;
  wire \q[31]_i_5__0_n_1 ;
  wire \q[31]_i_5_n_1 ;
  wire \q[31]_i_6_n_1 ;
  wire \q[3]_i_2_n_1 ;
  wire \q[3]_i_3_n_1 ;
  wire \q[3]_i_4_n_1 ;
  wire \q[3]_i_5_n_1 ;
  wire \q[7]_i_2_n_1 ;
  wire \q[7]_i_3_n_1 ;
  wire \q[7]_i_4_n_1 ;
  wire \q[7]_i_5_n_1 ;
  wire \q_reg[11]_i_1_n_1 ;
  wire \q_reg[11]_i_1_n_2 ;
  wire \q_reg[11]_i_1_n_3 ;
  wire \q_reg[11]_i_1_n_4 ;
  wire \q_reg[15]_i_1_n_1 ;
  wire \q_reg[15]_i_1_n_2 ;
  wire \q_reg[15]_i_1_n_3 ;
  wire \q_reg[15]_i_1_n_4 ;
  wire \q_reg[19]_i_1__0_n_1 ;
  wire \q_reg[19]_i_1__0_n_2 ;
  wire \q_reg[19]_i_1__0_n_3 ;
  wire \q_reg[19]_i_1__0_n_4 ;
  wire \q_reg[19]_i_1_n_1 ;
  wire \q_reg[19]_i_1_n_2 ;
  wire \q_reg[19]_i_1_n_3 ;
  wire \q_reg[19]_i_1_n_4 ;
  wire \q_reg[23]_i_1__0_n_1 ;
  wire \q_reg[23]_i_1__0_n_2 ;
  wire \q_reg[23]_i_1__0_n_3 ;
  wire \q_reg[23]_i_1__0_n_4 ;
  wire \q_reg[23]_i_1_n_1 ;
  wire \q_reg[23]_i_1_n_2 ;
  wire \q_reg[23]_i_1_n_3 ;
  wire \q_reg[23]_i_1_n_4 ;
  wire \q_reg[27]_i_1__0_n_1 ;
  wire \q_reg[27]_i_1__0_n_2 ;
  wire \q_reg[27]_i_1__0_n_3 ;
  wire \q_reg[27]_i_1__0_n_4 ;
  wire \q_reg[27]_i_1_n_1 ;
  wire \q_reg[27]_i_1_n_2 ;
  wire \q_reg[27]_i_1_n_3 ;
  wire \q_reg[27]_i_1_n_4 ;
  wire [14:0]\q_reg[2] ;
  wire \q_reg[31]_i_1_n_1 ;
  wire \q_reg[31]_i_1_n_2 ;
  wire \q_reg[31]_i_1_n_3 ;
  wire \q_reg[31]_i_1_n_4 ;
  wire \q_reg[31]_i_2_n_2 ;
  wire \q_reg[31]_i_2_n_3 ;
  wire \q_reg[31]_i_2_n_4 ;
  wire \q_reg[3]_i_1_n_1 ;
  wire \q_reg[3]_i_1_n_2 ;
  wire \q_reg[3]_i_1_n_3 ;
  wire \q_reg[3]_i_1_n_4 ;
  wire \q_reg[7]_i_1_n_1 ;
  wire \q_reg[7]_i_1_n_2 ;
  wire \q_reg[7]_i_1_n_3 ;
  wire \q_reg[7]_i_1_n_4 ;
  wire [31:0]y;
  wire y__0__0_n_100;
  wire y__0__0_n_101;
  wire y__0__0_n_102;
  wire y__0__0_n_103;
  wire y__0__0_n_104;
  wire y__0__0_n_105;
  wire y__0__0_n_106;
  wire y__0__0_n_59;
  wire y__0__0_n_60;
  wire y__0__0_n_61;
  wire y__0__0_n_62;
  wire y__0__0_n_63;
  wire y__0__0_n_64;
  wire y__0__0_n_65;
  wire y__0__0_n_66;
  wire y__0__0_n_67;
  wire y__0__0_n_68;
  wire y__0__0_n_69;
  wire y__0__0_n_70;
  wire y__0__0_n_71;
  wire y__0__0_n_72;
  wire y__0__0_n_73;
  wire y__0__0_n_74;
  wire y__0__0_n_75;
  wire y__0__0_n_76;
  wire y__0__0_n_77;
  wire y__0__0_n_78;
  wire y__0__0_n_79;
  wire y__0__0_n_80;
  wire y__0__0_n_81;
  wire y__0__0_n_82;
  wire y__0__0_n_83;
  wire y__0__0_n_84;
  wire y__0__0_n_85;
  wire y__0__0_n_86;
  wire y__0__0_n_87;
  wire y__0__0_n_88;
  wire y__0__0_n_89;
  wire y__0__0_n_90;
  wire y__0__0_n_91;
  wire y__0__0_n_92;
  wire y__0__0_n_93;
  wire y__0__0_n_94;
  wire y__0__0_n_95;
  wire y__0__0_n_96;
  wire y__0__0_n_97;
  wire y__0__0_n_98;
  wire y__0__0_n_99;
  wire y__0_n_100;
  wire y__0_n_101;
  wire y__0_n_102;
  wire y__0_n_103;
  wire y__0_n_104;
  wire y__0_n_105;
  wire y__0_n_106;
  wire y__0_n_107;
  wire y__0_n_108;
  wire y__0_n_109;
  wire y__0_n_110;
  wire y__0_n_111;
  wire y__0_n_112;
  wire y__0_n_113;
  wire y__0_n_114;
  wire y__0_n_115;
  wire y__0_n_116;
  wire y__0_n_117;
  wire y__0_n_118;
  wire y__0_n_119;
  wire y__0_n_120;
  wire y__0_n_121;
  wire y__0_n_122;
  wire y__0_n_123;
  wire y__0_n_124;
  wire y__0_n_125;
  wire y__0_n_126;
  wire y__0_n_127;
  wire y__0_n_128;
  wire y__0_n_129;
  wire y__0_n_130;
  wire y__0_n_131;
  wire y__0_n_132;
  wire y__0_n_133;
  wire y__0_n_134;
  wire y__0_n_135;
  wire y__0_n_136;
  wire y__0_n_137;
  wire y__0_n_138;
  wire y__0_n_139;
  wire y__0_n_140;
  wire y__0_n_141;
  wire y__0_n_142;
  wire y__0_n_143;
  wire y__0_n_144;
  wire y__0_n_145;
  wire y__0_n_146;
  wire y__0_n_147;
  wire y__0_n_148;
  wire y__0_n_149;
  wire y__0_n_150;
  wire y__0_n_151;
  wire y__0_n_152;
  wire y__0_n_153;
  wire y__0_n_154;
  wire y__0_n_59;
  wire y__0_n_60;
  wire y__0_n_61;
  wire y__0_n_62;
  wire y__0_n_63;
  wire y__0_n_64;
  wire y__0_n_65;
  wire y__0_n_66;
  wire y__0_n_67;
  wire y__0_n_68;
  wire y__0_n_69;
  wire y__0_n_70;
  wire y__0_n_71;
  wire y__0_n_72;
  wire y__0_n_73;
  wire y__0_n_74;
  wire y__0_n_75;
  wire y__0_n_76;
  wire y__0_n_77;
  wire y__0_n_78;
  wire y__0_n_79;
  wire y__0_n_80;
  wire y__0_n_81;
  wire y__0_n_82;
  wire y__0_n_83;
  wire y__0_n_84;
  wire y__0_n_85;
  wire y__0_n_86;
  wire y__0_n_87;
  wire y__0_n_88;
  wire y__0_n_89;
  wire y__0_n_90;
  wire y__0_n_91;
  wire y__0_n_92;
  wire y__0_n_93;
  wire y__0_n_94;
  wire y__0_n_95;
  wire y__0_n_96;
  wire y__0_n_97;
  wire y__0_n_98;
  wire y__0_n_99;
  wire y__1_n_107;
  wire y__1_n_108;
  wire y__1_n_109;
  wire y__1_n_110;
  wire y__1_n_111;
  wire y__1_n_112;
  wire y__1_n_113;
  wire y__1_n_114;
  wire y__1_n_115;
  wire y__1_n_116;
  wire y__1_n_117;
  wire y__1_n_118;
  wire y__1_n_119;
  wire y__1_n_120;
  wire y__1_n_121;
  wire y__1_n_122;
  wire y__1_n_123;
  wire y__1_n_124;
  wire y__1_n_125;
  wire y__1_n_126;
  wire y__1_n_127;
  wire y__1_n_128;
  wire y__1_n_129;
  wire y__1_n_130;
  wire y__1_n_131;
  wire y__1_n_132;
  wire y__1_n_133;
  wire y__1_n_134;
  wire y__1_n_135;
  wire y__1_n_136;
  wire y__1_n_137;
  wire y__1_n_138;
  wire y__1_n_139;
  wire y__1_n_140;
  wire y__1_n_141;
  wire y__1_n_142;
  wire y__1_n_143;
  wire y__1_n_144;
  wire y__1_n_145;
  wire y__1_n_146;
  wire y__1_n_147;
  wire y__1_n_148;
  wire y__1_n_149;
  wire y__1_n_150;
  wire y__1_n_151;
  wire y__1_n_152;
  wire y__1_n_153;
  wire y__1_n_154;
  wire y__1_n_59;
  wire y__1_n_60;
  wire y__1_n_61;
  wire y__1_n_62;
  wire y__1_n_63;
  wire y__1_n_64;
  wire y__1_n_65;
  wire y__1_n_66;
  wire y__1_n_67;
  wire y__1_n_68;
  wire y__1_n_69;
  wire y__1_n_70;
  wire y__1_n_71;
  wire y__1_n_72;
  wire y__1_n_73;
  wire y__1_n_74;
  wire y__1_n_75;
  wire y__1_n_76;
  wire y__1_n_77;
  wire y__1_n_78;
  wire y__1_n_79;
  wire y__1_n_80;
  wire y__1_n_81;
  wire y__1_n_82;
  wire y__1_n_83;
  wire y__1_n_84;
  wire y__1_n_85;
  wire y__1_n_86;
  wire y__1_n_87;
  wire y__1_n_88;
  wire y__1_n_89;
  wire y__1_n_90;
  wire y__2_n_100;
  wire y__2_n_101;
  wire y__2_n_102;
  wire y__2_n_103;
  wire y__2_n_104;
  wire y__2_n_105;
  wire y__2_n_106;
  wire y__2_n_59;
  wire y__2_n_60;
  wire y__2_n_61;
  wire y__2_n_62;
  wire y__2_n_63;
  wire y__2_n_64;
  wire y__2_n_65;
  wire y__2_n_66;
  wire y__2_n_67;
  wire y__2_n_68;
  wire y__2_n_69;
  wire y__2_n_70;
  wire y__2_n_71;
  wire y__2_n_72;
  wire y__2_n_73;
  wire y__2_n_74;
  wire y__2_n_75;
  wire y__2_n_76;
  wire y__2_n_77;
  wire y__2_n_78;
  wire y__2_n_79;
  wire y__2_n_80;
  wire y__2_n_81;
  wire y__2_n_82;
  wire y__2_n_83;
  wire y__2_n_84;
  wire y__2_n_85;
  wire y__2_n_86;
  wire y__2_n_87;
  wire y__2_n_88;
  wire y__2_n_89;
  wire y__2_n_90;
  wire y__2_n_91;
  wire y__2_n_92;
  wire y__2_n_93;
  wire y__2_n_94;
  wire y__2_n_95;
  wire y__2_n_96;
  wire y__2_n_97;
  wire y__2_n_98;
  wire y__2_n_99;
  wire [3:3]\NLW_q_reg[31]_i_2_CO_UNCONNECTED ;
  wire NLW_y__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_y__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_y__0_OVERFLOW_UNCONNECTED;
  wire NLW_y__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_y__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_y__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_y__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_y__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_y__0_CARRYOUT_UNCONNECTED;
  wire NLW_y__0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_y__0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_y__0__0_OVERFLOW_UNCONNECTED;
  wire NLW_y__0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_y__0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_y__0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_y__0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_y__0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_y__0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_y__0__0_PCOUT_UNCONNECTED;
  wire NLW_y__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_y__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_y__1_OVERFLOW_UNCONNECTED;
  wire NLW_y__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_y__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_y__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_y__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_y__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_y__1_CARRYOUT_UNCONNECTED;
  wire NLW_y__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_y__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_y__2_OVERFLOW_UNCONNECTED;
  wire NLW_y__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_y__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_y__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_y__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_y__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_y__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_y__2_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \q[11]_i_2 
       (.I0(y__2_n_80),
        .I1(y__0__0_n_97),
        .O(\q[11]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[11]_i_3 
       (.I0(y__2_n_81),
        .I1(y__0__0_n_98),
        .O(\q[11]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[11]_i_4 
       (.I0(y__2_n_82),
        .I1(y__0__0_n_99),
        .O(\q[11]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[11]_i_5 
       (.I0(y__2_n_83),
        .I1(y__0__0_n_100),
        .O(\q[11]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[15]_i_2 
       (.I0(y__2_n_76),
        .I1(y__0__0_n_93),
        .O(\q[15]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[15]_i_3 
       (.I0(y__2_n_77),
        .I1(y__0__0_n_94),
        .O(\q[15]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[15]_i_4 
       (.I0(y__2_n_78),
        .I1(y__0__0_n_95),
        .O(\q[15]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[15]_i_5 
       (.I0(y__2_n_79),
        .I1(y__0__0_n_96),
        .O(\q[15]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[19]_i_2 
       (.I0(y__2_n_104),
        .I1(y__0_n_104),
        .O(\q[19]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[19]_i_2__0 
       (.I0(y__2_n_72),
        .I1(y__0__0_n_89),
        .O(\q[19]_i_2__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[19]_i_3 
       (.I0(y__2_n_105),
        .I1(y__0_n_105),
        .O(\q[19]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[19]_i_3__0 
       (.I0(y__2_n_73),
        .I1(y__0__0_n_90),
        .O(\q[19]_i_3__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[19]_i_4 
       (.I0(y__2_n_106),
        .I1(y__0_n_106),
        .O(\q[19]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[19]_i_4__0 
       (.I0(y__2_n_74),
        .I1(y__0__0_n_91),
        .O(\q[19]_i_4__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[19]_i_5__0 
       (.I0(y__2_n_75),
        .I1(y__0__0_n_92),
        .O(\q[19]_i_5__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_2 
       (.I0(y__2_n_100),
        .I1(y__0_n_100),
        .O(\q[23]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_2__0 
       (.I0(y__2_n_68),
        .I1(y__0__0_n_85),
        .O(\q[23]_i_2__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_3 
       (.I0(y__2_n_101),
        .I1(y__0_n_101),
        .O(\q[23]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_3__0 
       (.I0(y__2_n_69),
        .I1(y__0__0_n_86),
        .O(\q[23]_i_3__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_4 
       (.I0(y__2_n_102),
        .I1(y__0_n_102),
        .O(\q[23]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_4__0 
       (.I0(y__2_n_70),
        .I1(y__0__0_n_87),
        .O(\q[23]_i_4__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_5 
       (.I0(y__2_n_103),
        .I1(y__0_n_103),
        .O(\q[23]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[23]_i_5__0 
       (.I0(y__2_n_71),
        .I1(y__0__0_n_88),
        .O(\q[23]_i_5__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_2 
       (.I0(y__2_n_96),
        .I1(y__0_n_96),
        .O(\q[27]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_2__0 
       (.I0(y__2_n_64),
        .I1(y__0__0_n_81),
        .O(\q[27]_i_2__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_3 
       (.I0(y__2_n_97),
        .I1(y__0_n_97),
        .O(\q[27]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_3__0 
       (.I0(y__2_n_65),
        .I1(y__0__0_n_82),
        .O(\q[27]_i_3__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_4 
       (.I0(y__2_n_98),
        .I1(y__0_n_98),
        .O(\q[27]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_4__0 
       (.I0(y__2_n_66),
        .I1(y__0__0_n_83),
        .O(\q[27]_i_4__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_5 
       (.I0(y__2_n_99),
        .I1(y__0_n_99),
        .O(\q[27]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[27]_i_5__0 
       (.I0(y__2_n_67),
        .I1(y__0__0_n_84),
        .O(\q[27]_i_5__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_2 
       (.I0(y__2_n_92),
        .I1(y__0_n_92),
        .O(\q[31]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_3 
       (.I0(y__2_n_93),
        .I1(y__0_n_93),
        .O(\q[31]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_3__0 
       (.I0(y__2_n_60),
        .I1(y__0__0_n_77),
        .O(\q[31]_i_3__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_4 
       (.I0(y__2_n_94),
        .I1(y__0_n_94),
        .O(\q[31]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_4__0 
       (.I0(y__2_n_61),
        .I1(y__0__0_n_78),
        .O(\q[31]_i_4__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_5 
       (.I0(y__2_n_95),
        .I1(y__0_n_95),
        .O(\q[31]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_5__0 
       (.I0(y__2_n_62),
        .I1(y__0__0_n_79),
        .O(\q[31]_i_5__0_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[31]_i_6 
       (.I0(y__2_n_63),
        .I1(y__0__0_n_80),
        .O(\q[31]_i_6_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[3]_i_2 
       (.I0(y__2_n_88),
        .I1(y__0__0_n_105),
        .O(\q[3]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[3]_i_3 
       (.I0(y__2_n_89),
        .I1(y__0__0_n_106),
        .O(\q[3]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[3]_i_4 
       (.I0(y__2_n_90),
        .I1(y__0_n_90),
        .O(\q[3]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[3]_i_5 
       (.I0(y__2_n_91),
        .I1(y__0_n_91),
        .O(\q[3]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_2 
       (.I0(y__2_n_84),
        .I1(y__0__0_n_101),
        .O(\q[7]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_3 
       (.I0(y__2_n_85),
        .I1(y__0__0_n_102),
        .O(\q[7]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_4 
       (.I0(y__2_n_86),
        .I1(y__0__0_n_103),
        .O(\q[7]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_5 
       (.I0(y__2_n_87),
        .I1(y__0__0_n_104),
        .O(\q[7]_i_5_n_1 ));
  CARRY4 \q_reg[11]_i_1 
       (.CI(\q_reg[7]_i_1_n_1 ),
        .CO({\q_reg[11]_i_1_n_1 ,\q_reg[11]_i_1_n_2 ,\q_reg[11]_i_1_n_3 ,\q_reg[11]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_80,y__2_n_81,y__2_n_82,y__2_n_83}),
        .O(y[11:8]),
        .S({\q[11]_i_2_n_1 ,\q[11]_i_3_n_1 ,\q[11]_i_4_n_1 ,\q[11]_i_5_n_1 }));
  CARRY4 \q_reg[15]_i_1 
       (.CI(\q_reg[11]_i_1_n_1 ),
        .CO({\q_reg[15]_i_1_n_1 ,\q_reg[15]_i_1_n_2 ,\q_reg[15]_i_1_n_3 ,\q_reg[15]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_76,y__2_n_77,y__2_n_78,y__2_n_79}),
        .O(y[15:12]),
        .S({\q[15]_i_2_n_1 ,\q[15]_i_3_n_1 ,\q[15]_i_4_n_1 ,\q[15]_i_5_n_1 }));
  CARRY4 \q_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\q_reg[19]_i_1_n_1 ,\q_reg[19]_i_1_n_2 ,\q_reg[19]_i_1_n_3 ,\q_reg[19]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_104,y__2_n_105,y__2_n_106,1'b0}),
        .O(D[19:16]),
        .S({\q[19]_i_2_n_1 ,\q[19]_i_3_n_1 ,\q[19]_i_4_n_1 ,y__1_n_90}));
  CARRY4 \q_reg[19]_i_1__0 
       (.CI(\q_reg[15]_i_1_n_1 ),
        .CO({\q_reg[19]_i_1__0_n_1 ,\q_reg[19]_i_1__0_n_2 ,\q_reg[19]_i_1__0_n_3 ,\q_reg[19]_i_1__0_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_72,y__2_n_73,y__2_n_74,y__2_n_75}),
        .O(y[19:16]),
        .S({\q[19]_i_2__0_n_1 ,\q[19]_i_3__0_n_1 ,\q[19]_i_4__0_n_1 ,\q[19]_i_5__0_n_1 }));
  CARRY4 \q_reg[23]_i_1 
       (.CI(\q_reg[19]_i_1_n_1 ),
        .CO({\q_reg[23]_i_1_n_1 ,\q_reg[23]_i_1_n_2 ,\q_reg[23]_i_1_n_3 ,\q_reg[23]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_100,y__2_n_101,y__2_n_102,y__2_n_103}),
        .O(D[23:20]),
        .S({\q[23]_i_2_n_1 ,\q[23]_i_3_n_1 ,\q[23]_i_4_n_1 ,\q[23]_i_5_n_1 }));
  CARRY4 \q_reg[23]_i_1__0 
       (.CI(\q_reg[19]_i_1__0_n_1 ),
        .CO({\q_reg[23]_i_1__0_n_1 ,\q_reg[23]_i_1__0_n_2 ,\q_reg[23]_i_1__0_n_3 ,\q_reg[23]_i_1__0_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_68,y__2_n_69,y__2_n_70,y__2_n_71}),
        .O(y[23:20]),
        .S({\q[23]_i_2__0_n_1 ,\q[23]_i_3__0_n_1 ,\q[23]_i_4__0_n_1 ,\q[23]_i_5__0_n_1 }));
  CARRY4 \q_reg[27]_i_1 
       (.CI(\q_reg[23]_i_1_n_1 ),
        .CO({\q_reg[27]_i_1_n_1 ,\q_reg[27]_i_1_n_2 ,\q_reg[27]_i_1_n_3 ,\q_reg[27]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_96,y__2_n_97,y__2_n_98,y__2_n_99}),
        .O(D[27:24]),
        .S({\q[27]_i_2_n_1 ,\q[27]_i_3_n_1 ,\q[27]_i_4_n_1 ,\q[27]_i_5_n_1 }));
  CARRY4 \q_reg[27]_i_1__0 
       (.CI(\q_reg[23]_i_1__0_n_1 ),
        .CO({\q_reg[27]_i_1__0_n_1 ,\q_reg[27]_i_1__0_n_2 ,\q_reg[27]_i_1__0_n_3 ,\q_reg[27]_i_1__0_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_64,y__2_n_65,y__2_n_66,y__2_n_67}),
        .O(y[27:24]),
        .S({\q[27]_i_2__0_n_1 ,\q[27]_i_3__0_n_1 ,\q[27]_i_4__0_n_1 ,\q[27]_i_5__0_n_1 }));
  CARRY4 \q_reg[31]_i_1 
       (.CI(\q_reg[27]_i_1_n_1 ),
        .CO({\q_reg[31]_i_1_n_1 ,\q_reg[31]_i_1_n_2 ,\q_reg[31]_i_1_n_3 ,\q_reg[31]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_92,y__2_n_93,y__2_n_94,y__2_n_95}),
        .O(D[31:28]),
        .S({\q[31]_i_2_n_1 ,\q[31]_i_3_n_1 ,\q[31]_i_4_n_1 ,\q[31]_i_5_n_1 }));
  CARRY4 \q_reg[31]_i_2 
       (.CI(\q_reg[27]_i_1__0_n_1 ),
        .CO({\NLW_q_reg[31]_i_2_CO_UNCONNECTED [3],\q_reg[31]_i_2_n_2 ,\q_reg[31]_i_2_n_3 ,\q_reg[31]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,y__2_n_61,y__2_n_62,y__2_n_63}),
        .O(y[31:28]),
        .S({\q[31]_i_3__0_n_1 ,\q[31]_i_4__0_n_1 ,\q[31]_i_5__0_n_1 ,\q[31]_i_6_n_1 }));
  CARRY4 \q_reg[3]_i_1 
       (.CI(\q_reg[31]_i_1_n_1 ),
        .CO({\q_reg[3]_i_1_n_1 ,\q_reg[3]_i_1_n_2 ,\q_reg[3]_i_1_n_3 ,\q_reg[3]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_88,y__2_n_89,y__2_n_90,y__2_n_91}),
        .O(y[3:0]),
        .S({\q[3]_i_2_n_1 ,\q[3]_i_3_n_1 ,\q[3]_i_4_n_1 ,\q[3]_i_5_n_1 }));
  CARRY4 \q_reg[7]_i_1 
       (.CI(\q_reg[3]_i_1_n_1 ),
        .CO({\q_reg[7]_i_1_n_1 ,\q_reg[7]_i_1_n_2 ,\q_reg[7]_i_1_n_3 ,\q_reg[7]_i_1_n_4 }),
        .CYINIT(1'b0),
        .DI({y__2_n_84,y__2_n_85,y__2_n_86,y__2_n_87}),
        .O(y[7:4]),
        .S({\q[7]_i_2_n_1 ,\q[7]_i_3_n_1 ,\q[7]_i_4_n_1 ,\q[7]_i_5_n_1 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    y__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_y__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,alu_pa[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_y__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_y__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_y__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_y__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_y__0_OVERFLOW_UNCONNECTED),
        .P({y__0_n_59,y__0_n_60,y__0_n_61,y__0_n_62,y__0_n_63,y__0_n_64,y__0_n_65,y__0_n_66,y__0_n_67,y__0_n_68,y__0_n_69,y__0_n_70,y__0_n_71,y__0_n_72,y__0_n_73,y__0_n_74,y__0_n_75,y__0_n_76,y__0_n_77,y__0_n_78,y__0_n_79,y__0_n_80,y__0_n_81,y__0_n_82,y__0_n_83,y__0_n_84,y__0_n_85,y__0_n_86,y__0_n_87,y__0_n_88,y__0_n_89,y__0_n_90,y__0_n_91,y__0_n_92,y__0_n_93,y__0_n_94,y__0_n_95,y__0_n_96,y__0_n_97,y__0_n_98,y__0_n_99,y__0_n_100,y__0_n_101,y__0_n_102,y__0_n_103,y__0_n_104,y__0_n_105,y__0_n_106}),
        .PATTERNBDETECT(NLW_y__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_y__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({y__0_n_107,y__0_n_108,y__0_n_109,y__0_n_110,y__0_n_111,y__0_n_112,y__0_n_113,y__0_n_114,y__0_n_115,y__0_n_116,y__0_n_117,y__0_n_118,y__0_n_119,y__0_n_120,y__0_n_121,y__0_n_122,y__0_n_123,y__0_n_124,y__0_n_125,y__0_n_126,y__0_n_127,y__0_n_128,y__0_n_129,y__0_n_130,y__0_n_131,y__0_n_132,y__0_n_133,y__0_n_134,y__0_n_135,y__0_n_136,y__0_n_137,y__0_n_138,y__0_n_139,y__0_n_140,y__0_n_141,y__0_n_142,y__0_n_143,y__0_n_144,y__0_n_145,y__0_n_146,y__0_n_147,y__0_n_148,y__0_n_149,y__0_n_150,y__0_n_151,y__0_n_152,y__0_n_153,y__0_n_154}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_y__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    y__0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,alu_pa[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_y__0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\q_reg[2] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_y__0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_y__0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_y__0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_y__0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_y__0__0_OVERFLOW_UNCONNECTED),
        .P({y__0__0_n_59,y__0__0_n_60,y__0__0_n_61,y__0__0_n_62,y__0__0_n_63,y__0__0_n_64,y__0__0_n_65,y__0__0_n_66,y__0__0_n_67,y__0__0_n_68,y__0__0_n_69,y__0__0_n_70,y__0__0_n_71,y__0__0_n_72,y__0__0_n_73,y__0__0_n_74,y__0__0_n_75,y__0__0_n_76,y__0__0_n_77,y__0__0_n_78,y__0__0_n_79,y__0__0_n_80,y__0__0_n_81,y__0__0_n_82,y__0__0_n_83,y__0__0_n_84,y__0__0_n_85,y__0__0_n_86,y__0__0_n_87,y__0__0_n_88,y__0__0_n_89,y__0__0_n_90,y__0__0_n_91,y__0__0_n_92,y__0__0_n_93,y__0__0_n_94,y__0__0_n_95,y__0__0_n_96,y__0__0_n_97,y__0__0_n_98,y__0__0_n_99,y__0__0_n_100,y__0__0_n_101,y__0__0_n_102,y__0__0_n_103,y__0__0_n_104,y__0__0_n_105,y__0__0_n_106}),
        .PATTERNBDETECT(NLW_y__0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_y__0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({y__0_n_107,y__0_n_108,y__0_n_109,y__0_n_110,y__0_n_111,y__0_n_112,y__0_n_113,y__0_n_114,y__0_n_115,y__0_n_116,y__0_n_117,y__0_n_118,y__0_n_119,y__0_n_120,y__0_n_121,y__0_n_122,y__0_n_123,y__0_n_124,y__0_n_125,y__0_n_126,y__0_n_127,y__0_n_128,y__0_n_129,y__0_n_130,y__0_n_131,y__0_n_132,y__0_n_133,y__0_n_134,y__0_n_135,y__0_n_136,y__0_n_137,y__0_n_138,y__0_n_139,y__0_n_140,y__0_n_141,y__0_n_142,y__0_n_143,y__0_n_144,y__0_n_145,y__0_n_146,y__0_n_147,y__0_n_148,y__0_n_149,y__0_n_150,y__0_n_151,y__0_n_152,y__0_n_153,y__0_n_154}),
        .PCOUT(NLW_y__0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_y__0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    y__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,alu_pa[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_y__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_y__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_y__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_y__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_y__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_y__1_OVERFLOW_UNCONNECTED),
        .P({y__1_n_59,y__1_n_60,y__1_n_61,y__1_n_62,y__1_n_63,y__1_n_64,y__1_n_65,y__1_n_66,y__1_n_67,y__1_n_68,y__1_n_69,y__1_n_70,y__1_n_71,y__1_n_72,y__1_n_73,y__1_n_74,y__1_n_75,y__1_n_76,y__1_n_77,y__1_n_78,y__1_n_79,y__1_n_80,y__1_n_81,y__1_n_82,y__1_n_83,y__1_n_84,y__1_n_85,y__1_n_86,y__1_n_87,y__1_n_88,y__1_n_89,y__1_n_90,D[15:0]}),
        .PATTERNBDETECT(NLW_y__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_y__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({y__1_n_107,y__1_n_108,y__1_n_109,y__1_n_110,y__1_n_111,y__1_n_112,y__1_n_113,y__1_n_114,y__1_n_115,y__1_n_116,y__1_n_117,y__1_n_118,y__1_n_119,y__1_n_120,y__1_n_121,y__1_n_122,y__1_n_123,y__1_n_124,y__1_n_125,y__1_n_126,y__1_n_127,y__1_n_128,y__1_n_129,y__1_n_130,y__1_n_131,y__1_n_132,y__1_n_133,y__1_n_134,y__1_n_135,y__1_n_136,y__1_n_137,y__1_n_138,y__1_n_139,y__1_n_140,y__1_n_141,y__1_n_142,y__1_n_143,y__1_n_144,y__1_n_145,y__1_n_146,y__1_n_147,y__1_n_148,y__1_n_149,y__1_n_150,y__1_n_151,y__1_n_152,y__1_n_153,y__1_n_154}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_y__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    y__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,alu_pa[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_y__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\q_reg[2] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_y__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_y__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_y__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_y__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_y__2_OVERFLOW_UNCONNECTED),
        .P({y__2_n_59,y__2_n_60,y__2_n_61,y__2_n_62,y__2_n_63,y__2_n_64,y__2_n_65,y__2_n_66,y__2_n_67,y__2_n_68,y__2_n_69,y__2_n_70,y__2_n_71,y__2_n_72,y__2_n_73,y__2_n_74,y__2_n_75,y__2_n_76,y__2_n_77,y__2_n_78,y__2_n_79,y__2_n_80,y__2_n_81,y__2_n_82,y__2_n_83,y__2_n_84,y__2_n_85,y__2_n_86,y__2_n_87,y__2_n_88,y__2_n_89,y__2_n_90,y__2_n_91,y__2_n_92,y__2_n_93,y__2_n_94,y__2_n_95,y__2_n_96,y__2_n_97,y__2_n_98,y__2_n_99,y__2_n_100,y__2_n_101,y__2_n_102,y__2_n_103,y__2_n_104,y__2_n_105,y__2_n_106}),
        .PATTERNBDETECT(NLW_y__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_y__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({y__1_n_107,y__1_n_108,y__1_n_109,y__1_n_110,y__1_n_111,y__1_n_112,y__1_n_113,y__1_n_114,y__1_n_115,y__1_n_116,y__1_n_117,y__1_n_118,y__1_n_119,y__1_n_120,y__1_n_121,y__1_n_122,y__1_n_123,y__1_n_124,y__1_n_125,y__1_n_126,y__1_n_127,y__1_n_128,y__1_n_129,y__1_n_130,y__1_n_131,y__1_n_132,y__1_n_133,y__1_n_134,y__1_n_135,y__1_n_136,y__1_n_137,y__1_n_138,y__1_n_139,y__1_n_140,y__1_n_141,y__1_n_142,y__1_n_143,y__1_n_144,y__1_n_145,y__1_n_146,y__1_n_147,y__1_n_148,y__1_n_149,y__1_n_150,y__1_n_151,y__1_n_152,y__1_n_153,y__1_n_154}),
        .PCOUT(NLW_y__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_y__2_UNDERFLOW_UNCONNECTED));
endmodule

module regfile
   (D,
    rd10,
    rd20,
    switches_IBUF,
    \q_reg[2] ,
    \q_reg[2]_0 ,
    \switches[2] ,
    \q_reg[2]_1 ,
    \q_reg[6] ,
    \q_reg[2]_2 ,
    \q_reg[5] ,
    \q_reg[2]_3 ,
    \q_reg[5]_0 ,
    \q_reg[2]_4 ,
    \q_reg[6]_0 ,
    \q_reg[2]_5 ,
    \q_reg[6]_1 ,
    \q_reg[2]_6 ,
    \q_reg[3] ,
    \q_reg[2]_7 ,
    \q_reg[5]_1 ,
    \q_reg[2]_8 ,
    \q_reg[6]_2 ,
    \q_reg[2]_9 ,
    \q_reg[6]_3 ,
    \q_reg[2]_10 ,
    \q_reg[6]_4 ,
    \q_reg[2]_11 ,
    \q_reg[6]_5 ,
    \q_reg[2]_12 ,
    \q_reg[2]_13 ,
    \q_reg[6]_6 ,
    \q_reg[2]_14 ,
    \q_reg[6]_7 ,
    \q_reg[2]_15 ,
    \q_reg[6]_8 ,
    clk_pb_BUFG,
    we,
    wd,
    ADDRD);
  output [15:0]D;
  output [31:0]rd10;
  output [31:0]rd20;
  input [7:0]switches_IBUF;
  input \q_reg[2] ;
  input \q_reg[2]_0 ;
  input \switches[2] ;
  input \q_reg[2]_1 ;
  input \q_reg[6] ;
  input \q_reg[2]_2 ;
  input \q_reg[5] ;
  input \q_reg[2]_3 ;
  input \q_reg[5]_0 ;
  input \q_reg[2]_4 ;
  input \q_reg[6]_0 ;
  input \q_reg[2]_5 ;
  input \q_reg[6]_1 ;
  input \q_reg[2]_6 ;
  input \q_reg[3] ;
  input \q_reg[2]_7 ;
  input \q_reg[5]_1 ;
  input \q_reg[2]_8 ;
  input [7:0]\q_reg[6]_2 ;
  input \q_reg[2]_9 ;
  input \q_reg[6]_3 ;
  input \q_reg[2]_10 ;
  input \q_reg[6]_4 ;
  input \q_reg[2]_11 ;
  input \q_reg[6]_5 ;
  input \q_reg[2]_12 ;
  input \q_reg[2]_13 ;
  input \q_reg[6]_6 ;
  input \q_reg[2]_14 ;
  input \q_reg[6]_7 ;
  input \q_reg[2]_15 ;
  input \q_reg[6]_8 ;
  input clk_pb_BUFG;
  input we;
  input [31:0]wd;
  input [4:0]ADDRD;

  wire [4:0]ADDRD;
  wire [15:0]D;
  wire clk_pb_BUFG;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_10 ;
  wire \q_reg[2]_11 ;
  wire \q_reg[2]_12 ;
  wire \q_reg[2]_13 ;
  wire \q_reg[2]_14 ;
  wire \q_reg[2]_15 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire \q_reg[2]_6 ;
  wire \q_reg[2]_7 ;
  wire \q_reg[2]_8 ;
  wire \q_reg[2]_9 ;
  wire \q_reg[3] ;
  wire \q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire [7:0]\q_reg[6]_2 ;
  wire \q_reg[6]_3 ;
  wire \q_reg[6]_4 ;
  wire \q_reg[6]_5 ;
  wire \q_reg[6]_6 ;
  wire \q_reg[6]_7 ;
  wire \q_reg[6]_8 ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [31:0]rd30;
  wire \reg_hex[0]_i_2_n_1 ;
  wire \reg_hex[10]_i_2_n_1 ;
  wire \reg_hex[11]_i_2_n_1 ;
  wire \reg_hex[12]_i_2_n_1 ;
  wire \reg_hex[13]_i_2_n_1 ;
  wire \reg_hex[14]_i_2_n_1 ;
  wire \reg_hex[15]_i_2_n_1 ;
  wire \reg_hex[1]_i_2_n_1 ;
  wire \reg_hex[2]_i_2_n_1 ;
  wire \reg_hex[3]_i_2_n_1 ;
  wire \reg_hex[4]_i_2_n_1 ;
  wire \reg_hex[5]_i_2_n_1 ;
  wire \reg_hex[6]_i_2_n_1 ;
  wire \reg_hex[7]_i_2_n_1 ;
  wire \reg_hex[8]_i_2_n_1 ;
  wire \reg_hex[9]_i_2_n_1 ;
  wire \switches[2] ;
  wire [7:0]switches_IBUF;
  wire [31:0]wd;
  wire we;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r3_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[0]_i_2 
       (.I0(\q_reg[2]_0 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[16]),
        .I3(switches_IBUF[5]),
        .I4(rd30[0]),
        .I5(\switches[2] ),
        .O(\reg_hex[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[10]_i_2 
       (.I0(\q_reg[6]_6 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[26]),
        .I3(switches_IBUF[5]),
        .I4(rd30[10]),
        .I5(\switches[2] ),
        .O(\reg_hex[10]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[11]_i_2 
       (.I0(\q_reg[6]_7 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[27]),
        .I3(switches_IBUF[5]),
        .I4(rd30[11]),
        .I5(\switches[2] ),
        .O(\reg_hex[11]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[12]_i_2 
       (.I0(\q_reg[5] ),
        .I1(switches_IBUF[6]),
        .I2(rd30[28]),
        .I3(switches_IBUF[5]),
        .I4(rd30[12]),
        .I5(\switches[2] ),
        .O(\reg_hex[12]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[13]_i_2 
       (.I0(\q_reg[6]_8 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[29]),
        .I3(switches_IBUF[5]),
        .I4(rd30[13]),
        .I5(\switches[2] ),
        .O(\reg_hex[13]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0088008830BB3088)) 
    \reg_hex[14]_i_2 
       (.I0(\q_reg[6]_2 [0]),
        .I1(switches_IBUF[6]),
        .I2(rd30[30]),
        .I3(switches_IBUF[5]),
        .I4(rd30[14]),
        .I5(\switches[2] ),
        .O(\reg_hex[14]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[15]_i_2 
       (.I0(\q_reg[5]_0 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[31]),
        .I3(switches_IBUF[5]),
        .I4(rd30[15]),
        .I5(\switches[2] ),
        .O(\reg_hex[15]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[1]_i_2 
       (.I0(\q_reg[6] ),
        .I1(switches_IBUF[6]),
        .I2(rd30[17]),
        .I3(switches_IBUF[5]),
        .I4(rd30[1]),
        .I5(\switches[2] ),
        .O(\reg_hex[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[2]_i_2 
       (.I0(\q_reg[6]_0 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[18]),
        .I3(switches_IBUF[5]),
        .I4(rd30[2]),
        .I5(\switches[2] ),
        .O(\reg_hex[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[3]_i_2 
       (.I0(\q_reg[6]_1 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[19]),
        .I3(switches_IBUF[5]),
        .I4(rd30[3]),
        .I5(\switches[2] ),
        .O(\reg_hex[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[4]_i_2 
       (.I0(\q_reg[3] ),
        .I1(switches_IBUF[6]),
        .I2(rd30[20]),
        .I3(switches_IBUF[5]),
        .I4(rd30[4]),
        .I5(\switches[2] ),
        .O(\reg_hex[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[5]_i_2 
       (.I0(\q_reg[5]_1 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[21]),
        .I3(switches_IBUF[5]),
        .I4(rd30[5]),
        .I5(\switches[2] ),
        .O(\reg_hex[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[6]_i_2 
       (.I0(\q_reg[6]_3 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[22]),
        .I3(switches_IBUF[5]),
        .I4(rd30[6]),
        .I5(\switches[2] ),
        .O(\reg_hex[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[7]_i_2 
       (.I0(\q_reg[6]_4 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[23]),
        .I3(switches_IBUF[5]),
        .I4(rd30[7]),
        .I5(\switches[2] ),
        .O(\reg_hex[7]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[8]_i_2 
       (.I0(\q_reg[6]_5 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[24]),
        .I3(switches_IBUF[5]),
        .I4(rd30[8]),
        .I5(\switches[2] ),
        .O(\reg_hex[8]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \reg_hex[9]_i_2 
       (.I0(\q_reg[6]_5 ),
        .I1(switches_IBUF[6]),
        .I2(rd30[25]),
        .I3(switches_IBUF[5]),
        .I4(rd30[9]),
        .I5(\switches[2] ),
        .O(\reg_hex[9]_i_2_n_1 ));
  MUXF7 \reg_hex_reg[0]_i_1 
       (.I0(\reg_hex[0]_i_2_n_1 ),
        .I1(\q_reg[2] ),
        .O(D[0]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[10]_i_1 
       (.I0(\reg_hex[10]_i_2_n_1 ),
        .I1(\q_reg[2]_13 ),
        .O(D[10]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[11]_i_1 
       (.I0(\reg_hex[11]_i_2_n_1 ),
        .I1(\q_reg[2]_14 ),
        .O(D[11]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[12]_i_1 
       (.I0(\reg_hex[12]_i_2_n_1 ),
        .I1(\q_reg[2]_2 ),
        .O(D[12]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[13]_i_1 
       (.I0(\reg_hex[13]_i_2_n_1 ),
        .I1(\q_reg[2]_15 ),
        .O(D[13]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[14]_i_1 
       (.I0(\reg_hex[14]_i_2_n_1 ),
        .I1(\q_reg[2]_8 ),
        .O(D[14]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[15]_i_1 
       (.I0(\reg_hex[15]_i_2_n_1 ),
        .I1(\q_reg[2]_3 ),
        .O(D[15]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[1]_i_1 
       (.I0(\reg_hex[1]_i_2_n_1 ),
        .I1(\q_reg[2]_1 ),
        .O(D[1]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[2]_i_1 
       (.I0(\reg_hex[2]_i_2_n_1 ),
        .I1(\q_reg[2]_4 ),
        .O(D[2]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[3]_i_1 
       (.I0(\reg_hex[3]_i_2_n_1 ),
        .I1(\q_reg[2]_5 ),
        .O(D[3]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[4]_i_1 
       (.I0(\reg_hex[4]_i_2_n_1 ),
        .I1(\q_reg[2]_6 ),
        .O(D[4]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[5]_i_1 
       (.I0(\reg_hex[5]_i_2_n_1 ),
        .I1(\q_reg[2]_7 ),
        .O(D[5]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[6]_i_1 
       (.I0(\reg_hex[6]_i_2_n_1 ),
        .I1(\q_reg[2]_9 ),
        .O(D[6]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[7]_i_1 
       (.I0(\reg_hex[7]_i_2_n_1 ),
        .I1(\q_reg[2]_10 ),
        .O(D[7]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[8]_i_1 
       (.I0(\reg_hex[8]_i_2_n_1 ),
        .I1(\q_reg[2]_12 ),
        .O(D[8]),
        .S(switches_IBUF[7]));
  MUXF7 \reg_hex_reg[9]_i_1 
       (.I0(\reg_hex[9]_i_2_n_1 ),
        .I1(\q_reg[2]_11 ),
        .O(D[9]),
        .S(switches_IBUF[7]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_0_5
       (.ADDRA({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRB({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRC({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRD(ADDRD),
        .DIA(wd[1:0]),
        .DIB(wd[3:2]),
        .DIC(wd[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_12_17
       (.ADDRA({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRB({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRC({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRD(ADDRD),
        .DIA(wd[13:12]),
        .DIB(wd[15:14]),
        .DIC(wd[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_18_23
       (.ADDRA({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRB({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRC({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRD(ADDRD),
        .DIA(wd[19:18]),
        .DIB(wd[21:20]),
        .DIC(wd[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_24_29
       (.ADDRA({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRB({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRC({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRD(ADDRD),
        .DIA(wd[25:24]),
        .DIB(wd[27:26]),
        .DIC(wd[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_30_31
       (.ADDRA({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRB({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRC({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRD(ADDRD),
        .DIA(wd[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[31:30]),
        .DOB(NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_6_11
       (.ADDRA({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRB({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRC({\q_reg[6]_2 [5],\q_reg[6]_2 [5],\q_reg[6]_2 [7:5]}),
        .ADDRD(ADDRD),
        .DIA(wd[7:6]),
        .DIB(wd[9:8]),
        .DIC(wd[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_0_5
       (.ADDRA({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRB({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRC({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRD(ADDRD),
        .DIA(wd[1:0]),
        .DIB(wd[3:2]),
        .DIC(wd[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_12_17
       (.ADDRA({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRB({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRC({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRD(ADDRD),
        .DIA(wd[13:12]),
        .DIB(wd[15:14]),
        .DIC(wd[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_18_23
       (.ADDRA({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRB({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRC({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRD(ADDRD),
        .DIA(wd[19:18]),
        .DIB(wd[21:20]),
        .DIC(wd[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_24_29
       (.ADDRA({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRB({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRC({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRD(ADDRD),
        .DIA(wd[25:24]),
        .DIB(wd[27:26]),
        .DIC(wd[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_30_31
       (.ADDRA({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRB({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRC({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRD(ADDRD),
        .DIA(wd[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[31:30]),
        .DOB(NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_6_11
       (.ADDRA({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRB({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRC({\q_reg[6]_2 [4:1],\q_reg[6]_2 [4]}),
        .ADDRD(ADDRD),
        .DIA(wd[7:6]),
        .DIB(wd[9:8]),
        .DIC(wd[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r3_0_31_0_5
       (.ADDRA(switches_IBUF[4:0]),
        .ADDRB(switches_IBUF[4:0]),
        .ADDRC(switches_IBUF[4:0]),
        .ADDRD(ADDRD),
        .DIA(wd[1:0]),
        .DIB(wd[3:2]),
        .DIC(wd[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd30[1:0]),
        .DOB(rd30[3:2]),
        .DOC(rd30[5:4]),
        .DOD(NLW_rf_reg_r3_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r3_0_31_12_17
       (.ADDRA(switches_IBUF[4:0]),
        .ADDRB(switches_IBUF[4:0]),
        .ADDRC(switches_IBUF[4:0]),
        .ADDRD(ADDRD),
        .DIA(wd[13:12]),
        .DIB(wd[15:14]),
        .DIC(wd[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd30[13:12]),
        .DOB(rd30[15:14]),
        .DOC(rd30[17:16]),
        .DOD(NLW_rf_reg_r3_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r3_0_31_18_23
       (.ADDRA(switches_IBUF[4:0]),
        .ADDRB(switches_IBUF[4:0]),
        .ADDRC(switches_IBUF[4:0]),
        .ADDRD(ADDRD),
        .DIA(wd[19:18]),
        .DIB(wd[21:20]),
        .DIC(wd[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd30[19:18]),
        .DOB(rd30[21:20]),
        .DOC(rd30[23:22]),
        .DOD(NLW_rf_reg_r3_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r3_0_31_24_29
       (.ADDRA(switches_IBUF[4:0]),
        .ADDRB(switches_IBUF[4:0]),
        .ADDRC(switches_IBUF[4:0]),
        .ADDRD(ADDRD),
        .DIA(wd[25:24]),
        .DIB(wd[27:26]),
        .DIC(wd[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd30[25:24]),
        .DOB(rd30[27:26]),
        .DOC(rd30[29:28]),
        .DOD(NLW_rf_reg_r3_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r3_0_31_30_31
       (.ADDRA(switches_IBUF[4:0]),
        .ADDRB(switches_IBUF[4:0]),
        .ADDRC(switches_IBUF[4:0]),
        .ADDRD(ADDRD),
        .DIA(wd[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd30[31:30]),
        .DOB(NLW_rf_reg_r3_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r3_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r3_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r3_0_31_6_11
       (.ADDRA(switches_IBUF[4:0]),
        .ADDRB(switches_IBUF[4:0]),
        .ADDRC(switches_IBUF[4:0]),
        .ADDRD(ADDRD),
        .DIA(wd[7:6]),
        .DIB(wd[9:8]),
        .DIC(wd[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd30[7:6]),
        .DOB(rd30[9:8]),
        .DOC(rd30[11:10]),
        .DOD(NLW_rf_reg_r3_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_pb_BUFG),
        .WE(we));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
