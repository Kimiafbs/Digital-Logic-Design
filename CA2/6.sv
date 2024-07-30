`timescale 1ns/1ns

module sc_ass6(input a1 , a0 , b1 , b0 , c0 , output c1 , s1 , s0);
	assign {c1, s1, s0} = {a1, a0} + {b1, b0} + {c0};
endmodule
