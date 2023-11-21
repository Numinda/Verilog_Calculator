module Eight_Bit_Full_Adder(        input[7:0]A,
									input[7:0]B,
									output[7:0]Sum1
									 );
wire[7:0]cout,Sum;
wire carry;
One_Bit_Full_Adder B0(A[0],B[0],1'b0,Sum[0],cout[0]);
One_Bit_Full_Adder B1(A[1],B[1],cout[0],Sum[1],cout[1]);
One_Bit_Full_Adder B2(A[2],B[2],cout[1],Sum[2],cout[2]);
One_Bit_Full_Adder B3(A[3],B[3],cout[2],Sum[3],cout[3]);
One_Bit_Full_Adder B4(A[4],B[4],cout[3],Sum[4],cout[4]);
One_Bit_Full_Adder B5(A[5],B[5],cout[4],Sum[5],cout[5]);
One_Bit_Full_Adder B6(A[6],B[6],cout[5],Sum[6],cout[6]);
One_Bit_Full_Adder B7(A[7],B[7],cout[6],Sum[7],cout[7]);
assign carry = cout[7];

or (Sum1[0],Sum[0],carry,Sum[7]);
or (Sum1[1],Sum[1],carry,Sum[7]);
or (Sum1[2],Sum[2],carry,Sum[7]);
or (Sum1[3],Sum[3],carry,Sum[7]);
or (Sum1[4],Sum[4],carry,Sum[7]);
or (Sum1[5],Sum[5],carry,Sum[7]);
or (Sum1[6],Sum[6],carry,Sum[7]);
or (Sum1[7],Sum[7],carry,Sum[7]);




endmodule
