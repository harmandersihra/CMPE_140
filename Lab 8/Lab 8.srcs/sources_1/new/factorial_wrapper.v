`timescale 1ns / 1ps

module factorial_wrapper(
    input wire we, clk, rst,
    input wire [1:0]   address,
    input wire [3:0]   data,

    output wire [31:0] rd);

    wire we1, we2, go_out, go_in, we2_and_write_data_0, done;
    wire [1:0] rd_sel;
    wire [3:0] n;
    wire [31:0] prod;

    factorial_address_decoder fad(.we(we), .address(.address), .we1(we1), .we2(we2), .rd_sel(rd_sel));

    // 4-bit register to hold n
    register #(4) n_reg(.clk(clk), .D(data), .loadreg(we1), .Q(n));

    // 1-bit register to hold GO signal for output
    register #(1) go_out_reg(.clk(clk), .D(data[0]), .loadreg(we2), .Q(go_out));

    // AND gate for we2 and write_data[0]
    and2 #(1) and_we2_write_data(.a(we2), .b(write_data[0]), .y(we2_and_write_data_0));

    // 1-bit register to hold GO signal for input to factorial accelerator
    register #(1) go_in_reg(.clk(clk), .D(we2_and_write_data_0), .loadreg(1'b1), .Q(go_in));

    // factorial accelerator module
    factorial_CU_DP_wrap fact(.clk(clk), .GO(go_in), .rst(rst), .n({28'b0, n_reg}), .DONE(done), .product(prod));

endmodule
