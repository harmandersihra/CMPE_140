`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 04:34:41 PM
// Design Name: 
// Module Name: gpio_address_decoder
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


module gpio_address_decoder
    (
        input gpio_write_enable,
        input [1:0] address,
        output [1:0] read_select,
        output write_enable1, write_enable2
    );

    assign read_select = address;
    assign write_enable1 = ((address == 2'b10) && (gpio_write_enable == 1'b1)) ? 1 : 0;
    assign write_enable2 = ((address == 2'b11) && (gpio_write_enable == 1'b1))? 1 : 0;
endmodule