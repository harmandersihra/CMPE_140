`timescale 1ns / 1ps

module cnt_down_tb();
	reg clk, load, enable;
	reg [31:0] D;
	wire [31:0] Q;

	cnt_down count (.clk(clk), .load(load), .enable(enable), .D(D), .Q(Q));

	initial
	begin
		D = 32'b11111111111111111111111111111111;
		load = 1;
		tik_tok;
		load = 0;
		enable = 1;
		while(D > 0)
		begin
			tik_tok;
			D = D - 1;
		end
		$finish;
	end

	task tik_tok;
	begin
		clk = 0;
		#2;
		clk = 1;
		#2;
		clk = 0;
	end
	endtask;
endmodule