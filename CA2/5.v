`timescale 1ns/1ns

module tst5();
	reg aa1 , aa0 , bb1 , bb0 , cc0;
	wire cc1 , ss1 , ss0;
	nor_cscalc UUT0(aa1 , aa0 , bb1 , bb0 , cc0 , cc1 , ss1 , ss0);
	sc_ass UUT1(aa1 , aa0 , bb1 , bb0 , cc0 , cc1_2 , ss1_2 , ss0_2);
	initial begin
		aa1 = 1'b1; aa0 = 1'b1;
		bb1 = 1'b1; bb0 = 1'b0;
		cc0 = 1'b1;
		#400
		aa1 = 1'b1; aa0 = 1'b0;
		bb1 = 1'b0; bb0 = 1'b0;
		cc0 = 1'b0;
		#400
		aa1 = 1'b1; aa0 = 1'b0;
		bb1 = 1'b1; bb0 = 1'b0;
		cc0 = 1'b1;
		#400
		aa1 = 1'b0; aa0 = 1'b0;
		bb1 = 1'b0; bb0 = 1'b1;
		cc0 = 1'b0;
		#400 $stop;
	end
endmodule
