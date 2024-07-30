`timescale 1ns/1ns

module mymux(input a , b , s , output w);
	nmos #(3 , 4 , 5) t1(w, a, ~s) , t2(w, b, s);
endmodule
	