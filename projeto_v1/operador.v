module operador(
input  logic [3:0] A,
input  logic [3:0] OP,
input  logic [3:0] B,
input  logic		 E,
input  logic 		 reset,
output logic [7:0] result,
output logic 		 sinal);

initial 
	begin
		result <= 7'd0;
	end
	
always@(*)
	begin
		if (~reset)
			result = 7'd0;
			
		else
			begin
				if (E)
					begin
						case (OP)
							
							4'b1010:
								result <= A*B;
							
							4'b1011:
								result <= A-B;
							
							4'b1100:
								result <= A+B;
			
						endcase
					end
			end
	end	

assign sinal = result[7];

endmodule