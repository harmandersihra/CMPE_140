`timescale 1ns / 1ps

module factorial_CU_tb();
        reg GO, clk, gt;
        wire load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE;
        wire [2:0] cs, ns;  
        reg [5:0] ctrl;
        
        factorial_CU u0(
            .GO(GO), .clk(clk), .gt(gt),
            .load_cnt(load_cnt), .load_reg(load_reg), .sel_1(sel_1), 
            .sel_2(sel_2), .cnt_en(cnt_en), .DONE(DONE), .cs(cs), .ns(ns)   
            );
        initial
        begin
            GO=0;
            tik_tok;
            GO=1;
            gt=1;
            while(DONE!=1)
            begin
                tik_tok;
                ctrl={load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE};
               
                /*if(cs==0) if(ctrl!=6'b110000) $display ("FACTORIAL CU TB FAILED 1");
                if(cs==1) if(ctrl!=6'b001000) $display ("FACTORIAL CU TB FAILED 2");
                if(gt==1) if(cs==2) if(ctrl!=6'b011010) $display ("FACTORIAL CU TB FAILED 3");
                if(gt!=1) if(cs==2) if(ctrl!=6'b001100) $display ("FACTORIAL CU TB FAILED 4");
                if(cs==3) if(ctrl!=6'b001000) $display ("FACTORIAL CU TB FAILED5");                                    
                if(cs==4) if(ctrl!=6'b001101) $display ("FACTORIAL CU TB FAILED6");*/
                
                if(cs==0) if(ctrl!=6'b110000) fail;
                if(cs==1) if(ctrl!=6'b001000) fail;
                if(gt==1) if(cs==2) if(ctrl!=6'b011010) fail;
                if(gt!=1) if(cs==2) if(ctrl!=6'b001100) fail;
                if(cs==3) if(ctrl!=6'b001000) fail;                                    
                if(cs==4) if(ctrl!=6'b001101) fail;
                
                if(cs==3 && gt==1) gt=0; 
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
            $display ("FACTORIAL CU TB FAILED");
            #50 $stop;
            #20 $finish;
        end
        endtask;
        
        task pass;
        begin
            $display ("FACTORIAL CU TB PASSED");
            #50 $stop;
            #20 $finish;
        end
        endtask;

endmodule
