`timescale 1ns / 1ps

module factorial_accelerator(
    input go, clk, rst,
    input [31:0] n,
    output done, error,
    output [2:0] cs, ns,
    output [31:0] product
    );

    wire load_cnt, load_reg, sel_1, sel_2, cnt_en, gt, error_connect;

factorial_CU u0(
    .go(go), .clk(clk), .gt(gt), .rst(rst), .error(error_connect),
    .load_cnt(load_cnt), .load_reg(load_reg), .sel_1(sel_1),
    .sel_2(sel_2), .cnt_en(cnt_en), .done(done),
    .curr_state(cs), .next_state(ns), .error_out(error)
    );

factorial_DP u1(
    .n(n), .error(error_connect),
    .clk(clk), .load_cnt(load_cnt), .load_reg(load_reg),
    .sel_1(sel_1), .sel_2(sel_2), .cnt_en(cnt_en),
    .gt(gt), .product(product)
    );

endmodule
