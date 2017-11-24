`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 04:34:41 PM
// Design Name: 
// Module Name: gpio_interface_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gpio_interface_wrapper #(parameter bus_width = 32)
    (
        input clock, reset,
        input gpio_write_enable,
        input [1:0] address,
        input [bus_width-1:0] gpi1, gpi2, write_data,
        output [bus_width-1:0] gpo1, gpo2, read_data
    );

    wire [1:0] gpio_decoder_select;
    wire write_enable1, write_enable2;

    gpio_address_decoder gpio_decoder (
            .gpio_write_enable(gpio_write_enable),
            .address(address),
            .read_select(gpio_decoder_select),
            .write_enable1(write_enable1),
            .write_enable2(write_enable2)
        );

    better_mux4 #(bus_width) output_mux (
            .select(gpio_decoder_select),
            .data_in0(gpi1), 
            .data_in1(gpi2),
            .data_in2(gpo1),
            .data_in3(gpo2),
            .data_output(read_data)
        );

    register_w_reset #(bus_width) gpo1_register (
            .clock(clock),
            .reset(reset),
            .enable(write_enable1),
            .data_input(write_data),
            .data_output(gpo1)
        );

    register_w_reset #(bus_width) gpo2_register (
            .clock(clock),
            .reset(reset),
            .enable(write_enable2),
            .data_input(write_data),
            .data_output(gpo2)
        );

endmodule
