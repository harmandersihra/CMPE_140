`timescale 1ns / 1ps

module factorial_address_decoder(
    input wire we,
    input wire [1:0] address,

    output reg we1,
    output reg we2,
    output wire [1:0] rd_sel
    );

    assign rd_sel = address;

    always@(we, address)
    begin
        case(address)
        // Address 0 allows you to put in data
        // disable we2 and put we into we1
        2'b00:
        begin
            we1 = we;
            we2 = 1'b0;
        end

        // Address 1 allows you to set the go bit
        // disable we1 and put we into we2
        2'b01:
        begin
            we1 = 1'b0;
            we2 = we;
        end

        // Address 2 allows you to read output status signals
        // disable we1 and we2
        2'b10:
        begin
            we1 = 1'b0;
            we2 = 1'b0;
        end

        // Address 3 allows you to read output
        // disable we1 and we2
        2'b11:
        begin
            we1 = 1'b0;
            we2 = 1'b0;
        end

        // Otherwise set to x
        default:
        begin
            we1 = 1'bx;
            we2 = 1'bx;
        end
        endcase
    end
endmodule
