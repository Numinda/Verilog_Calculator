module Comparator4Bit(
                input[3:0] a,
                input[3:0] b,
					 output eq,
                output lt,
                output gt);
					 
					 
wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
xnor g1(s5,a[3],b[3]);
xnor g2(s6,a[2],b[2]);
xnor g3(s7,a[1],b[1]);
xnor g4(s8,a[0],b[0]);

and g6(s1,a[3],~b[3]);
and g7(s2,a[2],~b[2],s5);
and g8(s3,a[1],~b[1],s5,s6);
and g9(s4,a[0],~b[0],s5,s6,s7);

and g11(s9,~a[3],b[3]);
and g12(s10,~a[2],b[2],s5);
and g13(s11,~a[1],b[1],s5,s6);
and g14(s12,~a[0],b[0],s5,s6,s7);

or g10(gt,s1,s2,s3,s4);
and g5(eq,s5,s6,s7,s8);
or g15(lt,s9,s10,s11,s12);



				 

					 
					 
 endmodule