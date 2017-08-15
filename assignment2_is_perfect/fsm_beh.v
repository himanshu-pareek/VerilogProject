`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT KHARAGPUR
// Engineer: HIMANSHU PAREEK
// 
// Create Date:    23:59:51 08/11/2017 
// Design Name: 
// Module Name:    fsm_beh 
// Project Name: IS_FACTOR
// Target Devices: NEXYS 4 BOARD
// Tool versions: 
// Description: This module decides whether given number is perfect or not
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fsm_beh(n, go, over, res);
	input [15:0] n;
	input go;
	output over;
	output res;
	
	wire reset, go, r1, r2, r3, b0, ldN, tN, ldFac, tFac, ldSum, tSum, ldRem, tRem;
	wire [2:0] fnSel;
	
	control CTRL (reset, go, r1, r2, r3, b0,
		ldN, tN, ldFac, tFac, ldSum, tSum, 
		ldRem, tRem, fnsel, over);
		
	datapath DP (n, res, over, ldN, tN, ldFac,
		tFac, ldSum, tSum, ldRem, tRem, fnSel,
		b0, r1, r2, r3);
	
endmodule

module control (reset, go, r1, r2, r3, b0, ldN, tN, ldFac, tFac, ldSum, tSum, ldRem, tRem, fnSel, over);
	
	input go, r1, r2, r3, b0, reset;
	output ldN, tN, ldFac, tFac, ldSum, tSum, ldRem, tRem, over;
	output [2:0] fnSel;
	
	reg [2:0] q;
	
	assign ldN = ~(q[0] | q[1] | q[2]);
	assign tN  = ~(q[0] | q[1] | q[2]);
	assign ldFac = (~q[2]) & (~q[1]) & q[0];
	assign ldSum = (~q[2]) & (~q[1]) & q[0];
	assign ldRem = (~q[2]) & q[1] & (~q[0]);
	assign tRem = (~q[2]) & q[1] & q[0];
	assign tSum = q[2] & (~q[1]) & (~q[0]);
	assign tFac = q[2] & (~q[1]) & q[0];
	
	always @ (q or posedge reset) begin
		if (reset) begin
			// Initialize the state register
			q <= 3'b000;
		end
		if (~(q[0] | q[1] | q[2])) begin
			assign fnSel = 3'b000;
		end
		if ((~q[2]) & (~q[1]) & q[0]) begin
			assign fnSel = 3'b000;
		end
		if ((~q[2]) & q[1] & (~q[0])) begin
			assign fnSel = 3'b000;
		end
		if ((~q[2]) & q[1] & q[0]) begin
			assign fnSel = 3'b010;
		end
		if (q[2] & (~q[1]) & (~q[0])) begin
			assign fnSel = 3'b001;
		end
		if (q[2] & (~q[1]) & q[0]) begin
			assign fnSel = 3'b101;
		end
	end
	
	always @ (go or r1 or r2 or r3 or b0 or reset ) begin
		case (q)
			3'b000 : begin
				assign q = (go) ? 3'b001 : 3'b000;
			end
			
			3'b001 : begin
				assign q = (r1) ? 3'b110 : 3'b010;
			end
			
			3'b010 : begin
				if (b0 == 1 && r3 == 1) begin
					assign q = 3'b100;
				end else if (b0 == 1 && r3 == 0) begin
					assign q = 3'b101;
				end else begin
					assign q = 3'b011;
				end
			end
			
			3'b011 : begin
				if (b0 == 1 && r3 == 1) begin
					assign q = 3'b100;
				end else if (b0 == 1 && r3 == 0) begin
					assign q = 3'b101;
				end else begin
					assign q = 3'b011;
				end
			end
			
			3'b100 : begin
				assign q = 3'b101;
			end
			
			3'b101 : begin
				assign q = (r1) ? 3'b110 : 3'b010;
			end
		endcase
	end
	
endmodule

module alu (x, y, z, b0, r1, r2, r3, fnSel);
	input [15:0] x;
	input [15:0] y;
	output [15:0] z;
	output b0, r1, r2, r3;
	input [2:0] fnSel;
	
	reg b0, r1, r2, r3;
	reg [15:0] z;
	reg overflow;
	
	always @ (fnSel) begin
		case (fnSel)
			3'b000: begin
				assign z = x;
			end
			3'b001: begin
				assign {overflow, z} = x + y;
			end
			3'b010: begin
				assign {overflow, z} = x - y;
				assign b0 = z[15];
				assign r1 = (z == 0);
				assign r2 = (z == 0);
				assign r3 = (z == 0);
			end
			3'b011: begin
				assign z = x + 1;
			end
			3'b100: begin
				assign z = (x == y);
			end
		endcase
	end
endmodule

module datapath (n, res, over, ldN, tN, ldFac, tFac, ldSum, tSum, ldRem, tRem, fnSel, b0, r1, r2, r3);
	
	input ldN, tN, ldFac, tFac, ldSum, tSum, ldRem, tRem;
	input [2:0] fnSel;
	input [15:0] n;
	output res, b0, r1, r2, r3;
	
	reg [15:0] fac;
	reg [15:0] ram;
	reg [15:0] sum;
	wire [15:0] outwire;
	reg [15:0] X, Y;
	
	alu ALU (
		.x (X),
		.y (Y),
		.z (outwire),
		.b0 (b0),
		.r1 (r1),
		.r2 (r2),
		.r3 (r3),
		.fnSel (fnSel)
	);
	
	always @ (ldFac) begin
		if (ldFac) begin
			fac <= outwire;
		end
	end
	
	always @ (ldSum) begin
		if (ldSum) begin
			sum <= outwire;
		end
	end
	
	always @ (ldRem) begin
		if (ldRem) begin
			rem <= outwire;
		end
	end
	
	always @ (tN or tFac or tSum or tRem) begin
		if (tN) begin
			assign X = n;
		end
		if (tFac) begin
			assign X = fac;
		end
		if (tSum) begin
			assign Y = sum;
		end
		if (tRem) begin
			assign Y = rem;
		end
	end
	
endmodule
















