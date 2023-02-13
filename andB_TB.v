`timescale 1ns / 1ps

module andB_TB;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	behavioural_and uut (
		.a(a), 
		.b(b), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;#10
		a = 0;
		b = 1;#10
		a = 1;
		b = 0;#10
		a = 1;
		b = 1;#10

		// Wait 100 ns for global reset to finish
       $finish;
		// Add stimulus here

	end
      
endmodule

