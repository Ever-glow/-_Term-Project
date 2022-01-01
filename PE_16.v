`timescale 1ns / 1ps

module PE_16 (clock, io_in_a, io_in_b, io_in_d, io_out_a, io_out_b, io_out_c, io_in_control_propagate, 
io_out_control_propagate);
input [7:0] io_in_a, io_in_b;
input [15:0] io_in_d;
input clock, io_in_control_propagate, io_out_control_propagate;
output [7:0] io_out_a, io_out_b;
output [15:0] io_out_c;
    
wire [15:0] mul, add, c_fb, c_out;
wire io_out_control_propagate;
   
double_buffer d_b0(.clock(clock), .io_in_control_propagate(io_in_control_propagate), .io_in_d(io_in_d),
 .io_in_c(add), .c_fb(c_fb), .c_out(c_out));

assign io_out_control_propagate = io_in_control_propagate;
 
assign mul = io_in_a * io_in_b;
assign add = c_fb + mul;
             
assign io_out_a = io_in_a;
assign io_out_b = io_in_b;  
assign io_out_c = c_out;      

endmodule