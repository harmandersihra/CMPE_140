module tb_mult;
    reg [31:0]  a,b;
    wire [63:0] y;
    reg [63:0] hold;
    
    mult DUT (a, b, y);
 
    initial begin
        a=10;
        b=20;
        hold=a*b;
        #10;
        if(y!=hold)
        begin
            $display("MULT P1 FAILED");
            $finish;
        end  
        
        a=4000000000;
        b=20;
        hold=a*b;
        #10;
        if(y!=hold)
        begin
            $display("MULT P2 FAILED");
            $finish;
        end  
        $display("MULT PASSED");
        $finish;
    end
endmodule