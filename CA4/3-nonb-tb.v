`timescale 1ns/1ns

module shifter_nonb_tb();
    reg [3:0] si;
    reg clk = 1'b0;
    reg shn;
    reg rst;
    wire [3:0] so;

    shifter_nonb UUT(si, clk, shn, rst, so);
    
    always #5 clk = ~clk;

    initial begin
        si = 4'b0000;
        shn = 0;
        rst = 1;
        #10 rst = 0; 
	#10 shn = 1;
        si = 4'b1010;
        #80 shn = 0;
        #20 si = 4'b1100;
        shn = 1;
        #80 shn = 0;
        #20 $stop;
    end
endmodule

