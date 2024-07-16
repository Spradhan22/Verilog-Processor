`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:47 03/18/2024 
// Design Name: 
// Module Name:    sixteen_bit_op 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sixteen_bit_op(a,b,m,sum);
input [15:0] a;
input [15:0] b;
output [15:0] sum;
wire [15:0] a;
wire [15:0] b;
wire [15:0] sum;
input m;
wire m;
wire temp[15:0];
   one_bit_op O0  (a[0], b[0], m, sum[0], temp[0],m);
	one_bit_op O1  (a[1], b[1], temp[0], sum[1], temp[1],m);
	one_bit_op O2  (a[2], b[2], temp[1], sum[2], temp[2],m);
	one_bit_op O3  (a[3], b[3], temp[2], sum[3], temp[3],m);
	one_bit_op O4  (a[4], b[4], temp[3], sum[4], temp[4],m);
	one_bit_op O5  (a[5], b[5], temp[4], sum[5], temp[5],m);
	one_bit_op O6  (a[6], b[6], temp[5], sum[6], temp[6],m);
	one_bit_op O7  (a[7], b[7], temp[6], sum[7], temp[7],m);
	one_bit_op O8  (a[8], b[8], temp[7], sum[8], temp[8],m);
	one_bit_op O9  (a[9], b[9], temp[8], sum[9], temp[9],m);
	one_bit_op O10 (a[10], b[10], temp[9], sum[10], temp[10],m);
	one_bit_op O11 (a[11], b[11], temp[10], sum[11], temp[11],m);
	one_bit_op O12 (a[12], b[12], temp[11], sum[12], temp[12],m);
	one_bit_op O13 (a[13], b[13], temp[12], sum[13], temp[13],m);
	one_bit_op O14 (a[14], b[14], temp[13], sum[14], temp[14],m);
	one_bit_op O15 (a[15], b[15], temp[14], sum[15], temp[15],m);

endmodule