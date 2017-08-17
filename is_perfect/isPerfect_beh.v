`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:22 08/17/2017 
// Design Name: 
// Module Name:    isPerfect_beh 
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
module isPerfect(sw,clk,rst,go,ans,over);
	input clk,rst,go;
	input [15:0]sw;
	output ans,over;
	//output [3:0]state;
	wire ans,over;
	// assign ans = 1;
	//wire [3:0]state;
	reg tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn,ldsw;
	//wire [3:0] nextState;
	wire[15:0] x,y,z;
	wire [2:0] sel;
	//assign state = 1;
	reg b0,r0,r1,s0;
	funcUnit FU(x,y,z,sel);
	/*swReg SW(sw,x,clk,rst,tsw);
	register N(z,y,clk,rst,tn,ldn);
	register rem(z,x,clk,rst,trem,ldrem);
	register sum(z,x,clk,rst,tsum,ldsum);
	register k(z,y,clk,rst,tk,ldk);*/
	registerCom SW(sw,x,clk,tsw,ldsw);
	registerCom N(z,y,clk,tn,ldn);
	registerCom rem(z,x,clk,trem,ldrem);
	registerCom sum(z,x,clk,tsum,ldsum);
	registerCom k(z,y,clk,tk,ldk);
	sd1 S1(y,x,b0);
	sd1 S2(16'b0,x,r0);
	sd2 S3(x,1'bz,r1);
	sd0 S4(x,y,s0);
	/*status_detector S1(y,x,b0,3'b001,clk);
	status_detector S2(0,x,r0,3'b001,clk);
	status_detector S3(x,1'bz,r1,3'b010,clk);
	status_detector S4(x,y,s0,3'b000,clk);*/
	stateTransition ST(clk,rst,go,x,y,tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn,sel,over,b0,r0,r1,s0,ans);
	//stateFunctions SF(state,clk,rst,tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn,sel,over);
	//delayElem DELAY(state,nextState,clk,rst);
endmodule

module delayElem(currState,nextState,clk,rst);
	input [3:0] nextState;
	input clk,rst;
	output [3:0] currState;
	reg [3:0] currState;
	always@(nextState)
	begin
	$display("Delay nextState %d",nextState);
		if(rst==1)
		begin
			currState=4'b0001;
		end
		else
		begin
			currState = nextState;
		end
	end

endmodule

module stateTransition(clk,rst,go,x,y,tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn,sel,over,b0,r0,r1,s0,ans);
	/*input [15:0] rem;
	input [15:0] sum;
	input [15:0] n;
	input [15:0] k;*/
	output ans;
	reg ans;
	input[15:0] x,y;
	reg [3:0] state;
	input clk,rst,go;
	input b0,s0,r0,r1;

	output tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn;
	output [2:0] sel;
	output over;
	reg over;
	reg tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn;
	reg [2:0] sel;


	always@(posedge clk or posedge rst)
	begin
		if (rst)
		begin
			state<=4'b0001;
		end
		else
		begin
		// ans=1;
		$display("Current State %d b0 %d",state,b0);
		case(state)
		4'b0001: begin
				if(go)
				begin state<=4'b0010; end
				else
				begin state<=4'b0001; end
			
				tsw = 1;
				ldn = 1;
				sel = 2;
			
				tn = 0;
				trem = 0;
				tsum = 0;
				tk = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		4'b0010: begin
			$display("At state 2");
			state<=4'b0011;
		
			ldsum = 1;
				tsum = 1;
				sel = 0;
			
				tsw = 0;
				tn = 0;
				trem = 0;
				tk = 0;
				ldn = 0;
				ldrem = 0;
				ldk = 0;
			end
		
		4'b0011: begin
		state<=4'b0100;
	
		ldk = 1;
				tk = 1;
				sel = 1;
			
				tsw = 0;
				tn = 0;
				trem = 0;
				tsum = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
		end
		4'b0100: begin
				if(b0)
				begin	state<=4'b0101; end
				else
				begin	state<=4'b1001; end
			
				tk = 1;
				tn = 1;
			
				tsw = 0;
				trem = 0;
				tsum = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		4'b0101: begin
				state<=4'b1101;
			
				ldrem = 1;
				tsw = 1;
				sel = 2;
			
				tn = 0;
				trem = 0;
				tsum = 0;
				tk = 0;
				ldn = 0;
				ldsum = 0;
				ldk = 0;
				end
		4'b0110: begin
				state<=4'b1101;
			
				ldrem = 1;
				trem = 1;
				tk = 1;
				sel = 4;	//subtract
			
				tsw = 0;
				tn = 0;
				tsum = 0;
				ldn = 0;
				ldsum = 0;
				ldk = 0;
				end
		4'b0111: begin
				state<=4'b1000;
			
				tsum = 1;
				ldsum = 1;
				tk = 1;
				sel = 3; //add
			
				tsw = 0;
				tn = 0;
				trem = 0;
				ldn = 0;
				ldrem = 0;
				ldk = 0;
				end
		4'b1000: begin 
				state<=4'b0100;
			
				ldk = 1;
				tk = 1;
				sel = 5;
			
				tsw = 0;
				tn = 0;
				trem = 0;
				tsum = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				end
		4'b1001: begin
				if(s0)
				begin	state<=4'b1010; end
				else
				begin	state<=4'b1011; end
			
				tsum = 1;
				tn = 1;
			
				tk =0;
				tsw = 0;
				trem = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		4'b1010:begin
			state<=4'b1100;
	
			trem = 0;
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			
				ans =1;
				$display("Is a Perfect Number");
			end
		4'b1011: begin
				state<=4'b1100;
			
				trem = 0;
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			
				ans=0;
				$display("Not a perfect Number");
				end
		4'b1100:begin
				if(go)
				begin	state<=4'b1100; end
				else
				begin	state<=4'b0001; end
			
				trem = 0;
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		4'b1101:begin
				if(r0)
				begin	state<=4'b0110; end
				else
				begin	state<=4'b1110; end
			
				trem = 1;
			
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		4'b1110:begin
				if(r1)
				begin	state<=4'b0111; end
				else
				begin	state<=4'b1000; end
			
				trem = 1;
			
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			
				over = 1;
			end
		default: begin
			$display("Invalid State %d",state);
			state<=4'b0001;
			end
		endcase
		end
	end
endmodule

module funcUnit(x,y,z,sel);
	input [15:0]x;
	input [15:0]y;
	input [2:0]sel;
	output reg [15:0]z;

	always@*
	begin
		case (sel)
			0: z = 0;
			1: z = 1;
			2: z = x;
			3: z = x+y;
			4: z = x-y;
			5: z = y+1;
			default: $display("wrong select input");
		endcase
	end
endmodule



module swReg(ip,op,clk,rst,tsw);
	input [15:0]ip;
	input clk,rst,tsw;
	output [15:0]op;
	reg [15:0]op;
	always@(posedge clk or posedge rst)
	begin 
		if (~tsw)
		begin
			op <= 16'bzzzzzzzzzzzzzzzz;
		end
		else if (rst == 1)
		begin
			op <= 0;
		end
		else
		begin
			op <= ip;
		end
	end
endmodule


module register(ip,op,clk,rst,tsw,ld);
	input [15:0]ip;
	input clk,rst,ld,tsw;
	output [15:0]op;
	reg [15:0]op;
	reg [15:0] store;
	always@(posedge clk or posedge rst)
	begin
		 if(~tsw)
			op <= 16'bzzzzzzzzzzzzzzzz;
	
		 if(rst)
		 begin
		 store <= 16'b0000000000000000; 
		 if(tsw)
		 op <= 16'b0000000000000000;
		 end
		 else
		 begin
			 if(ld)
			 begin
			 if(tsw)
			 begin
				op <= store;
			end
			 store <= ip;
			 end
			 
			 if(tsw)
				op<=store;
			end
	
	end
endmodule

module registerCom(in, out, clk, Tx, ldx);
	input in, ldx, Tx, clk;
	wire[15:0] in;
	output out;
	reg[15:0] out;
	reg[15:0] data = 16'b0;

	always @(posedge clk)	
		begin
		if(ldx == 1)
			data <= in;
		else
			data <= data;
		end
	
	always @*
		begin 
		if(Tx == 0)
			out <= 16'bz;
		else 
			out <= data;
		end
endmodule

module sd0(a,b,op);
	input [15:0] a;
	input [15:0] b;
	output op;
	wire [15:0] z;
	assign z = a-b;
	nand NA1(op,z[0],z[1],z[2],z[3],z[4],z[5],z[6],z[7],z[8],z[9],z[10],z[11],z[12],z[13],z[14],z[15]);
endmodule

module sd1(a,b,op);
	input [15:0] a;
	input [15:0] b;
	output op;
	wire [15:0] z;
	wire Bo;
	assign {Bo,z} = a-b;
	assign op =  Bo;
endmodule

module sd2(a,b,op);
	input [15:0] a;
	input [15:0] b;
	output op;
	wire [15:0] z;
	assign z = a;
	nand NA2(op,z[0],z[1],z[2],z[3],z[4],z[5],z[6],z[7],z[8],z[9],z[10],z[11],z[12],z[13],z[14],z[15]);
endmodule

module status_detector(a,b,op,sel,clk);
	input [15:0]a;
	input [15:0]b;
	input clk;
	input [1:0]sel;
	output op;
	wire op;
	reg [15:0]z;
	reg op1;
	reg Bo;
	nand NA1(op,z[0],z[1],z[2],z[3],z[4],z[5],z[6],z[7],z[8],z[9],z[10],z[11],z[12],z[13],z[14],z[15]);
	buf B1(op,op1);
	always@(posedge clk)
	begin
	$display("a %d b%d",a,b);
		case (sel)
			0: begin 
					z = a-b;
				end
			1:begin
					{Bo,z} = a-b;
					op1 =  Bo;
				end
			2:begin
					z = a;
					//nand NA2(op,z[0],z[1],z[2],z[3],z[4],z[5],z[6],z[7],z[8],z[9],z[10],z[11],z[12],z[13],z[14],z[15]);
				end
		endcase	
	end
endmodule

module stateFunctions(currState,clk,rst,tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn,sel,over);
input [3:0] currState;
input clk,rst;
output tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn;
output [2:0] sel;
output over;
reg over;
reg tsw,trem,tsum,tk,tn,ldrem,ldsum,ldk,ldn;
reg [2:0] sel;
always@(posedge clk or posedge rst)
begin
	if(~rst)
	begin
	case(currState)
	1: begin
			tsw = 1;
			ldn = 1;
			sel = 2;
			
			tn = 0;
			trem = 0;
			tsum = 0;
			tk = 0;
			ldrem = 0;
			ldsum = 0;
			ldk = 0;
		end
	2: begin
			ldsum = 1;
			tsum = 1;
			sel = 0;
			
			tsw = 0;
			tn = 0;
			trem = 0;
			tk = 0;
			ldn = 0;
			ldrem = 0;
			ldk = 0;
		end
	3: begin
			ldk = 1;
			tk = 1;
			sel = 1;
			
			tsw = 0;
			tn = 0;
			trem = 0;
			tsum = 0;
			ldn = 0;
			ldrem = 0;
			ldsum = 0;
		end
		4:	begin
				tk = 1;
				tn = 1;
			
				tsw = 0;
				trem = 0;
				tsum = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			
			end
		5: begin
				ldrem = 1;
				tsw = 1;
				sel = 2;
			
				tn = 0;
				trem = 0;
				tsum = 0;
				tk = 0;
				ldn = 0;
				ldsum = 0;
				ldk = 0;
			end
		6: begin
				ldrem = 1;
				trem = 1;
				tk = 1;
				sel = 4;	//subtract
			
				tsw = 0;
				tn = 0;
				tsum = 0;
				ldn = 0;
				ldsum = 0;
				ldk = 0;
			end
		7: begin
				tsum = 1;
				ldsum = 1;
				tk = 1;
				sel = 3; //add
			
				tsw = 0;
				tn = 0;
				trem = 0;
				ldn = 0;
				ldrem = 0;
				ldk = 0;
			end
		8: begin
				ldk = 1;
				tk = 1;
				sel = 5;
			
				tsw = 0;
				tn = 0;
				trem = 0;
				tsum = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
			end
		9:begin
				tsum = 1;
				tn = 1;
			
				tk =0;
				tsw = 0;
				trem = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		10: begin
				trem = 0;
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		11:begin
				trem = 0;
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		12:begin 
				trem = 0;
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		13:begin
				trem = 1;
			
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			end
		14: begin
				trem = 1;
			
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			
				over = 1;
			end
	
		endcase
		end
		else
		begin
			trem = 0;
				tsum =0;
				tn = 0;
				tk =0;
				tsw = 0;
				ldn = 0;
				ldrem = 0;
				ldsum = 0;
				ldk = 0;
			
				over = 0;
		end
	end
endmodule

