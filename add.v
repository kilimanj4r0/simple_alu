module add(
	input [4:0] rs, rt,
	output [31:0] out_add
);
assign out_add = glob.r[rs] + glob.r[rt];
endmodule
