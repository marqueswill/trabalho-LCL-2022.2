module operador(
input  logic 	    reset,
input  logic [1:0] Q,
input  reg   [3:0] A,
input  reg   [3:0] OP,
input  reg   [3:0] B,
input  logic	    E,
output logic [7:0] result,
output logic 		 sinal);

initial 
	begin
		result <= 7'd0;
	end

always@(*)
	begin
		if (~reset | (~Q[1]&Q[0]))
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