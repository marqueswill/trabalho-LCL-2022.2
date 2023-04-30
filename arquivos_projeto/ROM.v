module ROM(
input  logic [1:0] crnt,
input  logic [3:0] tecla,
input  logic 		 ready,
input  logic 		 reset,
output logic [1:0] next,
output logic [3:0] N1,
output logic [3:0] OP,
output logic [3:0] N2,
output logic 		 E,
output logic 		 S);

wire [5:0] In; 
assign In={ready,tecla};

initial 
	begin
		N1   <= 0; 
		OP   <= 0;
		N2   <= 0;
		E    <= 0;
		next <= 0;
	end
	
always @(*)
	begin
		if (~reset)
			begin
				N1   <= 0; 
				OP   <= 0;
				N2   <= 0;
				E    <= 0;
				next <= 0;
			end
			
		else
			begin 
				case (crnt)
					
					2'b 00: begin //N1
						casex (In)
							5'b 0_xxxx : begin next = 2'b 00; E<=0; S<=1; end
							
							5'b 1_0000 : begin next = 2'b 01; N1<= 4'd 0; N2 <= 0;end //0
							5'b 1_0001 : begin next = 2'b 01; N1<= 4'd 1; N2 <= 0;end //1
							5'b 1_0010 : begin next = 2'b 01; N1<= 4'd 2; N2 <= 0;end //2
							5'b 1_0011 : begin next = 2'b 01; N1<= 4'd 3; N2 <= 0;end //3
							5'b 1_0100 : begin next = 2'b 01; N1<= 4'd 4; N2 <= 0;end //4
							5'b 1_0101 : begin next = 2'b 01; N1<= 4'd 5; N2 <= 0;end //5
							5'b 1_0110 : begin next = 2'b 01; N1<= 4'd 6; N2 <= 0;end //6
							5'b 1_0111 : begin next = 2'b 01; N1<= 4'd 7; N2 <= 0;end //7
							5'b 1_1000 : begin next = 2'b 01; N1<= 4'd 8; N2 <= 0;end //8
							5'b 1_1001 : begin next = 2'b 01; N1<= 4'd 9; N2 <= 0;end //9
							
							5'b 1_1010 : begin next = 2'b 00; end
							5'b 1_1011 : begin next = 2'b 00; end
							5'b 1_1100 : begin next = 2'b 00; end
							5'b 1_1101 : begin next = 2'b 00; end
							5'b 1_1110 : begin next = 2'b 00; end
							5'b 1_1111 : begin next = 2'b 00; end
						endcase
					end
						
					2'b 01: begin //OP
						casex (In)
							5'b 0_xxxx : begin next = 2'b 01; S<=0;end
							
							5'b 1_0000 : begin next = 2'b 01; end
							5'b 1_0001 : begin next = 2'b 01; end
							5'b 1_0010 : begin next = 2'b 01; end
							5'b 1_0011 : begin next = 2'b 01; end
							5'b 1_0100 : begin next = 2'b 01; end
							5'b 1_0101 : begin next = 2'b 01; end
							5'b 1_0110 : begin next = 2'b 01; end
							5'b 1_0111 : begin next = 2'b 01; end
							5'b 1_1000 : begin next = 2'b 01; end
							5'b 1_1001 : begin next = 2'b 01; end
							
							5'b 1_1010 : begin next = 2'b 10; OP <= 4'd 10; end // A
							5'b 1_1011 : begin next = 2'b 10; OP <= 4'd 11; end // B
							5'b 1_1100 : begin next = 2'b 10; OP <= 4'd 12; end // C
							
							5'b 1_1101 : begin next = 2'b 01; end
							5'b 1_1110 : begin next = 2'b 01; end
							5'b 1_1111 : begin next = 2'b 01; end
						endcase
					end
							
					2'b 10: begin //N2
						casex (In)
							5'b 0_xxxx : begin next = 2'b 10; N2 <= 4'd 0; end
							
							5'b 1_0000 : begin next = 2'b 11; N2 <= 4'd 0; end //0
							5'b 1_0001 : begin next = 2'b 11; N2 <= 4'd 1; end //1
							5'b 1_0010 : begin next = 2'b 11; N2 <= 4'd 2; end //2
							5'b 1_0011 : begin next = 2'b 11; N2 <= 4'd 3; end //3
							5'b 1_0100 : begin next = 2'b 11; N2 <= 4'd 4; end //4
							5'b 1_0101 : begin next = 2'b 11; N2 <= 4'd 5; end //5
							5'b 1_0110 : begin next = 2'b 11; N2 <= 4'd 6; end //6
							5'b 1_0111 : begin next = 2'b 11; N2 <= 4'd 7; end //7
							5'b 1_1000 : begin next = 2'b 11; N2 <= 4'd 8; end //8
							5'b 1_1001 : begin next = 2'b 11; N2 <= 4'd 9; end //9
							
							5'b 1_1010 : begin next = 2'b 10; end
							5'b 1_1011 : begin next = 2'b 10; end
							5'b 1_1100 : begin next = 2'b 10; end
							5'b 1_1101 : begin next = 2'b 10; end
							5'b 1_1110 : begin next = 2'b 10; end
							5'b 1_1111 : begin next = 2'b 10; end
						endcase
					end
						
					2'b 11: begin //RE
						casex (In)
							5'b 0_xxxx : begin next = 2'b 11;  end
							
							5'b 1_0000 : begin next = 2'b 11;  end
							5'b 1_0001 : begin next = 2'b 11;  end
							5'b 1_0010 : begin next = 2'b 11;  end
							5'b 1_0011 : begin next = 2'b 11;  end
							5'b 1_0100 : begin next = 2'b 11;  end
							5'b 1_0101 : begin next = 2'b 11;  end
							5'b 1_0110 : begin next = 2'b 11;  end
							5'b 1_0111 : begin next = 2'b 11;  end
							5'b 1_1000 : begin next = 2'b 11;  end
							5'b 1_1001 : begin next = 2'b 11;  end
							5'b 1_1010 : begin next = 2'b 11;  end
							5'b 1_1011 : begin next = 2'b 11;  end
							5'b 1_1100 : begin next = 2'b 11;  end
							
							5'b 1_1101 : begin next = 2'b 00; E<= 1; end //D
							
							5'b 1_1110 : begin next = 2'b 11; end
							5'b 1_1111 : begin next = 2'b 11; end				
						endcase
					end
					
				endcase
			end
	end
	
endmodule