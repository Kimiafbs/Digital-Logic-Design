`timescale 1ns/1ns

module mux4to1(input a , b , c , d , s0 , s1 , output w);

	wire w0 , w1;

	mymux mux0(a , c , s0 , w0);
	mymux mux1(b , d , s0 , w1);
	mymux mux2(w0 , w1 , s1 , w);

endmodule