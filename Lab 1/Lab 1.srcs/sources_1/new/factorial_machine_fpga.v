`timescale 1ns / 1ps

module factorial_machine_fpga(
    input [3:0] A,
    input B,
    output [3:0] C,
    input D,
    output E,
    output F,
    input clk100MHz,
    output [7:0] LEDOUT,
    output [7:0] LEDSEL);

    wire [3:0] TOT0, TOT1, TOT2, TOT3, TOT4, TOT5, TOT6, TOT7;
    wire debounce;
    supply1[7:0] vcc;
    wire r0, r1, r2, r3, r4, r5, r6, r7;
    wire s0, s1, s2, s3, s4, s5, s6, s7;
    wire t0, t1, t2, t3, t4, t5, t6, t7;
    wire v0, v1, v2, v3, v4, v5, v6, v7;
    wire w0, w1, w2, w3, w4, w5, w6, w7;
    wire x0, x1, x2, x3, x4, x5, x6, x7;
    wire y0, y1, y2, y3, y4, y5, y6, y7;
    wire z0, z1, z2, z3, z4, z5, z6, z7;

    wire [2:0] cs, ns;
    wire [31:0] product;


    wire DONT_USE, clk_5KHz;

    clk_gen u1 (.clk100MHz(clk100MHz), .rst(rst), .clk_4sec(DONT_USE), .clk_5KHz(clk_5KHz));

    button_debouncer u2(clk_5KHz, B, debounce);

    factorial_CU_DP_wrap u3(.GO(D), .clk(debounce), .n(A), .DONE(F), .cs(cs), .ns(ns), .product(product));

    assign E=D;
    assign C=A;


    bin2bcd32 u4(product, TOT0, TOT1, TOT2, TOT3, TOT4, TOT5, TOT6, TOT7);
    bcd_to_7seg u5(TOT0, r0 ,r1 ,r2 ,r3 ,r4 ,r5 ,r6);
    bcd_to_7seg u6(TOT1, s0, s1, s2, s3, s4, s5, s6);
    bcd_to_7seg u7(TOT2, t0, t1, t2, t3, t4, t5, t6);
    bcd_to_7seg u8(TOT3, v0, v1, v2, v3, v4, v5, v6);
    bcd_to_7seg u9(TOT4, w0, w1, w2, w3, w4, w5, w6);
    bcd_to_7seg u10(TOT5, x0, x1, x2, x3, x4, x5, x6);
    bcd_to_7seg u11(TOT6, y0, y1, y2, y3, y4, y5, y6);
    bcd_to_7seg u12(TOT7, z0, z1, z2, z3, z4, z5, z6);

    led_mux u13(clk_5KHz, rst,
    {z7, z6, z5, z4, z3, z2, z1, z0}, {y7, y6, y5, y4, y3, y2, y1, y0},
    {x7, x6, x5, x4, x3, x2, x1, x0}, {w7, w6, w5, w4, w3, w2, w1, w0},
    {v7, v6, v5, v4, v3, v2, v1, v0}, {t7, t6, t5, t4, t3, t2, t1, t0},
    {s7, s6, s5, s4, s3, s2, s1, s0}, {r7, r6, r5, r4, r3, r2, r1, r0},
    LEDOUT, LEDSEL);

endmodule
