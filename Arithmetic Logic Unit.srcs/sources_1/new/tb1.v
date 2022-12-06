`timescale 1ns / 1ps
module tb1();
reg [2:0]op_code;
reg [7:0]A;
reg [7:0]B;
wire [15:0]Out;
wire cout;

ALU_8bit AL1(op_code, cout,A,B,Out);

initial
begin
A=49;B=10;
#10 op_code=3'b010;
#10 op_code=3'b011;
#10 op_code=3'b100;
#10 op_code=3'b101;
#10 $finish;
end
endmodule
