`timescale 1ns/1ns

module sc_ass(input a1 , a0 , b1 , b0 , c0 , output c1 , s1 , s0);
	reg [1:0] A, B;
	reg C;
	assign A = {a1 , a0};
	assign B = {b1 , b0};
	assign C = {c0};
	assign #104 {c1 , s1 , s0} = A + B + C;
endmodule
