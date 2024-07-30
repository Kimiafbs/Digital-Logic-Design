`timescale 1ns/1ns

module mymux(input a, b, s, output w);

wire x;
nmos #(3,4,5) t1(w,a,x);
nmos #(3,4,5) t2(w,b,s);
myinv s_inv(s,x);

endmodule
