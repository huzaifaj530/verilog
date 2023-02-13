`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////
module decoder(a,b,y1,y2,y3,y4);
input a,b;
output y1,y2,y3,y4;
wire abar ,bbar;

not(abar,a);
not(bbar,b);

and(y1,abar,bbar);
and(y2,abar,b);
and(y3,a,bbar);
and(y4,a,b);


endmodule
