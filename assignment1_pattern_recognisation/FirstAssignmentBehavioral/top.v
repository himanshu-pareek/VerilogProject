`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:37 07/28/2017 
// Design Name: 
// Module Name:    top 
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
module top;

	wire inp, clk, out;
	wire [1:0] si;
	wire [1:0] so;
	
	// assign si = 2'b00;

	fsm_beh FSMB (inp, clk, si, so, out);
	testBench TB (inp, clk);
  
  	initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
	
endmodule

