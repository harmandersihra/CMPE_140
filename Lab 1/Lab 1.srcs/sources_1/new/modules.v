`timescale 1ns / 1ps

module bin2bcd32(
	input wire [31:0] value,
	output wire [3:0] dig0,
	output wire [3:0] dig1,
	output wire [3:0] dig2,
	output wire [3:0] dig3,
	output wire [3:0] dig4,
	output wire [3:0] dig5,
	output wire [3:0] dig6,
	output wire [3:0] dig7
	);

	assign dig0 = value % 10;
	assign dig1 = (value / 10) % 10;
	assign dig2 = (value / 100) % 10;
	assign dig3 = (value / 1000) % 10;
	assign dig4 = (value / 10000) % 10;
	assign dig5 = (value / 100000) % 10;
	assign dig6 = (value / 1000000) % 10;
	assign dig7 = (value / 10000000) % 10;

endmodule

// Multiplier module, default bus width: 32 bits
module multiplier #(parameter bus_width = 32)(
	// Two data inputs
	input wire [bus_width - 1:0] A,
	input wire [bus_width - 1:0] B,

	// Multiplier data output
	output wire [bus_width - 1:0] out
	);

	assign out = A * B;

endmodule

// Simple 2-input multiplexor, default bus width: 32 bits
module mux2 #(parameter bus_width = 32)(
	// Two data inputs
	input wire [bus_width - 1:0] A,
	input wire [bus_width - 1:0] B,

	// Select line input
	input wire select,

	// Data output
	output wire [bus_width - 1:0] out
	);

	assign out = select ? A : B;

endmodule

// Counter module with load and enable
module cnt_down #(parameter width = 32)(
	// Control signal inputs
	input wire load,
	input wire enable,
	input wire clk,

	// Data input
	input wire [width - 1:0] D,

	// Data output
	output wire [width - 1:0] Q
	);

	// Internal register to hold data
	reg [width - 1:0] mem;

	// Assign output to internal register
	assign Q = mem;

	always@(posedge clk)
	begin
		// If load is enabled, load data input into internal register
		if (load) mem = D;

		// Count down if enable is enabled
		if (enable) mem = mem - 4'b0001;
	end
endmodule
