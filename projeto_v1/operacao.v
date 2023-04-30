module operacao(
input  logic [3:0] KEY,
output logic [3:0] OP,
output logic E);

initial
	begin
		OP <= 4'b0000;
		E <= 0;
	end
	
always @(KEY)
	begin
		
		if (KEY[3])
			begin
				OP <= 4'b1010;
				E <= 0;
			end
		
		if (KEY[2])
			begin
				OP <= 4'b1011;
				E <= 0;
			end
		
		if (KEY[1])
			begin
				OP <= 4'b1100;
				E <= 0;
			end
		
		if (KEY[0])
			if (OP != 4'b0000)
				begin
					E <= 1;
				end
	end

endmodule