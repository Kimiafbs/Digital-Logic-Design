`timescale 1ns/1ns

module nor_s1(input a1 , a0 , b1 , b0 , c0 , output s1);
	wire o0 , o1 , o2 , o3 , o4 , o5 , o6 , o7 , o8 , o9 , o10 , o11;
	mynor4inp n0(c0, a1, a0, b1, o0) , n1(c0, a1, a0, b0, o1) , n2(a1, a0, b1, b0, o2) , n3(a1, ~a0, ~b1, ~b0, o3) , n4(c0, ~b1, ~b0, ~a0, o4) , n5(c0, ~a1, ~b1, b0, o5);
	mynor4inp n6(~a1, a0, ~b1, b0, o6) , n7(~a0, ~a1, b1, ~b0, o7) , n8(~c0, a1, ~b1, ~b0, o8) , n9(~c0, a1, ~a0, ~b1, o9) , n10(~c0, ~a1, b1, ~b0, o10) , n11(~c0, ~a1, ~a0, b1, o11);
	mynor12inp n12(o0 , o1 , o2 , o3 , o4 , o5 , o6 , o7 , o8 , o9 , o10 , o11 , s1);
endmodule
