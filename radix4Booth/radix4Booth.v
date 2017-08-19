`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:34 08/19/2017 
// Design Name: 
// Module Name:    radix4Booth 
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
module DFF( in, out, clk, rst);
 
	input[7:0] in;
	output[7:0] out;
	input clk,rst;
	reg[7:0] out;
 
	always @(posedge clk or posedge rst) begin
		if(~rst)
			out <= 8'b00000000;
      else
			out <= in;
	end
endmodule



module fa(s,co,a,b,ci);
	output s,co;
   input a,b,ci;
   xor u1(s,a,b,ci);
   and u2(n1,a,b);
   and u3(n2,b,ci);
   and u4(n3,a,ci);
   or u5(co,n1,n2,n3);
endmodule

module alu(x,y,z,fsel);
	input[7:0] x;
	input[7:0] y;
	output[7:0] z;
	input fsel;
	wire[7:0] flip_y;
	wire[7:0] add;
	wire[7:0] sub;
	wire[7:0] carry_add;
	wire[7:0] carry_sub;
	genvar i;
	for(i=0;i<8;i=i+1) begin
		xor x1(flip_y[i],1,y[i]);
	end    

	//use adder 
	fa ADD1(add[0],carry_add[0],x[0],y[0],0);
	for(i=1;i<8;i=i+1) begin
		fa ADD2(add[i],carry_add[i],x[i],y[i],carry_add[i-1]);
	end

	//use subtractor
	fa SUB1(sub[0],carry_sub[0],x[0],flip_y[0],1);
	for(i=1;i<8;i=i+1) begin
		fa SUB2(sub[i],carry_sub[i],x[i],flip_y[i],carry_sub[i-1]);
	end
  
	//now a 8 muxs
	 /* for(i=0;i<8;i=i+1)
		 begin
			mux m1(sub[i],add[i],fsel,z[i]);
		 end
		 */

	mult_mux mm(sub,add,z,fsel);
   
endmodule

module double_mpcand(x,y);
	input[7:0] x;
	output[7:0] y;
	buf(y[0],0);
	buf(y[1],x[0]);
	buf(y[2],x[1]);
	buf(y[3],x[2]);
	buf(y[4],x[3]);
	buf(y[5],x[4]);
	buf(y[6],x[5]);
	buf(y[7],x[6]);

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
	genvar i;
	for(i=0;i<8;i=i+1) begin
      mux m1(x[i],y[i],sel,z[i]);
   end
endmodule

module mpcand(in,out,ldmp,clk,rst);
	input[7:0] in;
	//reg[7:0] in;
	output[7:0] out;
	input ldmp,clk,rst;
	wire[7:0] w;
	genvar i;
	for(i=0;i<8;i=i+1) begin
		and a1(w[i],in[i],ldmp);
	end
	DFF mp(w,out,clk,rst);
endmodule

module DFF_1bit( in, out, clk, rst);
 
	input in;
	output out;
	input clk,rst;
	reg out;
 
	always @(posedge clk or posedge rst) begin
		if(rst)
			out <= 0;
      else
			out <= in;
  end
endmodule

module count(rst,clk,q2,q1,q0);
	input rst,clk;
	output q2,q1,q0;
	wire D0,D1,D2,c0,c1,c2;
	DFF_1bit d0(D0,q0,clk,rst);
	DFF_1bit d1(D1,q1,clk,rst);
	DFF_1bit d2(D2,q2,clk,rst);
	fa fa1(D0,c0,q0,1,0);
	fa fa2(D1,c1,q1,0,c0);
	fa fa3(D2,c2,q2,0,c1);  
endmodule

/*
module shr_prd(shr,clk,rst);
  input shr, clk, rst;
  always@(posedge clk or posedge rst)
endmodule

module shr_mplier();
endmodule

module last_bit();
endmodule
*/

module shiftreg(ld,zi,shr,Di,out,clk,rst);
	output out;
	input ld,zi,shr,Di,clk,rst;
	wire X1,X2,in; 
	and a1(X1,ld,zi);
	and a2(X2,shr,Di);
	or o1(in1,X1,X2);
	not n1(nld,ld);
	not(nshr,shr);
	and a3(in2,nld,nshr,out);
	or(in,in1,in2);
	DFF_1bit D(in,out,clk,rst);
endmodule




module datapath(rst,clk,mplier,mpcnd,inc_count,shr,ldprd,ldmplier,funcsel,muxsel,ldmp,eqcount,bit0,bit1,bit2,prd );
	input[7:0] mplier,mpcnd;
	input rst,clk,inc_count,shr,ldprd,ldmplier,funcsel,muxsel,ldmp;
	output eqcount, bit0,bit1,bit2;
	output[7:0] prd;

	wire q2,q1,q0;
	count COUNT(rst,clk,q2,q1,q0);

	wire[7:0] x,y,z;
	alu ALU(x,y,z,funsel);

	wire[7:0] mpcnd_out,dmpcnd_out;
	mpcand MPCAND(mpcnd,mpcnd_out,ldmp,clk,rst);

	double_mpcand DMPCAND(mpcnd_out,dmpcnd_out);

	mult_mux MM(mpcnd_out,dmpcnd_out,y,muxsel);

	wire w;
	nor(w,q0,q1);
	and(eqcount,q2,w);

	wire[16:0] out;

	shiftreg last_bit(0,0,shr,out[14],out[16],clk,rst);
	shiftreg prdmp0(ldmplier,mplier[0],shr,out[13],out[15],clk,rst);
	shiftreg prdmp1(ldmplier,mplier[1],shr,out[12],out[14],clk,rst);
	shiftreg prdmp2(ldmplier,mplier[2],shr,out[11],out[13],clk,rst);
	shiftreg prdmp3(ldmplier,mplier[3],shr,out[10],out[12],clk,rst);
	shiftreg prdmp4(ldmplier,mplier[4],shr,out[9],out[11],clk,rst);
	shiftreg prdmp5(ldmplier,mplier[5],shr,out[8],out[10],clk,rst);
	shiftreg prdmp6(ldmplier,mplier[6],shr,out[7],out[9],clk,rst);
	shiftreg prdmp7(ldmplier,mplier[7],shr,out[6],out[8],clk,rst);

	shiftreg prdmp8(ldmplier,z[0],shr,out[5],out[7],clk,rst);
	shiftreg prdmp9(ldmplier,z[1],shr,out[4],out[6],clk,rst);
	shiftreg prdmp10(ldmplier,z[2],shr,out[3],out[5],clk,rst);
	shiftreg prdmp11(ldmplier,z[3],shr,out[2],out[4],clk,rst);
	shiftreg prdmp12(ldmplier,z[4],shr,out[1],out[3],clk,rst);
	shiftreg prdmp13(ldmplier,z[5],shr,out[0],out[2],clk,rst);
	shiftreg prdmp14(ldmplier,z[6],shr,0,out[1],clk,rst);
	shiftreg prdmp15(ldmplier,z[7],shr,0,out[0],clk,rst);
 

endmodule

