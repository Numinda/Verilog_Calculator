module answer_latch(input clk,
						input [7:0]sw,
						input en,
						input pb,
						output [7:0]out);
						
		wire pb0_out,pb1_out,reset,enout;
		wire  [7:0]d_out;
		assign reset=pb;
		assign enout=en;
		
		
		assign reset=pb;
		D_latch D0(sw[0],enout,reset,d_out[0]);
		D_latch D1(sw[1],enout,reset,d_out[1]);
		D_latch D2(sw[2],enout,reset,d_out[2]);
		D_latch D3(sw[3],enout,reset,d_out[3]);
		D_latch D4(sw[4],enout,reset,d_out[4]);
		D_latch D5(sw[5],enout,reset,d_out[5]);
		D_latch D6(sw[6],enout,reset,d_out[6]);
		D_latch D7(sw[7],enout,reset,d_out[7]);
		
		assign out=d_out;			
			
			
endmodule