`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:34 08/28/2010 
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
module top(
	 input clk,
    input up,
    input down,
    output reg [3:0] count
    );


reg lastup = 1'b0;
reg lastdown = 1'b0;

always @(posedge clk)
begin
	lastup <= up;
	lastdown <= down;
   if (up && (up ^ lastup))
	  count <= count + 1;
	if (down && (down ^ lastdown))
	  count <= count - 1;
end

endmodule
