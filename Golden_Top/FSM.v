module FSM(input clk,
				input in,
				output[3:0]out);
	wire a,na,b,nb,da,db,y1,y2,y3,i;
	wire a_nb,na_b_i,a_ni,bxi,na_nb,a_b,na_nb_a_b,na_b;
	assign i=~in;
	and a1(a_nb,a,nb);
	and a2(na_b_i,na,b,i);
	and a3(a_ni,a,~i);
	or q1(da,a_ni,na_b_i,a_nb);
	xor x1(db,b,i);
	and a4(a_b,a,b);
	and a5(na_nb,na,nb);
	and a6(na_b,na,b);
	assign y1=na_nb;
	assign y2=na_b;
	assign y3=a_nb;
	assign y4=a_b;
				
	D_ff ff1(clk,da,a,na);
	D_ff ff2(clk,db,b,nb);
	assign out[0]=y1;
	assign out[1]=y2;
	assign out[2]=y3;
	assign out[3]=y4;
	
				
endmodule