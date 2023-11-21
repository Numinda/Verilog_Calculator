module mux4_1(input [7:0]I0,
				  input [7:0]I1,
				  input[7:0]I2,
				  input[7:0]I3,
				  input s2,
				  input s1,
				  input en,
				  output [7:0]y);

assign y[0]=((~s2)&(~s1)&en&I0[0])| ((~s2)&(s1)&en&I1[0])|(s2&(~s1)&en&I2[0])|(s2&s1&en&I3[0]);
assign y[1]=((~s2)&(~s1)&en&I0[1])| ((~s2)&(s1)&en&I1[1])|(s2&(~s1)&en&I2[1])|(s2&s1&en&I3[1]);
assign y[2]=((~s2)&(~s1)&en&I0[2])| ((~s2)&(s1)&en&I1[2])|(s2&(~s1)&en&I2[2])|(s2&s1&en&I3[2]);
assign y[3]=((~s2)&(~s1)&en&I0[3])| ((~s2)&(s1)&en&I1[3])|(s2&(~s1)&en&I2[3])|(s2&s1&en&I3[3]);
assign y[4]=((~s2)&(~s1)&en&I0[4])| ((~s2)&(s1)&en&I1[4])|(s2&(~s1)&en&I2[4])|(s2&s1&en&I3[4]);
assign y[5]=((~s2)&(~s1)&en&I0[5])| ((~s2)&(s1)&en&I1[5])|(s2&(~s1)&en&I2[5])|(s2&s1&en&I3[5]);
assign y[6]=((~s2)&(~s1)&en&I0[6])| ((~s2)&(s1)&en&I1[6])|(s2&(~s1)&en&I2[6])|(s2&s1&en&I3[6]);
assign y[7]=((~s2)&(~s1)&en&I0[7])| ((~s2)&(s1)&en&I1[7])|(s2&(~s1)&en&I2[7])|(s2&s1&en&I3[7]);



endmodule