`timescale 1ns / 1ps
module ALU_8bit(op_code, cout,A,B,Out);
input [2:0]op_code;
input [7:0]A;
input [7:0]B;
output reg [15:0]Out;
output reg cout;

always @(A or B or op_code)
begin
case(op_code)
3'b000:begin Out=A+B;cout=A&B; end //addition of A&B//
3'b001:begin Out=A-B; cout=(~A)&B; end //subtraction of A&B//
3'b010:Out=A*B; //Multiplication of A&B//
3'b011:Out=A<<1; //Left Shift of A//
3'b100:Out=A>>1; //Right Shift of A//
3'b101:Out=A&B; //Bitwise AND of A&B//
3'b110:Out=A|B; //Bitwise OR of A&B//
3'b111:Out=A^B; //Bitwise XOR of A&B//
default: begin Out=7'bz;cout=1'bz;end
endcase
end
endmodule

