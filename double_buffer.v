`timescale 1ns / 1ps
module double_buffer(
input clock,
input io_in_control_propagate,//CTL_PROP
input [15:0]io_in_d,//D
input [15:0]io_in_c,//C
output [15:0] c_fb, //C_FB
output [15:0] c_out//C_OUT
    );
reg [15:0] c1_s; 
reg [15:0] _RAND_00;
reg [15:0] c2_s;
reg [15:0] _RAND_10;

//Initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_00 = {1{`RANDOM}};
  c1_s = _RAND_00[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_01 = {1{`RANDOM}};
   c2_s = _RAND_01[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end


always @(posedge clock) 
begin
 if (io_in_control_propagate)
	  begin
        c1_s <= io_in_d;
      end 
 else 
      begin
        c1_s <= io_in_c;
      end
if (!io_in_control_propagate) 
	  begin
        c2_s <= io_in_d;
      end 
 else 
	  begin
        c2_s <= io_in_c;
	  end
end

assign c_fb =io_in_control_propagate?c2_s:c1_s;
assign c_out=!io_in_control_propagate?c2_s:c1_s;
endmodule