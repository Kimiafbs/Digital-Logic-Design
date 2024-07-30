`timescale 1ns/1ns

module nor_cscalc(input a1 , a0 , b1 , b0 , c0 , output c1 , s1 , s0);
	nor_s0 o0(a1 , a0 , b1 , b0 , c0 , s0);
	nor_c1 o1(a1 , a0 , b1 , b0 , c0 , c1);
	nor_s1 o2(a1 , a0 , b1 , b0 , c0 , s1);
endmodule
