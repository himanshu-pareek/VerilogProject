`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:37 07/28/2017 
// Design Name: 
// Module Name:    fsm_struct 
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
module fsm_struct (inp, clk, so, out);
  
  	input inp, clk;
  	output out;
  	output [1:0] so;
  	wire [1:0] si;
  
  	wire so0_, so1_;

  	stateTransFn_struct STFB (inp, clk, so, si);
  	outputFn_struct OFB (inp, clk, so, out);
  	d_flip_flop_edge_triggered D1 (so[0], so0_, clk, si[0]);
  	d_flip_flop_edge_triggered D2 (so[1], so1_, clk, si[1]);

endmodule


module stateTransFn_struct ( inp, clk, si, so );

	input inp, clk;
	input [1:0] si;
	output [1:0] so;
	
	nor NG1 (a, inp, si[0]);
	and AG1 (b, ~inp, si[1]);
	and AG2 (c, si[1], ~si[0]);
	
	or OG1 (so[0], a, b, c);
	assign so[1] = inp;

endmodule


module outputFn_struct ( inp, clk, s, out);

	input inp, clk;
  	input [1:0] s;
	output out;
	
	// reg out;
  	wire s1_, i_, a, b;
	
	not NG1 (s1_, s[1]);
	not NG2 (i_, inp);
	
  
  	and AG1 (a, s[0], s1_, inp);
	and AG2 (b, s[0], s[1], i_);
  
  	or OG1 (out, a, b);

endmodule

module d_flip_flop_edge_triggered(Q, Qn, C, D);
   output Q;
   output Qn;
   input  C;
   input  D;

   wire   Cn;   // Control input to the D latch.
   wire   Cnn;  // Control input to the SR latch.
   wire   DQ;   // Output from the D latch, input to the gated SR latch.
   wire   DQn;  // Output from the D latch, input to the gated SR latch.
   
   not(Cn, C);
   not(Cnn, Cn);   
   d_latch dl(DQ, DQn, Cn, D);
   sr_latch_gated sr(Q, Qn, Cnn, DQ, DQn);   
endmodule // d_flip_flop_edge_triggered

module d_latch(Q, Qn, G, D);
   output Q;
   output Qn;
   input  G;   
   input  D;

   wire   Dn; 
   wire   D1;
   wire   Dn1;

   not(Dn, D);   
   and(D1, G, D);
   and(Dn1, G, Dn);   
   nor(Qn, D1, Q);
   nor(Q, Dn1, Qn);
endmodule // d_latch

module sr_latch_gated(Q, Qn, G, S, R);
   output Q;
   output Qn;
   input  G;   
   input  S;
   input  R;

   wire   S1;
   wire   R1;
   
   and(S1, G, S);
   and(R1, G, R);   
   nor(Qn, S1, Q);
   nor(Q, R1, Qn);
endmodule // sr_latch_gated

