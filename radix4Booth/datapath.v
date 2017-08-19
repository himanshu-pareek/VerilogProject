`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:24 08/19/2017 
// Design Name: 
// Module Name:    datapath 
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
// Code your design here
module register( in, out, clk, rst);
 
input[7:0] in;
output[7:0] out;
input clk,rst;
reg[7:0] out;
 
  always @(posedge clk or negedge rst)
	begin
      if(~rst)
        out <= 8'b00000000;
      else
     	out <= in;
	end
endmodule

module alu(x,y,z);
  input[7:0] x;
  input[7:0] y;
  output[7:0] z;
  //use adder module
endmodule

module double_mpcand(x,y,clk,rst);
  input[7:0] x;
  output[7:0] y;
  register r0(0,y[0],clk,rst);
  register r1(x[0],y[1],clk,rst);
  register r2(x[1],y[2],clk,rst);
  register r3(x[2],y[3],clk,rst);
  register r4(x[3],y[4],clk,rst);
  register r5(x[4],y[5],clk,rst);
  register r6(x[5],y[6],clk,rst);
  register r7(x[6],y[7],clk,rst);
endmodule

module mux(x,y,select,z);
  input x,y,select;
  output z;
  wire a,b,c;
  not n1(a,select);
  nand na1(b,x,a);
  nand na2(c,y,select);
  nand na3(z,b,c);
endmodule

module mult_mux(x,y,z,sel);
  input[7:0] x;
  input[7:0] y;
  output[7:0] z;
  input sel;
  integer i;
  for(i=0;i<8;i=i+1)
    begin
      mux(x[i],y[i],select,sel);
    end
endmodule
