`timescale 1ns/1ns

module and_mux(input a, b, output w);
	mymux m0(1'b0, b, a, w);
endmodule
