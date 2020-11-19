module alu
(
   	 input      [4:0] rs, rt, 
	 input      [4:0] rd,
	 input	    [4:0] shamt, 
	 input	    [5:0] funct
);

wire [31:0] out_add, out_sub, out_srl;

add add(rs, rt, out_add);
sub sub(rs, rt, out_sub);
srl srl(rt, shamt, out_srl);
	
mux mux(out_add, out_sub, out_srl, funct, rd);
endmodule

