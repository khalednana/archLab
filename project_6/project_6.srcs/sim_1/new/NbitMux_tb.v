`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 03:15:41 PM
// Design Name: 
// Module Name: NbitMux_tb
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

module NbitMux_tb();
localparameter n = 8;


reg [n-1:0] A;
reg [n-1:0] B;
reg sel;
wire [n-1:0] result;

initial begin
A = 8'b11111111;
B = 8'b00000000;
sel = 1'b1;
#10;
if (result == A)
$display("success");
else
$display("fail");


sel = 1'b0;
#10;
if (result == B)
$display("success");
else
$display("fail");
end

N_bit_MUX #(.N(n)) inst(.A(A), .B(B), .sel(sel), .result(result));

endmodule


