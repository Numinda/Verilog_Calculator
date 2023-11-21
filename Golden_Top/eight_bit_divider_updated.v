module eight_bit_divider_updated(input[6:0]D,
								 input[6:0]d,
								 output[6:0]q);

wire[6:0]dout,sout,sin,sp;
wire[7:0]dout1,sout1,sin1,sp1,dout2,sout2,sin2,sp2,dout3,sout3,sin3,sp3,dout4,sout4,sin4,sp4,dout5,sout5,sin5,sp5,dout6,sout6,sin6,sp6,dout7,sout7,sin7,sp7;								 
								 
divide_module m00(D[6],d[0],1'b0,sp[1],dout[0],sout[0],sp[0]);
divide_module m01(1'b0,d[1],dout[0],sp[2],dout[1],sout[1],sp[1]);
divide_module m02(1'b0,d[2],dout[1],sp[3],dout[2],sout[2],sp[2]);
divide_module m03(1'b0,d[3],dout[2],sp[4],dout[3],sout[3],sp[3]);
divide_module m04(1'b0,d[4],dout[3],sp[5],dout[4],sout[4],sp[4]);
divide_module m05(1'b0,d[5],dout[4],sp[6],dout[5],sout[5],sp[5]);
divide_module m06(1'b0,d[6],dout[5],~dout[6],dout[6],sout[6],sp[6]);

divide_module m07(D[5],d[0],1'b0,sp1[1],dout1[0],sout1[0],sp1[0]);
divide_module m08(sout[0],d[1],dout1[0],sp1[2],dout1[1],sout1[1],sp1[1]);
divide_module m09(sout[1],d[2],dout1[1],sp1[3],dout1[2],sout1[2],sp1[2]);
divide_module m10(sout[2],d[3],dout1[2],sp1[4],dout1[3],sout1[3],sp1[3]);
divide_module m11(sout[3],d[4],dout1[3],sp1[5],dout1[4],sout1[4],sp1[4]);
divide_module m12(sout[4],d[5],dout1[4],sp1[6],dout1[5],sout1[5],sp1[5]);
divide_module m13(sout[5],d[6],dout1[5],sp1[7],dout1[6],sout1[6],sp1[6]);
divide_module m14(sout[6],1'b0,dout1[6],~dout1[7],dout1[7],sout1[7],sp1[7]);

divide_module m15(D[4],d[0],1'b0,sp2[1],dout2[0],sout2[0],sp2[0]);
divide_module m16(sout1[0],d[1],dout2[0],sp2[2],dout2[1],sout2[1],sp2[1]);
divide_module m17(sout1[1],d[2],dout2[1],sp2[3],dout2[2],sout2[2],sp2[2]);
divide_module m18(sout1[2],d[3],dout2[2],sp2[4],dout2[3],sout2[3],sp2[3]);
divide_module m19(sout1[3],d[4],dout2[3],sp2[5],dout2[4],sout2[4],sp2[4]);
divide_module m20(sout1[4],d[5],dout2[4],sp2[6],dout2[5],sout2[5],sp2[5]);
divide_module m21(sout1[5],d[6],dout2[5],sp2[7],dout2[6],sout2[6],sp2[6]);
divide_module m22(sout1[6],1'b0,dout2[6],~dout2[7],dout2[7],sout2[7],sp2[7]);

divide_module m23(D[3],d[0],1'b0,sp3[1],dout3[0],sout3[0],sp3[0]);
divide_module m24(sout2[0],d[1],dout3[0],sp3[2],dout3[1],sout3[1],sp3[1]);
divide_module m25(sout2[1],d[2],dout3[1],sp3[3],dout3[2],sout3[2],sp3[2]);
divide_module m26(sout2[2],d[3],dout3[2],sp3[4],dout3[3],sout3[3],sp3[3]);
divide_module m27(sout2[3],d[4],dout3[3],sp3[5],dout3[4],sout3[4],sp3[4]);
divide_module m28(sout2[4],d[5],dout3[4],sp3[6],dout3[5],sout3[5],sp3[5]);
divide_module m29(sout2[5],d[6],dout3[5],sp3[7],dout3[6],sout3[6],sp3[6]);
divide_module m30(sout2[6],1'b0,dout3[6],~dout3[7],dout3[7],sout3[7],sp3[7]);

divide_module m31(D[2],d[0],1'b0,sp4[1],dout4[0],sout4[0],sp4[0]);
divide_module m32(sout3[0],d[1],dout4[0],sp4[2],dout4[1],sout4[1],sp4[1]);
divide_module m33(sout3[1],d[2],dout4[1],sp4[3],dout4[2],sout4[2],sp4[2]);
divide_module m34(sout3[2],d[3],dout4[2],sp4[4],dout4[3],sout4[3],sp4[3]);
divide_module m35(sout3[3],d[4],dout4[3],sp4[5],dout4[4],sout4[4],sp4[4]);
divide_module m36(sout3[4],d[5],dout4[4],sp4[6],dout4[5],sout4[5],sp4[5]);
divide_module m37(sout3[5],d[6],dout4[5],sp4[7],dout4[6],sout4[6],sp4[6]);
divide_module m38(sout3[6],1'b0,dout4[6],~dout4[7],dout4[7],sout4[7],sp4[7]);

divide_module m39(D[1],d[0],1'b0,sp5[1],dout5[0],sout5[0],sp5[0]);
divide_module m40(sout4[0],d[1],dout5[0],sp5[2],dout5[1],sout5[1],sp5[1]);
divide_module m41(sout4[1],d[2],dout5[1],sp5[3],dout5[2],sout5[2],sp5[2]);
divide_module m42(sout4[2],d[3],dout5[2],sp5[4],dout5[3],sout5[3],sp5[3]);
divide_module m43(sout4[3],d[4],dout5[3],sp5[5],dout5[4],sout5[4],sp5[4]);
divide_module m44(sout4[4],d[5],dout5[4],sp5[6],dout5[5],sout5[5],sp5[5]);
divide_module m45(sout4[5],d[6],dout5[5],sp5[7],dout5[6],sout5[6],sp5[6]);
divide_module m46(sout4[6],1'b0,dout5[6],~dout5[7],dout5[7],sout5[7],sp5[7]);

divide_module m47(D[0],d[0],1'b0,sp6[1],dout6[0],sout6[0],sp6[0]);
divide_module m48(sout5[0],d[1],dout6[0],sp6[2],dout6[1],sout6[1],sp6[1]);
divide_module m49(sout5[1],d[2],dout6[1],sp6[3],dout6[2],sout6[2],sp6[2]);
divide_module m50(sout5[2],d[3],dout6[2],sp6[4],dout6[3],sout6[3],sp6[3]);
divide_module m51(sout5[3],d[4],dout6[3],sp6[5],dout6[4],sout6[4],sp6[4]);
divide_module m52(sout5[4],d[5],dout6[4],sp6[6],dout6[5],sout6[5],sp6[5]);
divide_module m53(sout5[5],d[6],dout6[5],sp6[7],dout6[6],sout6[6],sp6[6]);
divide_module m54(sout5[6],1'b0,dout6[6],~dout6[7],dout6[7],sout6[7],sp6[7]);

assign q[6]=~dout[6];
assign q[5]=~dout1[7];
assign q[4]=~dout2[7];
assign q[3]=~dout3[7];
assign q[2]=~dout4[7];
assign q[1]=~dout5[7];
assign q[0]=~dout6[7];


endmodule