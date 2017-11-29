module datapath(
    input clk, mult_enE, jump_regD, rst, pc_srcD, jumpD, we_regW, alu_srcE, dm2regW, [2:0] alu_ctrlE, [1:0] reg_dstE, mult_selW, [4:0] ra3, [31:0] instrF, rd_dmM,
    output alu_zeroD, [31:0] pc_currentF, alu_outM, wd_dmM, rd3, instrD
    );

    wire zero;
    wire [4:0]  rf_waE, rf_waM, rf_waW;
    wire [31:0] pc_plus4F, pc_plus4D, pc_plus4E, pc_plus4M, pc_plus4W;
    wire [31:0] pc_pre, pc_next;
    wire [31:0] sext_immF, sext_immD, sext_immE;
    wire [31:0] ba, jta;
    wire [31:0] btaF, btaD;
    wire [31:0] alu_paD, alu_paE;
    wire [31:0] rd_dmW;
    wire [31:0] alu_outE, alu_outM, alu_outW;
    wire [31:0] alu_pbE, wd_rfW, instrD, instrE;
    wire [31:0] wd_dmD, wd_dmE;
    wire [63:0] mult_outE;
    wire [31:0] lo_outM, hi_outM, lo_outW, hi_outW;
    wire [31:0] rd_rfW, jr_mux_out;

    assign ba = {sext_immF[29:0], 2'b00};
    assign jta = {pc_plus4D[31:28], instrD[25:0], 2'b00};

    // --- PC Logic --- //
    dreg       pc_reg     (clk, rst, jr_mux_out, pc_currentF);
    adder      pc_plus_4  (pc_currentF, 4, pc_plus4F);
    adder      pc_plus_br (pc_plus4F, ba, btaF);
    mux2 #(32) pc_src_mux (pc_srcD, pc_plus4D, btaD, pc_pre);
    mux2 #(32) pc_jmp_mux (jumpD, pc_pre, jta, pc_next);
    mux2 #(32) pc_jreg_mux (jump_regD, pc_next, alu_paD, jr_mux_out);

    // --- RF Logic --- //
    mux4 #(5)  rf_wa_mux  (reg_dstE, instrE[20:16], instrE[15:11], 31, 0, rf_waE);
    regfile    rf         (clk, we_regW, instrD[25:21], instrD[20:16], ra3, rf_waW, rd_rfW, alu_paD, wd_dmD, rd3);
    signext    se         (instrF[15:0], sext_immF);

    // --- ALU Logic --- //
    mux2 #(32) alu_pb_mux (alu_srcE, wd_dmE, sext_immE, alu_pbE);
    alu        alu        (alu_ctrlE, alu_paE, alu_pbE, zero, alu_outE);

    // --- MEM Logic --- //
    mux2 #(32) rf_wd_mux  (dm2regW, alu_outW, rd_dmW, wd_rfW);

    // --- MULTU Logic --- //
    mult multu (alu_paE, wd_dmE, mult_outE);
    dreg2 lo (clk, rst, mult_enE, mult_outE[31:0], lo_outM);
    dreg2 hi (clk, rst, mult_enE, mult_outE[63:32], hi_outM);
    mux4 #(32) mult_mux(mult_selW, pc_plus4D, wd_rfW, lo_outW, hi_outW, rd_rfW);

    // --- Pipeline registers --- //
    register #(128) d_reg(.D({instrF, pc_plus4F, sext_immF, btaF}),
                          .Q({instrD, pc_plus4D, sext_immD, btaD}),
                          .clk(clk), .loadreg(1'b1));
    register #(138) e_reg(.D({alu_paD, wd_dmD, instrD[20:11], sext_immD, pc_plus4D}),
                          .Q({alu_paE, wd_dmE, instrE[20:11], sext_immE, pc_plus4E}),
                          .clk(clk), .loadreg(1'b1));
    register #(101) m_reg(.D({alu_outE, wd_dmE, rf_waE, pc_plus4E}),
                          .Q({alu_outM, wd_dmM, rf_waM, pc_plus4M}),
                          .clk(clk), .loadreg(1'b1));
    register #(165) w_reg(.D({alu_outM, rd_dmM, rf_waM, hi_outM, lo_outM, pc_plus4M}),
                          .Q({alu_outW, rd_dmW, rf_waW, hi_outW, lo_outW, pc_plus4W}),
                          .clk(clk), .loadreg(1'b1));

    // --- equal module --- //
    equal2 alu_zero_equal(.a(alu_paD), .b(wd_dmD), .y(alu_zeroD));
endmodule
