`timescale 1ns/1ns

module nor_c1(input a1 , a0 , b1 , b0 , c0 , output c1);
	wire o0 , o1 , o2 , o3 , o4 , o5 , o6;
	mynor2inp n0(a1, b1, o0);
	mynor3inp n1(a1, a0, c0, o1) , n2(c0, a1, b0, o2) , n3(a1, a0, b0, o3) , n4(b1, b0, c0, o4) , n5(a0, b1, b0, o5) , n6(a1, b0, c0, o6);
	mynor7inp n7(o0 , o1 , o2 , o3 , o4 , o5 , o6, c1);
endmodule
