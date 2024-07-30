`timescale 1ns/1ns

module xor_mux(input a , b , c, output w);
	wire y0 , y1;
	mymux m0(c, ~c, b, y0) , m1(~c, c, b, y1) , m2(y0, y1, a, w);
endmodule
