`timescale 1ns/1ns

module sc_mux(input a1, a0, b1, b0, c0, output c1, s1, s0);
	wire co;
	adder add0(a0, b0, c0, s0, co), add1(co, a1, b1, s1, c1);
endmodule
