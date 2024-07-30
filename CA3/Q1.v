`timescale 1ns/1ns

module ALU16(input signed [15:0] inN , inM , input [2:0] opc , input inC , output reg signed [15:0] outF , output zer , neg);
    always @(inN , inM , opc) begin
	outF = 16'b0;
        case (opc)
            3'd0 : outF = inN + inM + inC;
            3'd1 : outF = inM + (inN >>> 1'b1);
            3'd2 : outF = (inN > inM) ? inN : inM;
            3'd3 : outF = inM + (inM <<< 1'b1);
            3'd4 : outF = inN & inM;
            3'd5 : outF = inN | inM;
            3'd6 : outF = ~inM;
            3'd7 : outF = 16'b0;
        endcase
    end
    assign neg = outF[15];
    assign zer = ~|outF;
endmodule
