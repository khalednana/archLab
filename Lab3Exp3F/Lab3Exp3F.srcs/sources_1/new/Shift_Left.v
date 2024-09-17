`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 04:14:41 PM
// Design Name: 
// Module Name: Shift_Left
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


module Shift_Left #(parameter N= 32)
(input [N-1:0] A, output [N-1:0] B);
assign B= {A[N-2:0], 1'b0};
endmodule
