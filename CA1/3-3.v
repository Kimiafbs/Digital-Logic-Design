` timescale 1ns/1ns

module nor3inp(input a , b , c , output w);
	supply0 gnd;
	supply1 vdd;
	wire y0 , y1;
	nmos #(3 , 4 , 5) t1(w , gnd , a) , t2(w , gnd , b) , t3(w , gnd , c);
	pmos #(5 , 6 , 7) t4(y0 , vdd , a) , t5(y1 , y0 , b) , t6(w , y1 , c);
endmodule