module Binary_BCD_Converter(input [7:0]A,
									output [3:0]ones,
									output [3:0]tens,
									output [3:0]hundreds

								     );
									  
wire [3:0] c1,c2,c3,c4,c5,c6,c7;
wire[3:4] d1,d2,d3,d4,d5,d6,d7;


assign d1={1'b0,A[7:5]};
assign d2={c1[2:0],A[4]};
assign d3={c2[2:0],A[3]};
assign d4={c3[2:0],A[2]};
assign d5={c4[2:0],A[1]};
assign d6={1'b0,c1[3],c2[3],c3[3]};
assign d7={c6[2:0],c4[3]};
  
  endmodule
  