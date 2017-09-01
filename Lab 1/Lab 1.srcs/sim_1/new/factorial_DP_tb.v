`timescale 1ns / 1ps

module factorial_DP_tb();
    reg [31:0] n;
    reg clk, load_cnt, load_reg, sel_1, sel_2, cnt_en;
    wire gt;
    reg [4:0] ctrl;
    wire [31:0] product;
    integer loop;
    
    factorial_DP u0(.n(n),.clk(clk), .load_cnt(load_cnt), .load_reg(load_reg), 
    .sel_1(sel_1), .sel_2(sel_2), .cnt_en(cnt_en), .gt(gt), .product(product));
    
    initial
    begin
        for(loop=0;loop<=10;loop=loop+1)//change loop=3 to loop=0 later
        begin
            n=loop;
            ctrl=5'b11000; //cs=0, ns=1
            {load_cnt, load_reg, sel_1, sel_2, cnt_en}=ctrl;
            tik_tok;
            ctrl=5'b00100; //cs=1, ns=2
            {load_cnt, load_reg, sel_1, sel_2, cnt_en}=ctrl;
            tik_tok;
            while(gt==1)
            begin
                ctrl=5'b01101; //cs=2, ns=3
                {load_cnt, load_reg, sel_1, sel_2, cnt_en}=ctrl;
                tik_tok;
                ctrl=5'b00110; //cs=3, ns=2
                {load_cnt, load_reg, sel_1, sel_2, cnt_en}=ctrl;
                tik_tok;
            end
            ctrl=5'b00110; //cs=2, ns=4
            {load_cnt, load_reg, sel_1, sel_2, cnt_en}=ctrl;
            tik_tok;
            
            ctrl=5'b00110; //cs=4, ns=0
            {load_cnt, load_reg, sel_1, sel_2, cnt_en}=ctrl;
            tik_tok;
            
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
            
        end
    $display ("FACTORIAL DP TB PASSED");
    #50 $stop;
    #20 $finish;
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
        $display ("FACTORIAL DP TB FAILED");
        #50 $stop;
        #20 $finish;
    end
    endtask;
    
endmodule
