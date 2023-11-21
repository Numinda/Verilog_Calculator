module numA_latch(input [9:0]sw,
						input en,
						input rst,
						input [1:0]pb,
						output [7:0]out);
						
		wire pb0_out,pb1_out,reset;
		wire  [7:0]d_out;
		
		wire en_out;
		and a1(en_out,sw[8],en);
		
		Debounce pd1(pb[0],clk,pb0_out);
		Debounce pd2(pb[1],clk,pb1_out);
		and  aa(reset,pb[0],1);
		D_latch D0(sw[0],en_out,reset,d_out[0]);
		D_latch D1(sw[1],en_out,reset,d_out[1]);
		D_latch D2(sw[2],en_out,reset,d_out[2]);
		D_latch D3(sw[3],en_out,reset,d_out[3]);
		D_latch D4(sw[4],en_out,reset,d_out[4]);
		D_latch D5(sw[5],en_out,reset,d_out[5]);
		D_latch D6(sw[6],en_out,reset,d_out[6]);
		D_latch D7(sw[7],en_out,reset,d_out[7]);
		
		assign out=d_out;			
			
			
endmodule