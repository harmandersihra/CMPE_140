`timescale 1ns / 1ps

module factorial_CU_tb();
    reg GO, clk, gt, rst;
    wire load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE;
    wire [2:0] cs, ns;
    reg [5:0] ctrl;

    factorial_CU u0(
        .go(GO), .clk(clk), .gt(gt), .rst(rst),
        .load_cnt(load_cnt), .load_reg(load_reg), .sel_1(sel_1),
        .sel_2(sel_2), .cnt_en(cnt_en), .done(DONE), .curr_state(cs), .next_state(ns)
        );

    // Control signal parameters
    // state    | LOAD_cnt | LOAD_reg | sel_1 | sel_2 | cnt_en | done |
    // START    |     0    |     0    |    0  |   0   |    0   |   0  |
    // LOAD     |     1    |     1    |    0  |   0   |    0   |   0  |
    // WAIT     |     0    |     0    |    0  |   0   |    0   |   0  |
    // MULTIPLY |     0    |     1    |    1  |   0   |    1   |   0  |
    // DONE     |     0    |     0    |    1  |   1   |    0   |   1  |
    parameter START_out    = 6'b000000,
              LOAD_out     = 6'b110000,
              WAIT_out     = 6'b000000,
              MULTIPLY_out = 6'b011010,
              DONE_out     = 6'b001101;
    initial
    begin
        // Testing GO signal
        rst = 0;
        GO = 0;
        tik_tok;
        if(cs != 0) $display("GO Signal test failed");

        // Testing reset
        GO = 1;
        tik_tok;
        rst = 1;
        tik_tok;
        rst = 0;
        if(cs != 0) $display("Reset test failed");

        // Testing output at each state
        gt = 1;
        while(!DONE)
        begin
            tik_tok;
            ctrl = {load_cnt, load_reg, sel_1, sel_2, cnt_en, DONE};

            if(cs == 0) if(ctrl != START_out) $display("Failed at state 0");
            if(cs == 1) if(ctrl != LOAD_out) $display("Failed at state 1");
            if(cs == 2) if(ctrl != WAIT_out) $display("Failed at state 2");
            if(cs == 3) if(ctrl != MULTIPLY_out) $display("Failed at state 3");
            if(cs == 4) if(ctrl != DONE_out) $display("Failed at state 4");

            // Setting gt to 0 so CU can exit
            if(cs == 3 && gt == 1) gt = 0;
        end
        $display("Test Finished");
        $finish;
    end

    // Tasks used in testing
    task tik_tok;
    begin
        clk = 0;
        #2;
        clk = 1;
        #2;
        clk = 0;
    end
    endtask

    task pass;
    begin
        $display ("FACTORIAL CU TB PASSED");
        #50 $stop;
        #20 $finish;
    end
    endtask

endmodule
