module Full_Adder_Substract(input[7:0]A,
									input[7:0]B,
									input m,
									output[7:0]sum1
									);
									
									
wire b0,b1,b2,b3,b4,b5,b6,b7,b8,signcomp,error;
wire[7:0]cout,Sum;
Comparator8Bit com(.a(A),.b(B),.lt(error));
xor (b0,m,B[0]	),(b1,m,B[1]),(b2,m,B[2]),(b3,m,B[3]),(b4,m,B[4]),(b5,m,B[5]),(b6,m,B[6]),(b7,m,B[7]);	
     One_Bit_Full_Adder B0(A[0],b0,m,Sum[0],cout[0]);
		One_Bit_Full_Adder B1(A[1],b1,cout[0],Sum[1],cout[1]);
		One_Bit_Full_Adder B2(A[2],b2,cout[1],Sum[2],cout[2]);
		One_Bit_Full_Adder B3(A[3],b3,cout[2],Sum[3],cout[3]);
		One_Bit_Full_Adder B4(A[4],b4,cout[3],Sum[4],cout[4]);
		One_Bit_Full_Adder B5(A[5],b5,cout[4],Sum[5],cout[5]);
		One_Bit_Full_Adder B6(A[6],b6,cout[5],Sum[6],cout[6]);
		xnor x1(signcomp,A[7],B[7]);
		and a1(Sum[7],A[7],signcomp);
							
		or o11(sum1[0],error,Sum[0]);
		or o21(sum1[1],error,Sum[1]);
		or o31(sum1[2],error,Sum[2]);
		or o41(sum1[3],error,Sum[3]);
		or o51(sum1[4],error,Sum[4]);
		or o61(sum1[5],error,Sum[5]);
		or o71(sum1[6],error,Sum[6]);
		or o81(sum1[7],error,Sum[7]);


endmodule