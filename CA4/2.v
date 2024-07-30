`timescale 1ns/1ns

module shifter (input [3:0] si , input clk , shn , rst , output reg [3:0] so);
    wire [3:0] stage [0:7];

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : shift_stage
            if (i == 0) begin
                register4 stage_reg (si , clk , shn , rst , stage[i]);
            end else begin
                register4 stage_reg (stage[i-1] , clk , shn , rst , stage[i]);
            end
        end
    endgenerate

    assign so = stage[7];

endmodule
