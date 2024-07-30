`timescale 1ns/1ns

module mynor12inp(input a , b , c , d ,e , f , g , h , i , j , k , l , output w);
	supply1 vdd;
	supply0 gnd;
	wire y0 , y1 , y2 , y3 , y4 , y5 , y6 , y7 , y8 , y9 , y10;
	nmos #(3, 4, 5) t1(w, gnd, a) , t2(w, gnd, b) , t3(w, gnd, c) , t4(w, gnd, d) , t5(w, gnd, e) , t6(w, gnd, f);
	nmos #(3, 4, 5) t7(w, gnd, g) , t8(w, gnd, h) , t9(w, gnd, i) , t10(w, gnd, j) , t11(w, gnd, k) , t12(w, gnd, l);
	pmos #(5, 6, 7) t13(w, y0, l) , t14(y0, y1, k) , t15(y1, y2, j) , t16(y2, y3, i) , t17(y3, y4, h) , t18(y4, y5, g);
	pmos #(5, 6, 7) t19(y5, y6, f) , t20(y6, y7, e) , t21(y7, y8, d) , t22(y8, y9, c) , t23(y9, y10, b) , t24(y10, vdd, a);
endmodule
