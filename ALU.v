`timescale 1ns / 1ps
module ALU(a,b,s,out);
input [7:0] a,b;
input [3:0] s;
output [7:0] out;
reg [7:0] out;

always@(*)
begin
	case(s)
	3'b000:
		out=a+b;
	3'b001:
		out=a-b;	
	3'b010:
		out=a*b;
	3'b011:
		out=a/b;
	3'b100:
		out=a&b;
	3'b101:
		out=a|b;
	3'b110:
		out=a^b;
	3'b111:
		out=~(a^b);
	endcase 
end
endmodule