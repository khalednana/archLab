`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 03:45:53 PM
// Design Name: 
// Module Name: control_unit
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

module control_unit
(
    input [31:0] instruction,
    output reg branch,
    output reg memread,
    output reg memtoreg,
    output reg [1:0] alu_op,
    output reg mem_write,
    output reg alu_src,
    output reg reg_write
 );
 
 wire [4:0] inst;
 assign inst = instruction [6:2];
 
 always@(*) begin
 
 case (instruction [6:2])
 5'b01100: begin
     branch <= 0;
     memread <= 0;
     memtoreg <= 0;
     alu_op <= 2'b10;
     mem_write = 0;
     alu_src = 0;
     reg_write = 1;
 end
5'b00000: begin 
            
         branch = 0;
         memread = 1;
         memtoreg = 1;
         alu_op = 2'b00;
         mem_write = 0;
         alu_src = 1;
         reg_write = 1;
        end
        
    5'b01000: begin 
            
         branch = 0;
         memread = 0;
         memtoreg = 0;
         alu_op = 2'b00;
         mem_write = 1;
         alu_src = 1;
         reg_write = 0;
        end
    
    5'b11000: begin 
            
         branch = 1;
         memread = 0;
         memtoreg = 0;
         alu_op = 2'b01;
         mem_write = 0;
         alu_src = 0;
         reg_write = 0;
        end
 endcase 
 end
endmodule


