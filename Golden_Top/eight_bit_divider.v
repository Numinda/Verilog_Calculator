module eight_bit_divider(input[6:0]D,
								 input[3:0]d,
								 output[3:0]q,
								 output[3:0]r);

wire[3:0]dout,sout,sin,sp;
wire[4:0]dout1,sout1,sin1,sp1,dout2,sout2,sin2,sp2,dout3,sout3,sin3,sp3;								 
								 
divide_module m00(D[3],d[0],1'b0,sp[1],dout[0],sout[0],sp[0]);
divide_module m01(D[4],d[1],dout[0],sp[2],dout[1],sout[1],sp[1]);
divide_module m10(D[5],d[2],dout[1],sp[3],dout[2],sout[2],sp[2]);
divide_module m11(D[6],d[3],dout[2],~dout[3],dout[3],sout[3],sp[3]);
assign q[3]=~dout[3];

divide_module m20(D[2],d[0],1'b0,sp1[1],dout1[0],sout1[0],sp1[0]);
divide_module m21(sout[0],d[1],dout1[0],sp1[2],dout1[1],sout1[1],sp1[1]);
divide_module m25(sout[1],d[2],dout1[1],sp1[3],dout1[2],sout1[2],sp1[2]);
divide_module m22(sout[2],d[3],dout1[2],sp1[4],dout1[3],sout1[3],sp1[3]);
divide_module m23(sout[3],1'b0,dout1[3],~dout1[4],dout1[4],sout1[4],sp1[4]);
assign q[2]=~dout1[4];

divide_module m30(D[1],d[0],1'b0,sp2[1],dout2[0],sout2[0],sp2[0]);
divide_module m31(sout1[0],d[1],dout2[0],sp2[2],dout2[1],sout2[1],sp2[1]);
divide_module m35(sout1[1],d[2],dout2[1],sp2[3],dout2[2],sout2[2],sp2[2]);
divide_module m32(sout1[2],d[3],dout2[2],sp2[4],dout2[3],sout2[3],sp2[3]);
divide_module m33(sout1[3],1'b0,dout2[3],~dout2[4],dout2[4],sout2[4],sp2[4]);
assign q[1]=~dout2[4];  

divide_module m40(D[0],d[0],1'b0,sp3[1],dout3[0],sout3[0],sp3[0]);
divide_module m41(sout2[0],d[1],dout3[0],sp3[2],dout3[1],sout3[1],sp3[1]);
divide_module m45(sout2[1],d[2],dout3[1],sp3[3],dout3[2],sout3[2],sp3[2]);
divide_module m42(sout2[2],d[3],dout3[2],sp3[4],dout3[3],sout3[3],sp3[3]);
divide_module m43(sout2[3],1'b0,dout3[3],~dout3[4],dout3[4],sout3[4],sp3[4]);
assign q[0]=~dout3[4];



endmodule