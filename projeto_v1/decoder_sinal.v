module decoder_sinal(
	input  logic 		 sinal,
	output logic [6:0] HEX);
		
	always @(*)	
		case (sinal)
			0 : HEX = ~7'b0111111;  //todos seg ativos
			1 : HEX = ~7'b1000000; //so o seg do meio ativo
		endcase
		
endmodule