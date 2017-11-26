module soc_single_MIPS_FGPA
(input clk, rst, button, [7:0] switches, output [4:0] LD, [7:0] LEDSEL, LEDOUT);
    wire  [15:0] reg_hex;
    wire        clk_sec, clk_5KHz, clk_pb;
    wire [7:0]  digit0, digit1, digit2, digit3, digit4, digit5, digit6, digit7;
    wire [31:0] gpo1, gpo2;
    
    clk_gen     clk_gen (clk, rst, clk_sec, clk_5KHz);

    soc_single_MIPS system(clk_5KHz, rst, {27'd0,switches[4:0]}, gpo1, gpo1, gpo2);
    
    assign LD[4]=gpo1[1];
    assign LD[3]=gpo1[0];
    assign LD[2]=gpo1[0];
    assign LD[1]=gpo1[0];
    assign LD[0]=gpo1[0];
    
    mux2 #(16)(gpo1[1], gpo2[15:0], gpo2[31:16], reg_hex);
    
    bcd_to_7seg bcd3    (reg_hex[15:12], digit3);
    bcd_to_7seg bcd2    (reg_hex[11:8], digit2);
    bcd_to_7seg bcd1    (reg_hex[7:4], digit1);
    bcd_to_7seg bcd0    (reg_hex[3:0], digit0);
    
    led_mux led_mux (clk_5KHz, rst, digit7, digit6, digit5, digit4, digit3, digit2, digit1, digit0, LEDSEL, LEDOUT);
    
endmodule
