`timescale 1ns / 1ps

module factorial_DP(
    // Data input for Data Path
    input wire [31:0] n,

    // Control signals
    input wire clk, load_cnt, load_reg, sel_1, sel_2, cnt_en,

    // Output data/control signal
    output wire gt,
    output wire [31:0] product,

    // Error output
    output wire error
    );

    // Making interconnect wires
    wire [31:0] cnt_out, reg_out, mul_out, mux_1_out;

    assign error = (n > 12) ? 1 : 0;

    // Initializing counter
    cnt_down counter(.load(load_cnt), .enable(cnt_en), .clk(clk), .D(n), .Q(cnt_out));

    // Initializing Register
    register mem(.loadreg(load_reg), .clk(clk), .D(mux_1_out), .Q(reg_out));

    // Initializing multiplier
    multiplier mult(.A(cnt_out), .B(reg_out), .out(mul_out));

    // Initializing Comparator
    compare comp(.A(cnt_out), .B(32'd1), .out(gt));

    // Initializing mux1
    mux2 #(32) mux_1(.a(32'd1), .b(mul_out), .sel(sel_1), .y(mux_1_out));

    // Initializing mux2
    mux2 #(32) mux_2(.a(32'd0), .b(reg_out), .sel(sel_2), .y(product));

endmodule
