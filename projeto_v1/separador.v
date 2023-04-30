module separador(
input  logic [7:0] valor,
output logic [3:0] decimal,
output logic [3:0] unidade);

wire 	     sinal;
wire [7:0] complemento;

assign sinal = valor[7];
always @(*)
	case (sinal) 
	
		0 : complemento = valor;
		1 : complemento = (~valor)+1;
		
	endcase


assign unidade = complemento%10;
assign decimal = (complemento-unidade)/10;

endmodule