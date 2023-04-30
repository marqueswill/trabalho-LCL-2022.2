module controlador_b(
input  logic [15:0] SW,
output logic [3:0]  tecla,
output logic 		  ready);

always @(*)
	begin
	
		case (SW)
			16'b0000_0000_0000_0001: begin tecla = 4'd0; ready <= 1; end
			16'b0000_0000_0000_0010: begin tecla = 4'd1; ready <= 1; end
			16'b0000_0000_0000_0100: begin tecla = 4'd2; ready <= 1; end
			16'b0000_0000_0000_1000: begin tecla = 4'd3; ready <= 1; end
			
			16'b0000_0000_0001_0000: begin tecla = 4'd4; ready <= 1; end
			16'b0000_0000_0010_0000: begin tecla = 4'd5; ready <= 1; end
			16'b0000_0000_0100_0000: begin tecla = 4'd6; ready <= 1; end
			16'b0000_0000_1000_0000: begin tecla = 4'd7; ready <= 1; end
			
			16'b0000_0001_0000_0000: begin tecla = 4'd8; ready <= 1; end
			16'b0000_0010_0000_0000: begin tecla = 4'd9; ready <= 1; end
			16'b0000_0100_0000_0000: begin tecla = 4'd10; ready <= 1; end
			16'b0000_1000_0000_0000: begin tecla = 4'd11; ready <= 1; end
			
			16'b0001_0000_0000_0000: begin tecla = 4'd12; ready <= 1; end
			16'b0010_0000_0000_0000: begin tecla = 4'd13; ready <= 1; end
			16'b0100_0000_0000_0000: begin tecla = 4'd14; ready <= 1; end
			16'b1000_0000_0000_0000: begin tecla = 4'd15; ready <= 1; end
			
			default: begin ready <= 0; tecla <= 4'd0; end
		endcase
	end
endmodule