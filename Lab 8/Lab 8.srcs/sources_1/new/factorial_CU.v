`timescale 1ns / 1ps

module factorial_CU(
    input wire go, clk, gt, rst, error,
    output reg load_cnt, load_reg, sel_1, sel_2, cnt_en, done, error_out,
    output reg [2:0] curr_state, next_state
    );

    // Control Register for output signals
    reg [6:0] control_register;

    // State parameters
    parameter START    = 3'b000,
              LOAD     = 3'b001,
              WAIT     = 3'b010,
              MULTIPLY = 3'b011,
              DONE     = 3'b100,
              ERROR    = 3'b101;

    // Control signal parameters
    // state    | LOAD_cnt | LOAD_reg | sel_1 | sel_2 | cnt_en | done | error
    // START    |     0    |     0    |    0  |   0   |    0   |   0  |   0
    // LOAD     |     1    |     1    |    0  |   0   |    0   |   0  |   0
    // WAIT     |     0    |     0    |    0  |   0   |    0   |   0  |   0
    // MULTIPLY |     0    |     1    |    1  |   0   |    1   |   0  |   0
    // DONE     |     0    |     0    |    1  |   1   |    0   |   1  |   0
    // ERROR    |     0    |     0    |    0  |   0   |    0   |   0  |   1
    parameter START_out    = 7'b0_0_0_0_0_0_0,
              LOAD_out     = 7'b1_1_0_0_0_0_0,
              WAIT_out     = 7'b0_0_0_0_0_0_0,
              MULTIPLY_out = 7'b0_1_1_0_1_0_0,
              DONE_out     = 7'b0_0_1_1_0_1_0,
              ERROR_out    = 7'b0_0_0_0_0_0_1;

    // Setting current state to 0 initially
    initial curr_state = 3'b000;

    // Assigning output control signals to control register bits
    always@(control_register) {load_cnt, load_reg, sel_1, sel_2, cnt_en, done, error_out} = control_register;

    // Always block which handles asynchronous reset and going to next state
    always@(posedge clk, posedge rst) curr_state = rst ? START : next_state;

    // Always block to select next state
    always@(curr_state, gt, go, error)
    begin
        case(curr_state)
        START:    next_state <= go ? LOAD : START;
        LOAD:     next_state <= error ? ERROR : WAIT;
        WAIT:     next_state <= gt ? MULTIPLY : DONE;
        MULTIPLY: next_state <= WAIT;
        DONE:     next_state <= START;
        ERROR:    next_state <= START;
        endcase
    end

    // Always block to set control signals
    always@(curr_state)
    begin
        case(curr_state)
        START:    control_register = START_out;
        LOAD:     control_register = LOAD_out;
        WAIT:     control_register = WAIT_out;
        MULTIPLY: control_register = MULTIPLY_out;
        DONE:     control_register = DONE_out;
        ERROR:    control_register = ERROR_out;
        endcase
    end

endmodule
