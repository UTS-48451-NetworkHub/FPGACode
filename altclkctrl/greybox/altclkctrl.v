// Copyright (C) 2025  Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Altera and sold by Altera or its authorized distributors.  Please
// refer to the Altera Software License Subscription Agreements 
// on the Quartus Prime software download page.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

// DATE "09/07/2025 22:08:11"

// 
// Device: Altera EP4CE6E22C8 Package TQFP144
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module altclkctrl (
	inclk,
	outclk)/* synthesis synthesis_greybox=0 */;
input 	inclk;
output 	outclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk ;
wire \inclk~input_o ;


altclkctrl_altclkctrl_altclkctrl_0 altclkctrl_0(
	.outclk(\altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk ),
	.inclk(\inclk~input_o ));

assign \inclk~input_o  = inclk;

assign outclk = \altclkctrl_0|altclkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk ;

endmodule

module altclkctrl_altclkctrl_altclkctrl_0 (
	outclk,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	outclk;
input 	inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



altclkctrl_altclkctrl_altclkctrl_0_sub altclkctrl_altclkctrl_0_sub_component(
	.outclk(outclk),
	.inclk({gnd,gnd,gnd,inclk}));

endmodule

module altclkctrl_altclkctrl_altclkctrl_0_sub (
	outclk,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	outclk;
input 	[3:0] inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cycloneive_clkctrl clkctrl1(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,inclk[0]}),
	.clkselect({gnd,gnd}),
	.outclk(outclk));
defparam clkctrl1.clock_type = "global clock";
defparam clkctrl1.ena_register_mode = "falling edge";

endmodule
