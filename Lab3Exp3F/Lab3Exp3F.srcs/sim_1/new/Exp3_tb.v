`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 04:15:04 PM
// Design Name: 
// Module Name: Exp3_tb
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


module Exp3_tb( );
localparam n = 8;
reg [n-1:0]A;
wire [n-1:0]B;
initial begin
A = 8'b11111111;
#10;
end
Shift_Left #(.N(n)) inst(.A(A),.B(B));
endmodule