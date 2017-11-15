module maindec
(input [5:0] opcode, output branch, output jump, output [1:0] reg_dst, output we_reg, output alu_src, 
output we_dm, output dm2reg, output [1:0] alu_op);
    reg [9:0] ctrl;
    assign {branch, jump, reg_dst, we_reg, alu_src, we_dm, dm2reg, alu_op} = ctrl;
    always @ (opcode)
    begin
        case (opcode)
            6'b00_0000: ctrl = 10'b0_0_01_1_0_0_0_11; // R-type
            6'b00_1000: ctrl = 10'b0_0_00_1_1_0_0_00; // ADDI
            6'b00_0100: ctrl = 10'b1_0_00_0_0_0_0_01; // BEQ
            6'b00_0010: ctrl = 10'b0_1_00_0_0_0_0_00; // J
            6'b10_1011: ctrl = 10'b0_0_00_0_1_1_0_00; // SW
            6'b10_0011: ctrl = 10'b0_0_00_1_1_0_1_00; // LW
            6'b00_0011: ctrl = 10'b0_1_10_1_0_0_0_10; // JAL
            default:    ctrl = 10'bx_x_xx_x_x_x_x_xx;
        endcase
    end
endmodule

module auxdec
(input [1:0] alu_op, input [5:0] funct, output [2:0] alu_ctrl, output [1:0] multi_sel, output multi_en, output jump_reg);
    reg [6:0] ctrl;
    assign {alu_ctrl, multi_sel, multi_en, jump_reg} = ctrl;
    always @ (alu_op, funct)
    begin
        case (alu_op)
            2'b00: ctrl = 7'b010_01_0_0; // add
            2'b01: ctrl = 7'b110_01_0_0; // sub
            2'b10: ctrl = 7'b000_00_0_0; // jal
            default: case (funct)
                6'b10_0100: ctrl = 7'b000_01_0_0; // AND
                6'b10_0101: ctrl = 7'b001_01_0_0; // OR
                6'b10_0000: ctrl = 7'b010_01_0_0; // ADD
                6'b10_0010: ctrl = 7'b110_01_0_0; // SUB
                6'b10_1010: ctrl = 7'b111_01_0_0; // SLT
                6'b01_1001: ctrl = 7'b000_01_1_0; // MULTU
                6'b01_0000: ctrl = 7'b000_11_0_0; // MFHI
                6'b01_0010: ctrl = 7'b000_10_0_0; // MFLO
                6'b00_1000: ctrl = 7'b000_01_0_1; // JR
                default:    ctrl = 7'bxxx_xx_x_x;
            endcase
        endcase
    end
endmodule