`timescale 1ns / 1ps

module factorial_DP(
    // Data input for Data Path
    input wire [31:0] n,

    // Control signals
    input wire clk, load_cnt, load_reg, sel_1, sel_2, cnt_en,

    // Output data/control signal
    output wire gt,
    output wire [31:0] product
    );

    // Making interconnect wires
    wire [31:0] cnt_out, reg_out, mul_out, mux_1_out;

    // Initializing counter
    cnt_down counter(.load(load_cnt), .enable(cnt_en), .clk(clk), .D(n), .Q(cnt_out));

    // Initializing Register
    register mem(.loadreg(load_reg), .clk(clk), .D(mux_1_out), .Q(reg_out));

    // Initializing multiplier
    multiplier mult(.A(cnt_out), .B(reg_out), .out(mul_out));

    // Initializing Comparator
    compare comp(.A(cnt_out), .B(32'd1), .out(gt));

    // Initializing mux1
    mux2 mux_1(.A(32'd1), .B(mul_out), .select(sel_1), .out(mux_1_out));

    // Initializing mux2
    mux2 mux_2(.A(32'd0), .B(reg_out), .select(sel_2), .out(product));

endmodule
