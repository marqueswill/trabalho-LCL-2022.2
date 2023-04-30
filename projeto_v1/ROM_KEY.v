module ROM_KEY(
input logic KEY,
output logic E);

always @(*)
	if (KEY)
		E <= 1;
		
	else
		E <= 0;

endmodule