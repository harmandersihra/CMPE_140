`timescale 1ns / 1ps

module factorial_wrapper_tb();
    reg we, clk, rst;
    reg [1:0] address;
    reg [3:0] data;

    wire [31:0] rd;

    factorial_wrapper DUT(.we(we), .clk(clk), .rst(rst), .address(address), .data(data), .rd(rd));

    initial
    begin
        // Feeding in 4 as n
        rst = 0;
        we = 1;
        address = 0;
        data = 4;
        tik_tok;
        if(rd != 4) $display("Loading n register failed");

        // Setting go bit
        address = 1;
        data = 1;
        tik_tok;
        if(!rd) $display("Setting Go bit register failed");

        // Watching done bit and checking if it turns 1
        address = 2;
        tik_tok;
        while(rd != 1)
        begin
            tik_tok;
        end

        // Put result out of mux
        address = 3;
        tik_tok;
        if(rd != 24) $display("Incorrect result output");

        // Checking if error works
        tik_tok;
        address = 0;
        data = 13;
        tik_tok;
        address = 1;
        tik_tok;
        address = 2;
        tik_tok;
        while(!rd)
        begin
            tik_tok;
        end
        if(rd != 2) $display("Error flag not set when n is too large.");

        $display("Test bench finished");
        $finish;
    end

    task tik_tok;
    begin
        clk = 0;
        #2;
        clk = 1;
        #2;
    end
    endtask
endmodule
