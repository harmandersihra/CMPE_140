`timescale 1ns / 1ps

module hazard(
	input [4:0] RsD, RtD, RsE, RtE, wa_rfE, wa_rfM, wa_rfW,
	input BranchD, dm2regE, we_regE, we_regM, we_regW,

	output reg [1:0] FowardAE, FowardBE,
	output reg StallF, StallD, FowardAD, FowardBD, FlushE   
    );
	reg branchstall;

	always@(*)
	begin
		if((RsE!=0)&(RsE==wa_rfM)&(we_regM))
		begin
			FowardAE=2'b10;
		end
		else if((RsE!=0)&(RsE==wa_rfW)&(we_regW))
		begin
			FowardAE=2'b01;
		end
		else 
		begin
			FowardAE=2'b00;	
		end

		assign FowardAD=(RsD!=0)&(RsD==wa_rfM)&(we_regM);
		assign FowardBD=(RtD!=0)&(RtD==wa_rfM)&(we_regM);

		branchstall=BranchD&we_regE&(wa_rfE==RsD^wa_rfE==RtD)^BranchD&dm2regE&(wa_rfM==RsD^wa_rfM==RtD);

        FlushE=branchstall;
        StallD=FlushE;
		StallF=StallD;
	end

endmodule
