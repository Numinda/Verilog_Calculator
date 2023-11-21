module add3(in,out);
input [3:0] in;
output [3:0] out;


wire a,b,c,d,s3,s2,s1,s0,c_a,c_b,a_d,na_nb,b_nc,na_d,a_nc,a_nc_nd,na_b,na_b_c,a_b;								
assign a=in[0];
assign b=in[1];
assign c=in[2];
assign d=in[3];	

and a1(c_a,c,a);
and a55(a_b,a,b);
and a2(c_b,c,b);
or  o1(s3,c_a,c_b,d);
and a3(a_d,a,d);
and a4(na_nb,~a,~b);
and a5(na_nb_c,na_nb,c);
or  o2(s2,na_nb_c,a_d);
and a6(b_nc,b,~c);
and a7(na_d,~a,d);
or  o3(s1,a_b,b_nc,na_d);
and a8(a_nc,a,~c);
and a9(a_nc_nd,a_nc,~d);
and a10(na_b,~a,b);
and a11(na_b_c,na_b,c);
or  o4(s0,a_nc_nd,na_b_c,na_d);




assign out[0]=s0;
assign out[1]=s1;
assign out[2]=s2;
assign out[3]=s3;

endmodule