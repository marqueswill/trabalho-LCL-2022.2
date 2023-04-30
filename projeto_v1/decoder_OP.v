module decoder_OP(
input  logic [3:0] OP,
output logic [1:0] LED);

always@(OP)
	begin
		case (OP)
		
			4'b1010: begin
				LED <= 2'b 11;
			end
			
			4'b1011: begin
				LED <= 2'b 10;
			end
			
			4'b1100: begin
				LED <= 2'b 01;
			end
			
			default : LED <= 2'b00;
			
		endcase
	end	


endmodule