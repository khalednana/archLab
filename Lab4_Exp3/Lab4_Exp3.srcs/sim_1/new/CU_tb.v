`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 03:51:46 PM
// Design Name: 
// Module Name: CU_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module CU_tb();
reg [31:0] instruction;
wire branch;
wire memread;
wire memtoReg;
wire [1:0] alu_op; 
wire mem_write;
wire alu_src;
wire reg_write;

initial begin
instruction = 32'b00000000001100010000000010110011;
#50;
instruction = 32'b00000000000000011010000010000011;
#50;
instruction = 32'b00000000000100010010000000100011;
#50;
instruction = 32'b00000000000000000000000001100011;
#50;

end
control_unit inst1(.instruction(instruction), .branch(branch), .memread(memread), .memtoreg(memtoReg), .alu_op(alu_op), .mem_write(mem_write), .alu_src(alu_src), .reg_write(reg_write));
endmodule

