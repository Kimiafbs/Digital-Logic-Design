`timescale 1ns/1ns

module register4(input [3:0] PI , input clk , cen , rst , output reg [3:0] PO);
    always @ (posedge clk , posedge rst) begin 
        if (rst) PO <= 4'd0;
        else if (cen) PO <= PI;
    end
endmodule
