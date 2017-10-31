module controlunit
(input zero, input [5:0] opcode, input [5:0] funct, 
output pc_src, output jump, output we_reg, output alu_src, output we_dm, output dm2reg, 
output mult_en, output jump_reg, output [1:0] reg_dst, output [1:0] mult_sel, output [2:0] alu_ctrl);
    wire [1:0] alu_op;
    wire branch;
    maindec md (opcode, branch, jump, reg_dst, we_reg, alu_src, we_dm, dm2reg, alu_op);
    auxdec  ad (alu_op, funct, alu_ctrl, mult_sel, mult_en, jump_reg);
    assign pc_src = branch & zero;
endmodule