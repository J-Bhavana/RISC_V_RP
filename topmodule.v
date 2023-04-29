`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 02:47:57 PM
// Design Name: 
// Module Name: topmodule
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module topmodule(
input clk,
input reset,
input start,
input [31:0] initialize);

wire [3:0] alu_action;
wire PCsel1,PCsel0,enPC,done;
wire [4:0] opr;
wire [2:0] immsrc;
wire ALUsrc,memtoreg1,memtoreg0,read_mem,write_mem,enW;
wire [6:0] opcode;
wire [2:0] lorbtype;
wire zero;

datapath DP (opcode,lorbtype,alu_action,zero,initialize,clk,reset,PCsel1,PCsel0,enPC,ALUsrc,immsrc,memtoreg1,memtoreg0,read_mem,write_mem,enW,opr);
controller INC (PCsel1,PCsel0,ALUsrc,enPC,done,opr,immsrc,memtoreg1,memtoreg0,read_mem,write_mem,enW,lorbtype,alu_action,opcode,start,clk,zero);

endmodule
