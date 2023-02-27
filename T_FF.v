`timescale 1ns / 1ps
module T_FF(t,clk,q,qbar);
input t,clk;
output reg q, qbar;

always@(posedge clk)
begin 
	if(t==0)
	begin
	q=0;
	qbar=1;
	end
	else
	begin
	q=1;
	qbar=0;
	end
end

endmodule
