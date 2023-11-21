module Display_num(input [7:0]sw,
						 input clk,
						 output [7:0]seg2,
						 output [7:0]seg1);
				 

 wire [1:0]counter_out;
 wire  [3:0]mux_out;
 wire [3:0] ones,tens,hundreds;
 parameter zeros=4'b0000;
 wire ov;
 wire [3:0]ones0,tens0;

 binary_to_BCD utt(sw,ones,tens,hundreds);
 
 
 or o1(ov,hundreds[0],hundreds[1],hundreds[2],hundreds[3]);
 or o2(ones0[0],ones[0],ov);
 or o3(ones0[1],ones[1],ov);
 or o4(ones0[2],ones[2],ov);
 or o5(ones0[3],ones[3],ov);
 or o6(tens0[0],tens[0],ov);
 or o7(tens0[1],tens[1],ov);
 or o8(tens0[2],tens[2],ov);
 or o9(tens0[3],tens[3],ov);
 
 BCD_7Segment l5(ones0,seg1);
 
 BCD_7Segment l6(tens0,seg2);


endmodule