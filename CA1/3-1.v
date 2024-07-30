`timescale 1ns/1ns

module mymux4to1
(input s0 , s1 , a , b , c , d , output w);
	wire m0 , m1 , f0 , f1 , f2 , f3 , o0 , o1 , o2 , o3;
	norinv i0(s0 , m0) , i1(s1 , m1);
	nor3inp n0(s0 , s1 , a , o0) , n1(s0 , m1 , b , o1) , n2(m0 , s1 , c , o2) , n3(m0 , m1 , d , o3);
	nor4inp n(o0 , o1 , o2 , o3 , w);
endmodule
