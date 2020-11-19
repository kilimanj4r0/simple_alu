module mux
(
	input [31:0] out_add, out_sub, out_srl,
	input [5:0] funct,
	input [4:0] rd
);

always@ (*) begin
	case (funct)
	6'b100000 : begin //add
		glob.r[rd] = out_add;
	end
	6'b000010 : begin //srl
		glob.r[rd] = out_srl;
	end
	6'b100010 : begin //sub
		glob.r[rd] = out_sub;
	end
	default : begin
		glob.r[rd] = 32'b00000000000000000000000000000000;
	end
	endcase
end
endmodule
