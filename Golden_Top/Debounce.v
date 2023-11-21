module Debounce(
input pb,clk_in,
output led);


wire Q1,Q2,Q2_bar,Q1_bar;

D_ff d1(clk_in,pb,Q1);
D_ff d2(clk_in,Q1,Q2);

assign Q2_bar=~Q2;
assign led=Q1&Q2_bar;


endmodule


