module Calculator( input clk,
						 input[3:0] en,
						input [9:0]sw,
						input [1:0]pb,
						output [7:0]out,
						output[7:0]latchA,
						output[7:0]latchB,
					   output completed,
						output error,
						output [3:0] out_o,
						output[3:0]LED_operation);
		
		wire pb0_out,pb1_out,reset,ovflow;
		wire  [7:0]d_out,Ao,So,M,D,latch_in,latch_out,A_latch_in,A_latch_out,B_latch_in,B_latch_out,m_out1,divide_updated,enop;
		wire[15:0]m_out;
		wire[3:0]Do,R;
		//debounce push buttons
		
		
		Debounce pb1(pb[1],clk,pb1_out);
		Debounce pb2(pb[0],clk,pb0_out);
		//latches to store inputs
		numA_latch l1(sw,en[0],en[3],pb,A_latch_out);
		numB_latch l2(sw,en[0],en[3],pb,B_latch_out);
		
		Eight_Bit_Full_Adder add(A_latch_out,B_latch_out,Ao[7:0]);
		Full_Adder_Substract sub(A_latch_out,B_latch_out,1'b1,So[7:0]);
		
		multiplier mul(A_latch_out,B_latch_out,m_out);
		overflowDetector(m_out[15:7],overflow);
		
		or o11(m_out1[0],overflow,m_out[0]);
		or o21(m_out1[1],overflow,m_out[1]);
		or o31(m_out1[2],overflow,m_out[2]);
		or o41(m_out1[3],overflow,m_out[3]);
		or o51(m_out1[4],overflow,m_out[4]);
		or o61(m_out1[5],overflow,m_out[5]);
		or o71(m_out1[6],overflow,m_out[6]);
		or o81(m_out1[7],overflow,m_out[7]);
		
		
		eight_bit_divider_updated divu(A_latch_out,B_latch_out,divide_updated);
		eight_bit_divider div(.D(A_latch_out),.d(B_latch_out),.q(Do),.r(R));
		assign D[3:0]=Do[3:0];
		
		//four_one_mux mux(en[1],A[7:0],S[7:0],M[7:0],D[7:0],sw[1:0],latch_in);
		mux4_1 mux(Ao[7:0],So[7:0],m_out1[7:0],divide_updated[7:0],sw[1],sw[0],1'b1,latch_out);
		
		//store to the answer latch
		//answer_latch ans(clk,latch_in,en[1],en[3],latch_out);
		
		
		or o1(out[0],~en[2],latch_out[0]);
		or o2(out[1],~en[2],latch_out[1]);
		or o3(out[2],~en[2],latch_out[2]);
		or o4(out[3],~en[2],latch_out[3]);
		or o5(out[4],~en[2],latch_out[4]);
		or o6(out[5],~en[2],latch_out[5]);
		or o7(out[6],~en[2],latch_out[6]);
		or o8(out[7],~en[2],latch_out[7]);
		
		//assign out[7:0]=So[7:0];
		
		assign out_o[3:0]=en[3:0];
		assign latchA=A_latch_out;
		assign latchB=B_latch_out;
		
		or(enop,en[1],en[2]);
		
		assign LED_operation[0]=enop&~sw[0]&~sw[1];
		assign LED_operation[1]=enop&sw[0]&~sw[1];
		assign LED_operation[2]=enop&~sw[0]&sw[1];
		assign LED_operation[3]=enop&sw[0]&sw[1];
		
		
		
		
						
						
endmodule