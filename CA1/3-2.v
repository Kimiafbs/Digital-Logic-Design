 `timescale 1ns/1ns

module norinv(input a , output w);
	supply1 vdd;
	supply0 gnd;
	wire y;
	nmos #(3, 4, 5) p1(w, gnd, a) , p2(w, gnd, a);
	pmos #(5, 6, 7) p3(w, y, a) , p4(y, vdd, a);
endmodule
