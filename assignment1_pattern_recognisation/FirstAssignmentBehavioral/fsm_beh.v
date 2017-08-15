`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:16 07/28/2017 
// Design Name: 
// Module Name:    fsm_beh 
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
module fsm_beh (inp, clk, si, so, out);
  
  	input inp, clk;
  	output out;
  	output [1:0] so;
  	output [1:0] si;

	stateTransFn_beh STFB (inp, clk, si, so);
	outputFn_beh OFB (inp, clk, si, out);
	delayElem_beh DEB (si, so, clk);

endmodule

