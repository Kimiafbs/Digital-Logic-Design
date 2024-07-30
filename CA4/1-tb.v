`timescale 1ns/1ns

module register4_tb();
    reg [3:0] PI = 4'd0;
    reg clk = 1'b0;
    reg rst = 1'b0;
    reg cen = 1'b0;
    wire [3:0] PO;

    register4 UUT (PI , clk , cen , rst , PO);

    always #5 clk <= ~clk;

    initial begin
        #10 PI = 4'd12;
        #8 cen = 1'b1;
        #14 PI = 4'd9;
        #16 cen = 1'b0;
        PI = 4'd14;
        #9 cen = 1'b1;
        PI = 4'd7;
        #12 rst = 1'b1;
        #11 PI = 4'd15;
        #12 cen = 1'b0;
        #13 cen = 1'b1;
	#4 rst = 1'b0;
	#15 $stop;
    end
endmodule
