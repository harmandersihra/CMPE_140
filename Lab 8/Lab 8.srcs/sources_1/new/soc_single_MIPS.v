`timescale 1ns / 1ps

module soc_single_MIPS(
    input clk, rst,
    input [31:0] gpi1, gpi2,
    output [31:0] gpo1, gpo2
    );
    wire MemWrite, WE1, WE2, WEM;
    wire [1:0] RdSel;
    wire [31:0] address, pc, WriteData, instr, DMemData, FactData, GPIOData, ReadData;
    wire [4:0] ra3; //nvm it is used
    wire [31:0] rd_dm, dispData; //unused
    
    soc_address_decoder dec(MemWrite, {address[11],address[8]}, 
    WE1, WE2, WEM, RdSel);
    
    imem imem (pc[7:2], instr);
    
    dmem dmem (clk, WEM, address[7:2], WriteData, DMemData);
    
    mips mips (clk, rst, ra3/*unused*/, instr, ReadData, MemWrite,
    pc, address, WriteData, dispData/*unused*/);
    
    factorial_wrapper fac (WE1, clk, rst, address[3:2], 
    WriteData[3:0], FactData);
    
    gpio_interface_wrapper #(32) gpio (clk, rst, WE2, 
    address[3:2], gpi1, gpi2, WriteData, 
    gpo1, gpo2, GPIOData);
    
    mux4 #(32) mux4_1 (RdSel, DMemData, DMemData, FactData, GPIOData, ReadData);
    
endmodule
