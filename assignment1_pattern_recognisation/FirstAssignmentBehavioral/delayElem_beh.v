`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:36 07/28/2017 
// Design Name: 
// Module Name:    delayElem_beh 
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
module delayElem_beh (si, so, clk);

	input clk;
	input [1:0] so;
	output [1:0] si;
	
	reg [1:0] si;
  
  	initial begin
      	si = 2'b00;
      	//so = 2'b00;
    end
	
  	always @ (posedge clk) begin
      	#10
      	if (so == 2'b00 || so == 2'b01 || so == 2'b10 || so == 2'b11)
       	 	si = so;
      	else
         	si = 2'b00;
	end

endmodule

