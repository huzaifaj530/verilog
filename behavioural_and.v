
module behavioural_and(a,b,o);
input a;
input b;
output o;
reg o;

always@(a or b)
 o=a&b;

endmodule
