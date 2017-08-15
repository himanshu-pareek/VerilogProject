`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:29:03 07/22/2017 
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
	// wire [1:0] si;
	wire [1:0] so;
	
	// assign si = 2'b00;

	fsm_struct FSMB (inp, clk, so, out);
	testBench TB (inp, clk);
  
  	initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
	
endmodule
