`timescale 1s/100ms
`include "mealyfsm.v"

module mealyfsm_tb ();

	reg clk;
	reg rst;
	reg x;
	wire y;

	mealyfsm mymealy(clk, rst, x, y);

	initial
	begin 
		$monitor("x = %b, y = %b",x, y);
		$dumpfile("mealyfsm.vcd");
		$dumpvars(0, mealyfsm_tb);

		x <= 0;

		rst <= 1; clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		rst <= 0; clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		rst <= 1; clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		x <= 1;

		clk <= 1; #1;
		clk <= 0; #1;

		rst <= 0; clk <= 1; #1;
		clk <= 0; #1;

		rst <= 1; clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		rst <= 0; clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		rst <= 1; clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		clk <= 1; #1;
		clk <= 0; #1;

		x <= 0;

		clk <= 1; #1;
		clk <= 0; #1;

		rst <= 0; clk <= 1; #1;
		clk <= 0; #1;

		rst <= 1; clk <= 1; #1;
		clk <= 0; #1;

		$finish;
	end

endmodule