`timescale 1ns/1ns

module mynor(input a , b , output w);
	supply1 vdd;
	supply0 gnd;
	wire y;
	nmos #(3, 4, 5) t1(w, gnd, a);
	nmos #(3, 4, 5) t2(w, gnd, b);
	pmos #(5, 6, 7) t3(w, y, b);
	pmos #(5, 6, 7) t4(y, vdd, a);
endmodule
