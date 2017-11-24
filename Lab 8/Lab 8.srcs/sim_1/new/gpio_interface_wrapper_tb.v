`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 07:30:37 PM
// Design Name: 
// Module Name: gpio_interface_wrapper_tb
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


module gpio_interface_wrapper_tb;

    reg clock, reset;

    reg gpio_write_enable;
    reg [1:0] address;

    reg [31:0] gpi1, gpi2, write_data;

    wire [31:0] gpo1, gpo2, read_data;


    task tick;
    begin
        clock = 1; #5;
        clock = 0; #5;
    end
    endtask

    task flush;
    begin
        reset = 1; #5;
        reset = 0; #5;
    end
    endtask

    gpio_interface_wrapper #(32) gpio (
        .clock(clock),
        .reset(reset),
        .gpio_write_enable(gpio_write_enable),
        .address(address),
        .gpi1(gpi1),
        .gpi2(gpi2),
        .write_data(write_data),
        .gpo1(gpo1),
        .gpo2(gpo2),
        .read_data(read_data)
    );

    initial begin
        flush;

        gpi1 = 32'd1;
        gpi2 = 32'd2;

        $display("Writing into gpo1");
        address = 2'b10;
        gpio_write_enable = 1'b1;
        write_data = 32'd5;
        tick;

        $display("Writing into gpo2");
        address = 2'b11;
        gpio_write_enable = 1'b1;
        write_data = 32'd6;
        tick;

        write_data = 0;

        $display("Reading from gpi1");
        address = 2'b00;
        gpio_write_enable = 1'b0;
        tick;
        if(read_data != gpi1) begin
            $display("Error on GPI1 read!\n");
        end

        $display("Reading from gpi2");
        address = 2'b01;
        gpio_write_enable = 1'b0;
        tick;
        if(read_data != gpi2) begin
            $display("Error on GPI2 read!\n");
        end

        $display("Reading from gpo1");
        address = 2'b10;
        gpio_write_enable = 1'b0;
        tick;
        if(read_data != 32'd5) begin
            $display("Error on GPO1 read!\n");
        end

        $display("Reading from gpo2");
        address = 2'b11;
        gpio_write_enable = 1'b0;
        tick;
        if(read_data != 32'd6) begin
            $display("Error on GPO1 read!\n");
        end

        flush;
        $display("Success!");
    end

endmodule
