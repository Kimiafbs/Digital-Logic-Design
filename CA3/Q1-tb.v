`timescale 1ns/1ns

module alu16_tb();
    reg signed [15:0] n , m;
    reg [2:0] opc;
    reg c;
    wire signed [15:0] f;
    wire zer , neg;
    ALU16 UUT(n , m , opc , c , f , zer , neg);
    initial begin
	opc = 3'b0;
	c = 1'b0;
	n = 16'd8;
	m = 16'd3;
	#100 opc = 3'd1;
	#100 opc = 3'd2;
	#100 opc = 3'd3;
	#100 opc = 3'd4;
	#100 opc = 3'd5;
	#100 opc = 3'd6;
	#100 opc = 3'd7;
        #100 opc = 3'b0;
        repeat(7) begin 
            #100
            opc = opc + 1;
            n = $random;
            m = $random;
            c = $random;
        end
        #100 $stop;
    end
endmodule
