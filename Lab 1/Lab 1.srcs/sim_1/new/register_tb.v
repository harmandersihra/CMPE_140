`timescale 1ns / 1ps

module register_tb();
    reg [32:0] D;
    reg loadreg, clk;
    wire [32:0] Q;
    integer loop;
    
    register u0(.D(D), .loadreg(loadreg), .clk(clk), .Q(Q));
    
    initial
    begin
        for(loop=100;loop>1;loop=loop-1)
        begin
            D=loop;
            loadreg=1;
            tik_tok;
            loadreg=0;
        end
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
endmodule
