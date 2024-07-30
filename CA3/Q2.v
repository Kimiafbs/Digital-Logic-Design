`timescale 1ns/1ns

module adder(input signed [15:0] a , b , input c , output logic signed [15:0] w , output co);
    assign {co , w} = a + b + c;
endmodule

module rshift(input signed [15:0] a , output logic signed [15:0] w);
    assign w = a >>> 1;
endmodule

module lshift(input signed [15:0] a , output logic signed [15:0] w);
    assign w = a <<< 1;
endmodule

module mux2to1(input signed [15:0] a , b , input s , output logic signed [15:0] w);
    assign w = s == 1'b0 ? a :
    s == 1'b1 ? b : 1'bz;
endmodule

module mux4to1(input signed [15:0] a , b , c , d , input [1:0] s , output logic signed [15:0] w);
    assign w = s == 2'b00 ? a :
    s == 2'b01 ? b :
    s == 2'b10 ? c :
    s == 2'b11 ? d : 1'bz;
endmodule

module mux4to1_2(input a , b , c , d , input [1:0] s , output w);
    assign w = s == 2'b00 ? a :
    s == 2'b01 ? b :
    s == 2'b10 ? c :
    s == 2'b11 ? d : 1'bz;
endmodule

module mux8to1(input [15:0] a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 , input [2:0] s , output logic signed [15:0] w);
    assign w = s == 3'b000 ? a0:
    s == 3'b001 ? a1:
    s == 3'b010 ? a2:
    s == 3'b011 ? a3:
    s == 3'b100 ? a4:
    s == 3'b101 ? a5:
    s == 3'b110 ? a6:
    s == 3'b111 ? a7: 1'bz;
endmodule

module AND(input signed [15:0] a , b , output logic signed [15:0] w);
    assign w = a & b;
endmodule

module OR(input signed [15:0] a , b , output logic signed [15:0] w);
    assign w = a | b;
endmodule

module NOT(input signed [15:0] a , output logic signed [15:0] w);
    assign w = ~a;
endmodule

module selfnor(input signed [15:0] a , output signed w);
    assign w = ~|a;
endmodule

module alu_structural(input signed [15:0] inN , inM , input [2:0] opc , input inC , output logic signed [15:0] outF , output zer , neg);
    wire w7;
    wire [15:0] w0 , w1 , w2 , w3 , w4 , w5 , w6 , w9 , w10 , w11 , w12 , w13;
    mux2to1 m1(inN , inM , w6[15]|w7 , w9);
    mux4to1 m2(inM , inM , w0 , inM , opc[1:0] , w3) , m3(inN , w1 , inN , w2 , opc[1:0] , w4);
    mux4to1_2 m4(inC , 1'b0 , 1'b1 , 1'b0 , opc[1:0] , w5);
    adder ad(w3 , w4 , w5 , w6 , w7);
    NOT n1(inM , w0) , n2(inM , w12);
    rshift rs(inN , w1);
    lshift ls(inM , w2);
    OR o(inN , inM , w11);
    AND a(inN , inM , w10);
    mux8to1 m5(w6 , w6 , w9 , w6 , w10 , w11 , w12 , 16'b0 , opc , w13);
    selfnor sn(w13 , zer);
    assign neg = w13[15];
    assign outF = w13;
endmodule
