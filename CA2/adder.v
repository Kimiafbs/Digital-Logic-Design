`timescale 1ns/1ns

module adder(input a, b, c, output s, co);
	wire y0, y1, y2;
	xor_mux x0(a, b, c, s);
	and_mux a0(a, b, y0) , a1(b, c, y1), a2(a, c, y2);
	or_mux o0(y0, y1, y2, co);
endmodule
