`timescale 1ns/1ns

module shifter_b(input [3:0] si , input clk , shn , rst , output reg [3:0] so);
    reg [3:0] s_array [0:7];
    integer i;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 8; i = i + 1) begin
                s_array[i] = 4'd0;
            end
        end
        else if (shn) begin
            s_array[0] = si;
            for (i = 7; i > 0; i = i - 1) begin
                s_array[i] = s_array[i-1];
            end
        end
    end
    
    assign so = s_array[7];

endmodule

	
