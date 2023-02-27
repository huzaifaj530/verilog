`timescale 1ns / 1ps

module counter(q0,q1,q2,q3,clk);
input clk;
output reg q3=0,q2=0,q1=0,q0=0;
always@(posedge clk)
begin
	
	if(q0==1&&q1==1&&q2==1)q3=~q3;
	if(q0==1&&q1==1)q2=~q2;
	if(q0==1)q1=~q1;
	q0=~q0;
end

endmodule
