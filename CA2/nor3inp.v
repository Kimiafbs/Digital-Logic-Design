`timescale 1ns/1ns

module mynor3inp(input a , b , c , output w);
	supply1 vdd;
	supply0 gnd;
	wire y0 , y1;
	nmos #(3, 4, 5) t1(w, gnd, a) , t2(w, gnd, b) , t3(w, gnd, c);
	pmos #(5, 6, 7) t4(w, y0, c) , t5(y0, y1, b) , t6(y1, vdd, a);
endmodule
