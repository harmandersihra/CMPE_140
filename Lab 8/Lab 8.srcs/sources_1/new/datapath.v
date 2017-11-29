module datapath
(input clk, mult_en, jump_reg, rst, pc_src, jump, we_reg, alu_src, dm2reg, [2:0] alu_ctrl, [1:0] reg_dst, mult_sel, [4:0] ra3, [31:0] instr, rd_dm, output zero, [31:0] pc_current, alu_out, wd_dmM, rd3);
    wire [4:0]  rf_wa;
    wire [31:0] pc_plus4, pc_plus4D, pc_plus4E, pc_pre, pc_next, sext_imm, ba, bta, jta, alu_pa, alu_paE, alu_pb, wd_rf, instrD, instrE, wd_dmE;
    wire [63:0] mult_out;
    wire [31:0] lo_out, hi_out, mult_mux_out, jr_mux_out;
    assign ba = {sext_imm[29:0], 2'b00};
    assign jta = {pc_plus4[31:28], instr[25:0], 2'b00};
    // --- PC Logic --- //
    dreg       pc_reg     (clk, rst, jr_mux_out, pc_current);
    adder      pc_plus_4  (pc_current, 4, pc_plus4);
    adder      pc_plus_br (pc_plus4, ba, bta);
    mux2 #(32) pc_src_mux (pc_src, pc_plus4, bta, pc_pre);
    mux2 #(32) pc_jmp_mux (jump, pc_pre, jta, pc_next);
    mux2 #(32) pc_jreg_mux (jump_reg, pc_next, alu_pa, jr_mux_out);

    // --- RF Logic --- //
    //mux2 #(5)  rf_wa_mux  (reg_dst, instr[20:16], instr[15:11], rf_wa);
    mux4 #(5)  rf_wa_mux  (reg_dst, instrE[20:16], instrE[15:11], 31, 0, rf_wa);
    regfile    rf         (clk, we_reg, instrD[25:21], instrD[20:16], ra3, rf_wa, mult_mux_out, alu_pa, wd_dm, rd3);
    signext    se         (instr[15:0], sext_imm);

    // --- ALU Logic --- //
    mux2 #(32) alu_pb_mux (alu_src, wd_dmE, sext_imm, alu_pb);
    alu        alu        (alu_ctrl, alu_paE, alu_pb, zero, alu_out);

    // --- MEM Logic --- //
    mux2 #(32) rf_wd_mux  (dm2reg, alu_out, rd_dm, wd_rf);

    // --- MULTU Logic --- //
    mult multu (alu_paE, wd_dmE, mult_out);
    dreg2 lo (clk, rst, mult_en, mult_out[31:0], lo_out);
    dreg2 hi (clk, rst, mult_en, mult_out[63:32], hi_out);
    mux4 #(32) mult_mux(mult_sel, pc_plus4D, wd_rf, lo_out, hi_out, mult_mux_out);

    // --- Pipeline registers --- //
    register #(64)  d_reg(.D({instr, pc_plus4}), .Q({instrD, pc_plus4D}), .clk(clk), .loadreg(1'b1));
    register #(117) e_reg(.D({alu_pa, wd_dm, instrD[20:0], pc_plus4D}), .Q({alu_paE, wd_dmE, instrE[20:0], pc_plus4E}), .clk(clk), .loadreg(1'b1));
endmodule
