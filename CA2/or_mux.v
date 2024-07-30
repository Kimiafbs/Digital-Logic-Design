`timescale 1ns/1ns

module or_mux(input a, b, c, output w);
	wire y0;
	mymux m0(c, 1'b1, b, y0) , m1(y0, 1'b1, a, w);
endmodule
