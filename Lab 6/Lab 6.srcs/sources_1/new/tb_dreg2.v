module tb_dreg2;
    reg         clk, rst, en;
    reg [31:0]  d;
    wire [31:0] q;
    
    dreg2 DUT(clk, rst, en, d, q);
    
    task tick; begin #5 clk = 1; #5 clk = 0; end endtask
    task rest; begin #5 rst = 1; #5 rst = 0; end endtask
    
    initial begin
        rest;
        d=10;
        en=1;
        tick;
        if(q!=d)
        begin
            $display("DREG2 P1 FAILED");
            $finish;
        end  
        d=20;
        en=0;
        tick;
        if(q!=10)
        begin
            $display("DREG2 P2 FAILED");
            $finish;
        end 
        d=30;
        en=1;
        tick;
        if(q!=d)
        begin
            $display("DREG2 P3 FAILED");
            $finish;
        end 
        $display("DREG2 PASSED"); 
        $finish;
    end
endmodule