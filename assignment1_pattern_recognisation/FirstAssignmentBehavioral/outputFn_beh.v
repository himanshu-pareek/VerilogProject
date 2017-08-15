`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:49 07/28/2017 
// Design Name: 
// Module Name:    outputFn_beh 
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
module outputFn_beh ( inp, clk, s, out);

	input inp, clk;
  	input [1:0] s;
	output out;
	
	reg out;
	
  always @ (posedge clk) begin
		if (inp)
			out = (~s[1]) & s[0];
		else
			out = s[1] & s[0];
	end

endmodule

