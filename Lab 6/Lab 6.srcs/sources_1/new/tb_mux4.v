module tb_mux4;
    reg [1:0]   sel;
    reg [31:0]  a,b,c,d;
    wire [31:0] y;
    
    mux4#(32) DUT (sel, a, b, c, d, y);
   
    
    initial begin
        a=10;
        b=20;
        c=30;
        d=40;
        sel=0;
        #10;
        if(y!=a)
        begin
            $display("MUX4 A FAILED");
            $finish;
        end  
        sel=1;  
        #10;   
        if(y!=b)
        begin
            $display("MUX4 B FAILED");
            $finish;
        end
        sel=2; 
        #10;   
        if(y!=c)
        begin
            $display("MUX4 C FAILED");
            $finish;
        end  
        sel=3; 
        #10;
        if(y!=d)
        begin
            $display("MUX4 D FAILED");
            $finish;
        end  
        $display("MUX4 PASSED");
        $finish;
    end
endmodule