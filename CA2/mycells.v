`timescale 1ns/1ns
module NOT(A, Y);
input A;
output Y;
assign #(5,7) Y = ~A;
endmodule

module NOR(A, B, Y);
input A, B;
output Y;
assign #(10,14) Y = ~(A | B);
endmodule

module NOR_Three(A, B, C, Y);
input A, B, C;
output Y;
assign #(15,21) Y = ~(A | B | C);
endmodule

module DFF(C, D, Q);
input C, D;
output reg Q;
always @(posedge C)
	Q <= D;
endmodule

module DFF_PP0 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(posedge C or posedge R) begin
	if (R == 1)
		Q <= 0;
	else
		Q <= D;
end
endmodule

module DFF_PP1 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(posedge C or posedge R) begin
	if (R == 1)
		Q <= 1;
	else
		Q <= D;
end
endmodule
