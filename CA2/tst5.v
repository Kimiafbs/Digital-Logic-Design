`timescale 1ns/1ns

module tst5();
	reg aa1 , aa0 , bb1 , bb0 , cc0;
	wire cc1 , ss1 , ss0 , cc12 , ss12 , ss02;
	nor_cscalc UUT0(aa1 , aa0 , bb1 , bb0 , cc0 , cc1 , ss1 , ss0);
	sc_mux UUT1(aa1 , aa0 , bb1 , bb0 , cc0 , cc12 , ss12 , ss02);
	initial begin
		aa1 = 1'b1; aa0 = 1'b1;
		bb1 = 1'b1; bb0 = 1'b0;
		cc0 = 1'b1;
		#200
		aa1 = 1'b1; aa0 = 1'b0;
		bb1 = 1'b0; bb0 = 1'b0;
		cc0 = 1'b0;
		#200
		aa1 = 1'b1; aa0 = 1'b0;
		bb1 = 1'b1; bb0 = 1'b0;
		cc0 = 1'b1;
		#200
		aa1 = 1'b0; aa0 = 1'b0;
		bb1 = 1'b0; bb0 = 1'b1;
		cc0 = 1'b0;
		#200
		aa1 = 1'b1; aa0 = 1'b0;
		bb1 = 1'b0; bb0 = 1'b0;
		cc0 = 1'b1;
		#200
		aa1 = 1'b1; aa0 = 1'b0;
		bb1 = 1'b1; bb0 = 1'b1;
		cc0 = 1'b1;
		#200
		aa1 = 1'b1; aa0 = 1'b1;
		bb1 = 1'b1; bb0 = 1'b1;
		cc0 = 1'b1;
		#200
		aa1 = 1'b0; aa0 = 1'b0;
		bb1 = 1'b0; bb0 = 1'b0;
		cc0 = 1'b0;
		#200 $stop;
	end
endmodule
