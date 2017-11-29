module controlunit(
    input  wire zeroD, clk, [5:0] opcode, funct,
    output wire pc_src, jumpD, we_regW, alu_srcE, we_dmM, dm2regW, mult_enE, jump_regD, [1:0] reg_dstE, mult_selW, [2:0] alu_ctrlE
    );

    wire [1:0] alu_opD;
    wire [1:0] mult_selE, mult_selM;
    wire dm2regD, dm2regE, dm2regM, dm2regW;
    wire we_dmE, we_dmM;
    wire we_regE, we_regM;

    maindec md (opcode, branchD, jumpD, reg_dstD, we_regD, alu_srcD, we_dmD, dm2regD, alu_opD);
    auxdec  ad (alu_opD, funct, alu_ctrlD, mult_selD, mult_enD, jump_regD);
    assign pc_src = branchD & zeroD;

    // --- Pipeline registers --- //
    register #(11) e_reg(.D({alu_srcD, dm2regD, reg_dstD, we_dmD, we_regD, mult_selD, mult_enD, alu_ctrlD}),
                         .Q({alu_srcE, dm2regE, reg_dstE, we_dmE, we_regE, mult_selE, mult_enE, alu_ctrlE}),
                         .clk(clk), .loadreg(1'b1));
    register #(5)  m_reg(.D({dm2regE, we_dmE, we_regE, mult_selE}),
                         .Q({dm2regM, we_dmM, we_regM, mult_selM}),
                         .clk(clk), .loadreg(1'b1));
    register #(4)  w_reg(.D({dm2regM, we_regM, mult_selM}),
                         .Q({dm2regW, we_regW, mult_selW}), .clk(clk), .loadreg(1'b1));
endmodule