module mips(
    input clk, rst, [4:0] ra3, [31:0] instr, rd_dm,
    output we_dm, [31:0] pc_current, alu_out, wd_dm, rd3
    );

    wire       pc_src, jump, we_reg, alu_src, dm2reg, mult_en, jump_reg;
    wire [1:0] mult_sel, reg_dst;
    wire [2:0] alu_ctrl;

    datapath    dp (clk, mult_en, jump_reg, rst, pc_src, jump, we_reg, alu_src, dm2reg, alu_ctrl, reg_dst, mult_sel, ra3, instr, rd_dm, zero, pc_current, alu_out, wd_dm, rd3);
    controlunit cu (zero, clk, instr[31:26], instr[5:0], pc_src, jump, we_reg, alu_src, we_dm, dm2reg, mult_en, jump_reg, reg_dst, mult_sel, alu_ctrl);
endmodule