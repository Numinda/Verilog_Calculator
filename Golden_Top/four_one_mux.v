module four_one_mux(
						input en,
						input[7:0]A,
						input[7:0]S,
						input[7:0]M,
						input[3:0]D,
						input [1:0]SS,
						output [7:0]Y
						);
						
wire SS0bar,SS1bar,enbar,T1,T2,T3,T4;
wire[7:0] Y_out;
assign enbar=en;
not (SS0bar, SS[0]), (SS1bar, SS[1]);
and (T1, A, SS0bar, SS1bar,enbar), (T2, S, SS0bar, SS[1],enbar),(T3, M, SS[0], SS1bar,enbar), (T4,D, SS[0], SS[1],enbar);
or(Y_out, T1, T2, T3, T4);
assign Y=Y_out;

endmodule


