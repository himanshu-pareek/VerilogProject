`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:30:20 07/22/2017 
// Design Name: 
// Module Name:    testBench 
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
module testBench (inp, clk);

	integer seed;
	output clk;
	output inp;
  
  	reg inp;
  	reg clk;
	
	initial begin
		seed = $stime;
      	clk = 1;
      	#15000 $finish;
	end

	always begin
		#500 inp = $random(seed);
	end
  
  	always begin
      	#250 clk = !clk;
    end

endmodule
