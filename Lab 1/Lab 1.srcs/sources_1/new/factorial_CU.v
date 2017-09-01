`timescale 1ns / 1ps

module factorial_CU(
    input wire GO, clk, gt,
    output reg load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE,
    output reg [2:0] cs, ns
    );
    
    reg [5:0] ctrl;
    
    always@(posedge clk)
    begin
        if(GO==1)
        begin
            cs=ns;
        end
        else
        begin
            cs=0;
        end      
    end
    
    always@(cs, gt)
    begin
            case(cs)
            3'b000://state 0
            begin
                ns=1;
            end
            3'b001://state 1
            begin
                ns=2;
            end
            3'b010://state 2
            begin
                if(gt==1)
                begin
                    ns=3;
                end
                else
                begin
                    ns=4;
                end
            end
            3'b011://state 3
            begin
                ns=2;
            end
            3'b100://state 4
            begin
                ns=0;
            end
            endcase
    end
    
    always@(cs, gt)
    begin
            case(cs)
            3'b000://state 0
            begin
                ctrl=6'b110000;
                {load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE}=ctrl;
            end
            3'b001://state 1
            begin
                ctrl=6'b001000;
                {load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE}=ctrl;
            end
            3'b010://state 2
            begin
                if(gt==1)
                begin
                    ctrl=6'b011010;
                    {load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE}=ctrl;
                end
                else
                begin
                    ctrl=6'b001100;
                    {load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE}=ctrl;
                end
            end
            3'b011://state 3
            begin
                ctrl=6'b001000;
                {load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE}=ctrl;
            end
            3'b100://state 4
            begin
                ctrl=6'b001101;
                {load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE}=ctrl;
            end
            endcase
    end

   
endmodule
