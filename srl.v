module srl
(
	input [4:0] rt, shamt,
	output [31:0] out_srl
);
assign out_srl = glob.r[rt] >> shamt;
endmodule
