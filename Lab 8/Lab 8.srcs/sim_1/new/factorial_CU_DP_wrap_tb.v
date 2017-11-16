`timescale 1ns / 1ps

module factorial_CU_DP_wrap_tb();
    reg GO, clk, rst;
    reg [31:0] n;
    wire DONE, error;
    wire [2:0] cs, ns;
    wire [31:0] product;
    integer loop;

factorial_accelerator u0(
    .go(GO), .clk(clk), .rst(rst),
    .n(n), .error(error),
    .done(DONE),
    .cs(cs), .ns(ns),
    .product(product)
    );
    initial
    begin
        for(loop=0;loop<=13;loop=loop+1)
        begin
            rst = 0;
            GO=0;
            tik_tok;
            n=loop;
            GO=1;
            while(DONE!=1 && error != 1)
            begin
                tik_tok;
            end
            if(n==0) if(product!=1) fail;
            if(n==1) if(product!=1) fail;
            if(n==2) if(product!=2) fail;
            if(n==3) if(product!=6) fail;
            if(n==4) if(product!=24) fail;
            if(n==5) if(product!=120) fail;
            if(n==6) if(product!=720) fail;
            if(n==7) if(product!=5040) fail;
            if(n==8) if(product!=40320) fail;
            if(n==9) if(product!=362880) fail;
            if(n==10) if(product!=3628800) fail;
            if(n==11) if(product!=39916800) fail;
            if(n==12) if(product!=479001600) fail;
            if(n==13) if(!error) fail;
        end
        pass;
    end

    task tik_tok;
    begin
        clk = 0;
        #2;
        clk = 1;
        #2;
        clk = 0;
    end
    endtask;

    task fail;
    begin
        $display ("FACTORIAL CU+DP Wrap TB FAILED");
        #50 $stop;
        #20 $finish;
    end
    endtask;

    task pass;
    begin
        $display ("FACTORIAL CU+DP Wrap TB PASSED");
        #50 $stop;
        #20 $finish;
    end
    endtask;
endmodule
