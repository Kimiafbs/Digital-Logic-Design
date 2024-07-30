`timescale 1ns/1ns

module mynor7inp(input a , b , c , d ,e , f , g , output w);
	supply1 vdd;
	supply0 gnd;
	wire y0 , y1 , y2 , y3 , y4 , y5;
	nmos #(3, 4, 5) t1(w, gnd, a) , t2(w, gnd, b) , t3(w, gnd, c) , t4(w, gnd, d) , t5(w, gnd, e) , t6(w, gnd, f) , t7(w, gnd, g);
	pmos #(5, 6, 7) t8(w, y0, g) , t9(y0, y1, f) , t10(y1, y2, e) , t11(y2, y3, d) , t12(y3, y4, c) , t13(y4,y5 , b) , t14(y5, vdd, a);
endmodule
