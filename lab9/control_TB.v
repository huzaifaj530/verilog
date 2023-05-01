`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:28 05/01/2023
// Design Name:   control
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/Lab_9/control_tb.v
// Project Name:  Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_tb;

	// Inputs
	reg [6:0] opcode;
	reg clk;

	// Outputs
	wire alu_src;
	wire branch;
	wire mem_read;
	wire mem_to_reg;
	wire reg_write;
	wire mem_write;
	wire alu_op0;
	wire alu_op1;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.alu_src(alu_src), 
		.branch(branch), 
		.mem_read(mem_read), 
		.mem_to_reg(mem_to_reg), 
		.reg_write(reg_write), 
		.mem_write(mem_write), 
		.alu_op0(alu_op0), 
		.alu_op1(alu_op1), 
		.opcode(opcode), 
		.clk(clk)
	);
always#5clk=~clk;
	initial begin
		// Initialize Inputs
		
		clk = 0;#10;
		
		opcode= 7'b0110011;#15;
		opcode= 7'b0000111;#15;
		opcode= 7'b0000011;#15;
		opcode= 7'b1100011;#15;
		$finish;
      

	end
      
endmodule

