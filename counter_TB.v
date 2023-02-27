`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:


module counter_TB;

	// Inputs
	reg clk;

	// Outputs
	wire q0;
	wire q1;
	wire q2;
	wire q3;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.q0(q0), 
		.q1(q1), 
		.q2(q2), 
		.q3(q3), 
		.clk(clk)
	);
always#10 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		#955;
		// Wait 100 ns for global reset to finish
	$finish;
        
		// Add stimulus here

	end
      
endmodule

