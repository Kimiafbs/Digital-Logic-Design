`timescale 1ns/1ns


module myinv(input q, output t);


supply1 vdd;
supply0 gnd;
nmos #(3,4,5) t1(t,gnd,q);
pmos #(5,6,7) t2(t,vdd,q);

endmodule

