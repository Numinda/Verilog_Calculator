module sign_Segment(input a,
							output[7:0]y);
							
							assign y[0]=1;
							assign y[1]=1;
							assign y[2]=1;
							assign y[3]=1;
							assign y[4]=1;
							assign y[5]=1;
							assign y[6]=~a;
							assign y[7]=1;
							
							
endmodule
