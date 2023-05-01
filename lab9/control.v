`timescale 1ns / 1ps

module control(alu_src,branch,mem_read,mem_to_reg,reg_write,mem_write,alu_op0,alu_op1,opcode, clk);
input clk;
input  [6:0] opcode;
output reg alu_src,branch,mem_read,mem_to_reg,reg_write,mem_write,alu_op0,alu_op1;


parameter r_type=7'b0110011;
parameter s_type=7'b0000111;
parameter l_type=7'b0000011;
parameter b_type=7'b1100011;

always@(posedge clk or opcode)begin
	case(opcode)
	r_type:begin
		alu_src=0;
		mem_to_reg=0;
		reg_write=1;
		mem_read=0;
		mem_write=0;
		branch=0;
		alu_op1=1;
		alu_op0=0;
	end
	s_type:begin
		alu_src=1;
		mem_to_reg=1'bx;
		reg_write=1;
		mem_read=1;
		mem_write=0;
		branch=0;
		alu_op1=0;
		alu_op0=0;
	
	end
	l_type:begin
		alu_src=1;
		mem_to_reg=0;
		reg_write=0;
		mem_read=0;
		mem_write=1;
		branch=0;
		alu_op1=0;
		alu_op0=0;
	end
	
	b_type:begin
		alu_src=0;
		mem_to_reg=1'bx;
		reg_write=0;
		mem_read=0;
		mem_write=0;
		branch=1;
		alu_op1=0;
		alu_op0=1;
	end
	endcase
end

endmodule
