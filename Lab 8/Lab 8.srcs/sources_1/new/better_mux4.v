`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 04:34:09 PM
// Design Name: 
// Module Name: mux4
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

module better_mux4 #(parameter bus_width = 32)
    (
        input [1:0] select,
        input [bus_width-1:0] data_in0, data_in1, data_in2, data_in3,
        output [bus_width-1:0] data_output
    );

    assign data_output = (select == 2'b00) ? data_in0 :
                         (select == 2'b01) ? data_in1 :
                         (select == 2'b10) ? data_in2 : data_in3;
endmodule