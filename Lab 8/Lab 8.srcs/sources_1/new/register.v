`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 04:34:09 PM
// Design Name: 
// Module Name: register
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


module register_w_reset #(parameter bus_width = 32)
    (
        input clock, enable, reset,
        input [bus_width-1:0] data_input,
        output reg [bus_width-1:0] data_output
    );

    initial data_output = 0;

    always@(posedge clock, posedge reset) begin
        if (reset) data_output <= 0;
        else if (enable) data_output <= data_input;
    end
endmodule
