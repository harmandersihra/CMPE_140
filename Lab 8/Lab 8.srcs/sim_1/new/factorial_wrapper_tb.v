`timescale 1ns / 1ps

module factorial_wrapper_tb();
    reg we, clk, rst;
    reg [1:0] address;
    reg [3:0] data;

    wire [31:0] rd;
    integer i, count;

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
        while(!rd) tik_tok;

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
        while(!rd) tik_tok;
        if(rd != 2) $display("Error flag not set when n is too large.");
        tik_tok;

        // Getting cycles needed for factorials 1-12
        for(i = 0; i < 13; i = i + 1)
        begin
            count = 0;
            address = 0;
            data = i;
            tik_tok;
            address = 1;
            data = 1;
            tik_tok;
            address = 2;
            tik_tok;
            while(!rd) tik_tok;
            $display("%d factorial took %d cycles.", i, count);
        end

        $display("Test bench finished");
        $finish;
    end

    task tik_tok;
    begin
        count = count + 1;
        clk = 0;
        #2;
        clk = 1;
        #2;
    end
    endtask
endmodule
