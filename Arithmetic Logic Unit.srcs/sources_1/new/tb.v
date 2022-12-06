`timescale 1ns / 1ps

module tb();
reg [2:0]op_code;
reg [7:0]A;
reg [7:0]B;
wire [15:0]Out;
wire cout;

ALU_8bit AL1(op_code, cout,A,B,Out);

initial
begin
A=45;B=38;
#10 op_code=3'b000;
#10 op_code=3'b001;
#10 op_code=3'b110;
#10 op_code=3'b111;
#10 $finish;
end
endmodule
