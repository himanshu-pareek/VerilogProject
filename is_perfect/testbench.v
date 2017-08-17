`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:14 08/17/2017 
// Design Name: 
// Module Name:    testbench 
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
module testbench;

	// Inputs
	reg [15:0] sw;
	reg clk;
	reg rst;
	reg go;

	// Outputs
	wire ans;
	wire over;

	// Instantiate the Unit Under Test (UUT)
	isPerfect uut (
		.sw(sw), 
		.clk(clk), 
		.rst(rst), 
		.go(go), 
		.ans(ans),
		.over(over)
	);

	initial begin
		// Initialize Inputs
		sw = 6;
		clk = 0;
		rst = 0;
		go = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial
	begin
		#5 go = 1;
	end
	initial
	begin
		rst=1;
		#10 rst =0;
	end
	
	always
	begin
		#5 clk = ~clk;
	end
      
endmodule

