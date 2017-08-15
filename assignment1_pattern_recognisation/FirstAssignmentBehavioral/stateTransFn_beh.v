`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:57 07/27/2017 
// Design Name: 
// Module Name:    stateTransFn_beh 
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
module stateTransFn_beh ( inp, clk, si, so );

	input inp, clk;
	input [1:0] si;
	output [1:0] so;
	
	parameter S0 = 2'b00;
	parameter S1 = 2'b01;
	parameter S2 = 2'b10;
	parameter S3 = 2'b11;
	
	reg [1:0] so;
	
  always @ (posedge clk) begin
		case (si) 
			2'b00 : so = (inp) ? 2'b10 : 2'b01;
			2'b01 : so = (inp) ? 2'b10 : 2'b00;
			2'b10 : so = (inp) ? 2'b11 : 2'b01;
			2'b11 : so = (inp) ? 2'b10 : 2'b01;
          	default : so = 2'b00;
		endcase
	end

endmodule
