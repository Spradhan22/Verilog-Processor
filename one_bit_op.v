`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:10 02/26/2024 
// Design Name: 
// Module Name:    one_bit_op 
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
module one_bit_op(a,b,cin,s,cout,m);

	input a,b,cin,m;
	wire x;
	output s;
	wire s;
	output cout;
	wire cout;
	assign x=b^m;
	assign s = a^x^cin;
	assign cout = (a & x) | (x & cin) | (cin & a);

endmodule