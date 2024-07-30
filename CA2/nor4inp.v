`timescale 1ns/1ns

module mynor4inp(input a , b , c , d , output w);
	supply1 vdd;
	supply0 gnd;
	wire y0 , y1 , y2;
	nmos #(3, 4, 5) t1(w, gnd, a) , t2(w, gnd, b) , t3(w, gnd, c) , t4(w, gnd, d);
	pmos #(5, 6, 7) t5(w, y0, d) , t6(y0, y1, c) , t7(y1, y2, b) , t8(y2, vdd, a);
endmodule
