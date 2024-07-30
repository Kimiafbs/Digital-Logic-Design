`timescale 1ns/1ns

module nor_s0(input a1 , a0 , b1 , b0 , c0 , output s0);
	wire o0 , o1 , o2 , o3;
	mynor3inp n0(a0, b0, c0, o0) , n1(~a0, ~b0, c0, o1) , n2(~a0, b0, ~c0, o2) , n3(a0, ~b0, ~c0, o3);
	mynor4inp n4(o0, o1, o2, o3, s0);
endmodule
