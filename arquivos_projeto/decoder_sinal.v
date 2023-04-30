module decoder_sinal(
input  logic 		 sinal,
output logic [6:0] HEX);
	
always @(*)	
	begin
		case (sinal)
		
			0 : HEX = ~7'b0111111; 
			1 : HEX = ~7'b1000000;  
			
		endcase
	end
endmodule