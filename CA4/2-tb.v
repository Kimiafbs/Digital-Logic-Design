`timescale 1ns/1ns

module shifter_tb();
    reg [3:0] si;
    reg clk = 1'b0;
    reg shn;
    reg rst;

    wire [3:0] so;

    shifter UUT(si , clk , shn , rst , so);

    always #5 clk <= ~clk;

    initial begin
        si = 4'b0000;
        shn = 1'b0;
        rst = 1'b1;
        #10 rst = 1'b0;
        si = 4'b1010;
        shn = 1'b1;
        
        #80 shn = 1'b0;
        si = 4'b0000;

        #20 si = 4'b1100;
        shn = 1'b1;
	
	#80 si = 4'b0110;
	shn = 1'b0;

        #80 $stop;
    end
endmodule

