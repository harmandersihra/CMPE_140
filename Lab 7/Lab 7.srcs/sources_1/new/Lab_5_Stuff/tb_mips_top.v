module tb_mips_top;
    reg         clk, rst;
    wire        we_dm;
    wire [31:0] pc_current, instr, alu_out, wd_dm, rd_dm;
    
    mips_top DUT (clk, rst, we_dm, pc_current, instr, alu_out, wd_dm, rd_dm);
    
    reg [223:0] ctrl; 
    reg [7:0] count;

    task tick; begin #5 clk = 1; #5 clk = 0; end endtask
    task rest; begin #5 rst = 1; #5 rst = 0; end endtask
    
    initial begin
        rest;
        count=0;
        while(pc_current != 32'h54)
        begin
            tick;
            count=count+1;
            ctrl={DUT.mips.dp.rf.rf[4],DUT.mips.dp.rf.rf[31],DUT.mips.dp.rf.rf[29],DUT.mips.dp.rf.rf[8],DUT.mips.dp.rf.rf[2],DUT.mips.dp.rf.rf[16],DUT.mips.dp.lo.q}; 
            if(count==1)
                if(ctrl!={4,0,0,0,0,0,0})
                    $display("PC 4 ERROR");
            if(count==2)
                if(ctrl!={4,8,0,0,0,0,0})
                    $display("PC 10 ERROR");
            if(count==3)
                if(ctrl!={4,8,32'hFFFFF_FF8,0,0,0,0})
                    $display("PC 14 ERROR");
            if(count==4)
            begin
                if(ctrl!={4,8,32'hFFFFF_FF8,0,0,0,0})
                    $display("PC 18 ERROR");
                if(DUT.dmem.ram[63]!=4)
                    $display("PC 18 SW ERROR");
            end
            if(count==5)
            begin
                if(ctrl!={4,8,32'hFFFFF_FF8,0,0,0,0})
                    $display("PC 1C ERROR");
                if(DUT.dmem.ram[62]!=8)
                    $display("PC 1C SW ERROR");
            end
            if(count==6)
                if(ctrl!={4,8,32'hFFFFF_FF8,2,0,0,0})
                    $display("PC 20 ERROR");
            if(count==7)
                if(ctrl!={4,8,32'hFFFFF_FF8,0,0,0,0})
                    $display("PC 1C ERROR");
            if(count==8)
                if(ctrl!={4,8,32'hFFFFF_FF8,0,0,0,0})
                    $display("PC 34 ERROR");
            if(count==9)
                if(ctrl!={3,8,32'hFFFFF_FF8,0,0,0,0})
                    $display("PC 38 ERROR");
            if(count==12)
            begin
                if(DUT.dmem.ram[61]!=3)
                    $display("SW AT RAM[61] ERROR");
            end
            if(count==13)
            begin
                if(DUT.dmem.ram[60]!=60)
                    $display("SW AT RAM[60] ERROR");
            end
            if(count==20)
            begin
                if(DUT.dmem.ram[59]!=2)
                    $display("SW AT RAM[59] ERROR");
            end
            if(count==21)
            begin
                if(DUT.dmem.ram[58]!=60)
                    $display("SW AT RAM[58] ERROR");
            end
            if(count==28)
            begin
                if(DUT.dmem.ram[57]!=1)
                    $display("SW AT RAM[57] ERROR");
            end
            if(count==29)
            begin
                if(DUT.dmem.ram[56]!=60)
                    $display("SW AT RAM[56] ERROR");
            end
            if(count==32)
                if(ctrl!={1,32'h3C,32'hFFFFF_FE0,1,0,0,0})
                    $display("PC 28 ERROR");
            if(count==33)
                if(ctrl!={1,32'h3C,32'hFFFFF_FE0,1,1,0,0})
                    $display("PC 2C ERROR");
            if(count==34)
                if(ctrl!={1,32'h3C,32'hFFFFF_FE8,1,1,0,0})
                    $display("PC 30 ERROR");
            if(count==35)
                if(ctrl!={1,32'h3C,32'hFFFFF_FE8,1,1,0,0})
                    $display("PC 3C ERROR");
            if(count==36)
                if(ctrl!={1,32'h3C,32'hFFFFF_FE8,1,1,0,0})
                    $display("PC 40 ERROR");
            if(count==37)
                if(ctrl!={2,32'h3C,32'hFFFFF_FE8,1,1,0,0})
                    $display("PC 44 ERROR");
            if(count==38)
                if(ctrl!={2,32'h3C,32'hFFFFF_FF0,1,1,0,0})
                    $display("PC 48 ERROR");
            if(count==39)
                if(ctrl!={2,32'h3C,32'hFFFFF_FF0,1,1,0,2})
                    $display("PC 4C ERROR");
            if(count==40)
                if(ctrl!={2,32'h3C,32'hFFFFF_FF0,1,2,0,2})
                    $display("PC 50 ERROR");
            if(count==53)
                if(ctrl!={4,8,0,1,24,0,24})
                    $display("PC 8 ERROR");
            if(count==54)
                if(ctrl!={4,8,0,1,24,24,24})
                    $display("PC C ERROR");
            if(count==55)
                if(ctrl!={4,8,0,1,24,24,24})
                    $display("PC 54 ERROR");
        end
        $display("TB MIPS TOP COMPLETED");
        $finish;
    end
endmodule