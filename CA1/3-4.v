`timescale 1ns/1ns

module nor4inp(input a , b , c , d , output w);
	supply0 gnd;
	supply1 vdd;
	wire y0 , y1 , y2;
	pmos #(5 , 6 , 7) t1(y0 , vdd , a) , t2(y1 , y0 , d) , t3(y2 , y1 , b) , t4(w , y2 , c);
	nmos #(3 , 4 , 5) t5(w , gnd , a) , t6(w , gnd , b) , t7(w , gnd , c) , t8(w , gnd , d);
endmodule