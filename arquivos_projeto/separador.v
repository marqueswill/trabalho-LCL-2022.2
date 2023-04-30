module separador(
input  logic [7:0] valor,
output logic [3:0] decimal,
output logic [3:0] unidade);

wire 	     sinal;
wire [7:0] absoluto;

assign sinal = valor[7];
always @(*)
	begin
		case (sinal) 
		
			0 : absoluto = valor;
			1 : absoluto = (~valor)+1;
			
		endcase
	end

assign unidade = absoluto%10;
assign decimal = (absoluto-unidade)/10;

endmodule