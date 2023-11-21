module BCD_7Segment(
				input [3:0] Y,
				output [7:0] disp
							);
			
		  wire a,b,c,d,c_d,a_d,a_nb,a_nd,nc_d,nc_nd,c_nd,a_b,na_b,a_nb_nc_d,a_nb_nc_nd,a_nc,a_nc_d,nb_nc_nd,a_nb_nc,a_nd_nc,c_nd_nc,a_b_c_nd,b_a_nd,na_nb,na_nb_c_nd,a_b_nd,b_nd_nc,nb_c_nd,a_nc_nd,aout,bout,cout,dout,eout,fout,gout,na_b_nc;
			
		  assign  a=Y[0];
		  assign  b=Y[1];
		  assign  c=Y[2];
		  assign  d=Y[3];
		  and   a1(c_d,c,d);
		   and  a29(a_d,a,d);
			and  a30(a_nd,a,~d);
		  and   a2(a_nb,a,~b);
		  and   a3(nc_nd,~c,~d);
		  and   a4(c_nd,c,~d);
		  and   a5(a_b,a,b);
		  and   a6(na_b,~a,b);
		  and   a7(b_nc,b,~c);
		   
		 
		  
		  and   a8(a_nb_nc_nd,a_nb,nc_nd);
		  and   a9(na_c_nd,~a,c_nd);
		  and   a10(b_nc_d,b_nc,d);
		  and   a11(a_nb_c,a_nb,c);
		  and   a12(na_b_c,na_b,c);
		  
		  and   a13(a_nc,a,~c);
		  and   a14(a_nc_d,a_nc,d);
		  
		  and   a15(a_nb_nc,a_nb,~c);
		  and   a16(a_b_c_nd,a_b,c_nd);
		  and   a17(na_nb,~a,~b);
		  and   a18(na_nb_c_nd,na_nb,c_nd);
		  and	  a19(a_b_nd,a_b,~d);
		  and   a20(nb_c_nd,~b,c_nd);
		  and   a21(a_nc_nd,a,nc_nd);
		  and   a26(nd_nc,~d,~c);
		  
		  and  a22(a_nd_nc,a,nd_nc);
		  and  a23(b_a_nd,a_b,~d);
		  and  a24(c_nd_nc,b,nc_nd);
		  and  a25(nb_nc_nd,nc_nd,~b);
		  and  a27(b_nd_nc,nd_nc,b);
		  and  a28(na_b_nc,na_b,~c);
		  and  a35(a_b_d,a_b,d);
		  and   a36(nc_d,~c,d);
		  and   a37(a_nb_nc_d,a_nb,nc_d);
		 
		
		  
		  
		  
		 
		  
		 
		  or    oi(cdobncd,c_d,b_nc_d);
		 
		  
		  or    o1(aout,a_nb_nc_nd,na_c_nd);
		  
		  or    o2(bout,cdobncd,a_nb_c,na_b_c);
		  
		  or   o3(cout,c_d,a_b_d,na_b_nc);
		  
		  or    o4(dout,a_nb_nc,a_b_c_nd,na_nb_c_nd);
		  
		  or    o5(eout,a_nd,nb_c_nd,a_nb_nc_d);
		  
		  or    o6(fout,a_nd_nc,b_a_nd,b_nd_nc);
		  
		  or    o7(gout,nb_nc_nd,a_b_c_nd);
		  
		  
	
		  assign disp[0]=aout;
		  assign disp[1]=bout;
		  assign disp[2]=cout;
		  assign disp[3]=dout;
		  assign disp[4]=eout;
		  assign disp[5]=fout;
		  assign disp[6]=gout;
		  assign disp[7]=1;
		  
endmodule 