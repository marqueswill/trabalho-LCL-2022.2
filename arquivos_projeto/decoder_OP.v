module decoder_OP(
input  logic [3:0] OP,
output logic [1:0] LED);

always@(*)
	begin
		case (OP)
		
			4'b1010: LED <= 2'b 11;
			
			4'b1011: LED <= 2'b 10;
			
			4'b1100: LED <= 2'b 01;
			
			default : LED <= 2'b00;
			
		endcase
	end	

endmodule