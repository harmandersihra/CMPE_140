`timescale 1ns / 1ps

module factorial_CU_DP_wrap(
    input GO, clk, rst
    input [31:0] n,
    output DONE,
    output [2:0] cs, ns,
    output [31:0] product
    );

    wire load_cnt, load_reg, sel_1, sel_2, cnt_en, gt;

factorial_CU u0(
    .go(GO), .clk(clk), .gt(gt), .rst(rst),
    .load_cnt(load_cnt), .load_reg(load_reg), .sel_1(sel_1),
    .sel_2(sel_2), .cnt_en(cnt_en), .DONE(DONE),
    .cs(cs), .ns(ns)
    );

factorial_DP u1(
    .n(n),
    .clk(clk), .load_cnt(load_cnt), .load_reg(load_reg),
    .sel_1(sel_1), .sel_2(sel_2), .cnt_en(cnt_en),
    .gt(gt), .product(product)
    );

endmodule
