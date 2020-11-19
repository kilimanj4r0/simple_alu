module sub
(
	input [4:0] rs, rt,
	output [31:0] out_sub
);
assign out_sub = glob.r[rs] - glob.r[rt];
endmodule
