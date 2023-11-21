module D_latch(input d,
					input enable,
					input rstn,
					output reg q);
					
		always @(enable or rstn or d )
		begin
			if(!rstn)
				q<=0;
			else
				if(enable)
					q<=d;
		end
					
					
endmodule