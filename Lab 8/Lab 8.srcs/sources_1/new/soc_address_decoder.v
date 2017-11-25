`timescale 1ns / 1ps

module soc_address_decoder(
    input WE, 
    input [1:0] address, //note this MIPS address bit 11 and 8
    output reg WE1, WE2, WEM,
    output [1:0] RdSel
    );
    reg [2:0] out;
    assign RdSel = address;
    
    always@(WE,address)
    begin
        if(WE==1)
        begin
            case(address)
            2'b00:
            begin
                out=3'b001;
            end
            2'b10:
            begin
                out=3'b100;
            end
            2'b11:
            begin
                out=3'b010;
            end
            default:
            begin
                out=3'bxxx;
            end
            endcase
        end
        {WE1,WE2,WEM}=out;
    end
endmodule
