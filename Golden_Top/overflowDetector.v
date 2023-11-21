module overflowDetector(input [7:0]A,
						output y);
						
wire o1,o2,o3,o4,o5,o6,o7;						
or (o1,A[0],A[1]),(o2,A[2],A[3]),(o3,A[4],A[5]),(o4,A[6],A[7]),(o5,o4,o3),(o6,o2,o1),(y,o6,o5);

endmodule