// Savestates are not used on the Tang: the save registers reduce to their reset value and the save engine is idle.
module eReg_SavestateV #(parameter [9:0] Adr = 0, parameter [63:0] def = 64'd0) (
	input clk, input [63:0] BUS_Din, input [9:0] BUS_Adr, input BUS_wren, input BUS_rst,
	output [63:0] BUS_Dout, input [63:0] Din, output [63:0] Dout);
	assign BUS_Dout = 64'd0;
	assign Dout = def;
endmodule
module savestates (
	input clk, reset_in, output reset_ss, output reset_delay, output load_done,
	input increaseSSHeaderCount, input save, input load, input [31:0] savestate_address, output savestate_busy,
	input paused,
	output [63:0] BUS_Din, output [9:0] BUS_Adr, output BUS_wren, output BUS_rst, input [63:0] BUS_Dout,
	output loading_savestate, output saving_savestate, output sleep_savestate,
	output [24:0] Save_RAMAddr, output Save_RAMRdEn, output Save_RAMWrEn, output [7:0] Save_RAMWriteData, input [7:0] Save_RAMReadData,
	output [2:0] Save_RAMType,
	output [63:0] bus_out_Din, input [63:0] bus_out_Dout, output [25:0] bus_out_Adr, output bus_out_rnw, output bus_out_ena, output [7:0] bus_out_be,
	input bus_out_done);
	assign reset_ss = 1'b0; assign reset_delay = 1'b0; assign load_done = 1'b0; assign savestate_busy = 1'b0;
	assign BUS_Din = 64'd0; assign BUS_Adr = 10'd0; assign BUS_wren = 1'b0; assign BUS_rst = 1'b0;
	assign loading_savestate = 1'b0; assign saving_savestate = 1'b0; assign sleep_savestate = 1'b0;
	assign Save_RAMAddr = 25'd0; assign Save_RAMRdEn = 1'b0; assign Save_RAMWrEn = 1'b0; assign Save_RAMWriteData = 8'd0; assign Save_RAMType = 3'd0;
	assign bus_out_Din = 64'd0; assign bus_out_Adr = 26'd0; assign bus_out_rnw = 1'b1; assign bus_out_ena = 1'b0; assign bus_out_be = 8'd0;
endmodule
module statemanager #(parameter A = 0, parameter B = 0) (
	input clk, reset, rewind_on, rewind_active, input [1:0] savestate_number, input save, load,
	output sleep_rewind, input vsync, output request_savestate, output request_loadstate, output [31:0] request_address, input request_busy);
	assign sleep_rewind = 1'b0; assign request_savestate = 1'b0; assign request_loadstate = 1'b0; assign request_address = 32'd0;
endmodule
