`timescale 1ns / 1ps

module Mesh(
    input clock,

    input [7:0] io_in_a_0_0, //input A
    input [7:0] io_in_a_1_0,
    input [7:0] io_in_a_2_0,
    input [7:0] io_in_a_3_0,
    
    input [7:0] io_in_b_0_0, //input B
    input [7:0] io_in_b_1_0,
    input [7:0] io_in_b_2_0,
    input [7:0] io_in_b_3_0,
    
    input [15:0] io_in_d_0_0, //flush D
    input [15:0] io_in_d_1_0,
    input [15:0] io_in_d_2_0,
    input [15:0] io_in_d_3_0,
    
    input io_in_control_0_0_propagate, //CTL_PROP
    input io_in_control_1_0_propagate,
    input io_in_control_2_0_propagate,
    input io_in_control_3_0_propagate,
    
    output [15:0] io_out_c_0_0, //C_OUT
    output [15:0] io_out_c_1_0,
    output [15:0] io_out_c_2_0,
    output [15:0] io_out_c_3_0
);
    
    wire [7:0] out_b_0_0, out_b_1_0, out_b_2_0, out_b_3_0;
    wire [7:0] in_b_1_0, in_b_2_0, in_b_3_0, in_b_4_0;
//row_reg_0
    wire [7:0] out_b_0_1, out_b_1_1, out_b_2_1, out_b_3_1;
    wire [7:0] in_b_1_1, in_b_2_1, in_b_3_1, in_b_4_1;
//row_reg_1
    wire [7:0] out_b_0_2, out_b_1_2, out_b_2_2, out_b_3_2;
    wire [7:0] in_b_1_2, in_b_2_2, in_b_3_2, in_b_4_2;
//row_reg_2
    wire [7:0] out_b_0_3, out_b_1_3, out_b_2_3, out_b_3_3;
    wire [7:0] in_b_1_3, in_b_2_3, in_b_3_3, in_b_4_3;
//row_reg_3
   
row_reg row_reg_0(.clock(clock), .in0(io_in_b_0_0), .in1(in_b_1_0), .in2(in_b_2_0), .in3(in_b_3_0),
 .out0(out_b_0_0), .out1(out_b_1_0), .out2(out_b_2_0), .out3(out_b_3_0));
  //1st row reg
row_reg row_reg_1(.clock(clock), .in0(io_in_b_1_0), .in1(in_b_1_1), .in2(in_b_2_1), .in3(in_b_3_1),
 .out0(out_b_0_1), .out1(out_b_1_1), .out2(out_b_2_1), .out3(out_b_3_1));
  //2nd row reg
row_reg row_reg_2(.clock(clock), .in0(io_in_b_2_0), .in1(in_b_1_2), .in2(in_b_2_2), .in3(in_b_3_2),
 .out0(out_b_0_2), .out1(out_b_1_2), .out2(out_b_2_2), .out3(out_b_3_2));
  //3rd row reg
row_reg row_reg_3(.clock(clock), .in0(io_in_b_3_0), .in1(in_b_1_3), .in2(in_b_2_3), .in3(in_b_3_3),
 .out0(out_b_0_3), .out1(out_b_1_3), .out2(out_b_2_3), .out3(out_b_3_3));
  //4th row reg

    wire [7:0] out_a_0_0, out_a_1_0, out_a_2_0, out_a_3_0, out_a_4_0;
    wire [7:0] in_a_1_0, in_a_2_0, in_a_3_0, in_a_4_0;
    wire [15:0] out_d_0_0, out_d_1_0, out_d_2_0, out_d_3_0, out_d_4_0;
    wire [15:0] in_d_1_0, in_d_2_0, in_d_3_0, in_d_4_0;
    wire out_prop_0_0, out_prop_1_0, out_prop_2_0, out_prop_3_0, out_prop_4_0;
    wire in_prop_1_0, in_prop_2_0, in_prop_3_0, in_prop_4_0;
//column_reg_0
    wire [7:0] out_a_0_1, out_a_1_1, out_a_2_1, out_a_3_1, out_a_4_1;
    wire [7:0] in_a_1_1, in_a_2_1, in_a_3_1, in_a_4_1;
    wire [15:0] out_d_0_1, out_d_1_1, out_d_2_1, out_d_3_1, out_d_4_1;
    wire [15:0] in_d_1_1, in_d_2_1, in_d_3_1, in_d_4_1;
    wire out_prop_0_1, out_prop_1_1, out_prop_2_1, out_prop_3_1, out_prop_4_1;
    wire in_prop_1_1, in_prop_2_1, in_prop_3_1, in_prop_4_1;
//column_reg_1
    wire [7:0] out_a_0_2, out_a_1_2, out_a_2_2, out_a_3_2, out_a_4_2;
    wire [7:0] in_a_1_2, in_a_2_2, in_a_3_2, in_a_4_2;
    wire [15:0] out_d_0_2, out_d_1_2, out_d_2_2, out_d_3_2, out_d_4_2;
    wire [15:0] in_d_1_2, in_d_2_2, in_d_3_2, in_d_4_2;
    wire out_prop_0_2, out_prop_1_2, out_prop_2_2, out_prop_3_2, out_prop_4_2;
    wire in_prop_1_2, in_prop_2_2, in_prop_3_2, in_prop_4_2;
//column_reg_2
    wire [7:0] out_a_0_3, out_a_1_3, out_a_2_3, out_a_3_3, out_a_4_3;
    wire [7:0] in_a_1_3, in_a_2_3, in_a_3_3, in_a_4_3;
    wire [15:0] out_d_0_3, out_d_1_3, out_d_2_3, out_d_3_3, out_d_4_3;
    wire [15:0] in_d_1_3, in_d_2_3, in_d_3_3, in_d_4_3;
    wire out_prop_0_3, out_prop_1_3, out_prop_2_3, out_prop_3_3, out_prop_4_3;
    wire in_prop_1_3, in_prop_2_3, in_prop_3_3, in_prop_4_3;
//column_reg_3  
 
column_reg column_reg_0(.clock(clock), 
.in0({io_in_a_0_0, io_in_d_0_0, io_in_control_0_0_propagate}), .in1({in_a_1_0, in_d_1_0, in_prop_1_0}), 
.in2({in_a_2_0, in_d_2_0, in_prop_2_0}), .in3({in_a_3_0, in_d_3_0, in_prop_3_0}), 
.in4({in_a_4_0, in_d_4_0, in_prop_4_0}), 
.out0({out_a_0_0, out_d_0_0, out_prop_0_0}), .out1({out_a_1_0, out_d_1_0, out_prop_1_0}), 
.out2({out_a_2_0, out_d_2_0, out_prop_2_0}), .out3({out_a_3_0, out_d_3_0, out_prop_3_0}), 
.out4({out_a_4_0, out_d_4_0, out_prop_4_0})); 
 //1st column reg -> A, D, CTL_PROP
column_reg column_reg_1(.clock(clock), 
.in0({io_in_a_1_0, io_in_d_1_0, io_in_control_1_0_propagate}), .in1({in_a_1_1, in_d_1_1, in_prop_1_1}), 
.in2({in_a_2_1, in_d_2_1, in_prop_2_1}), .in3({in_a_3_1, in_d_3_1, in_prop_3_1}), 
.in4({in_a_4_1, in_d_4_1, in_prop_4_1}), 
.out0({out_a_0_1, out_d_0_1, out_prop_0_1}), .out1({out_a_1_1, out_d_1_1, out_prop_1_1}), 
.out2({out_a_2_1, out_d_2_1, out_prop_2_1}), .out3({out_a_3_1, out_d_3_1, out_prop_3_1}), 
.out4({out_a_4_1, out_d_4_1, out_prop_4_1})); 
//2nd column reg
column_reg column_reg_2(.clock(clock), 
.in0({io_in_a_2_0, io_in_d_2_0, io_in_control_2_0_propagate}), .in1({in_a_1_2, in_d_1_2, in_prop_1_2}), 
.in2({in_a_2_2, in_d_2_2, in_prop_2_2}), .in3({in_a_3_2, in_d_3_2, in_prop_3_2}), 
.in4({in_a_4_2, in_d_4_2, in_prop_4_2}), 
.out0({out_a_0_2, out_d_0_2, out_prop_0_2}), .out1({out_a_1_2, out_d_1_2, out_prop_1_2}), 
.out2({out_a_2_2, out_d_2_2, out_prop_2_2}), .out3({out_a_3_2, out_d_3_2, out_prop_3_2}), 
.out4({out_a_4_2, out_d_4_2, out_prop_4_2})); 
//3rd column reg
column_reg column_reg_3(.clock(clock), 
.in0({io_in_a_3_0, io_in_d_3_0, io_in_control_3_0_propagate}), .in1({in_a_1_3, in_d_1_3, in_prop_1_3}), 
.in2({in_a_2_3, in_d_2_3, in_prop_2_3}), .in3({in_a_3_3, in_d_3_3, in_prop_3_3}), 
.in4({in_a_4_3, in_d_4_3, in_prop_4_3}), 
.out0({out_a_0_3, out_d_0_3, out_prop_0_3}), .out1({out_a_1_3, out_d_1_3, out_prop_1_3}), 
.out2({out_a_2_3, out_d_2_3, out_prop_2_3}), .out3({out_a_3_3, out_d_3_3, out_prop_3_3}), 
.out4({out_a_4_3, out_d_4_3, out_prop_4_3})); 
//4th column reg
 
     
     
Tile tile_0_0(.clock(clock), .io_in_a_0(out_a_0_0), .io_in_b_0(out_b_0_0), .io_in_d_0(out_d_0_0), 
    .io_in_control_0_propagate(out_prop_0_0), .io_out_a_0(in_a_1_0),
    .io_out_c_0(in_d_1_0), .io_out_b_0(in_b_1_0), .io_out_control_0_propagate(in_prop_1_0));
Tile tile_1_0(.clock(clock), .io_in_a_0(out_a_0_1), .io_in_b_0(out_b_1_0), .io_in_d_0(out_d_0_1), 
    .io_in_control_0_propagate(out_prop_0_1), .io_out_a_0(in_a_1_1),
    .io_out_c_0(in_d_1_1), .io_out_b_0(in_b_2_0), .io_out_control_0_propagate(in_prop_1_1));
Tile tile_2_0(.clock(clock), .io_in_a_0(out_a_0_2), .io_in_b_0(out_b_2_0), .io_in_d_0(out_d_0_2), 
    .io_in_control_0_propagate(out_prop_0_2), .io_out_a_0(in_a_1_2),
    .io_out_c_0(in_d_1_2), .io_out_b_0(in_b_3_0), .io_out_control_0_propagate(in_prop_1_2));
Tile tile_3_0(.clock(clock), .io_in_a_0(out_a_0_3), .io_in_b_0(out_b_3_0), .io_in_d_0(out_d_0_3), 
    .io_in_control_0_propagate(out_prop_0_3), .io_out_a_0(in_a_1_3),
    .io_out_c_0(in_d_1_3), .io_out_b_0(in_b_4_0), .io_out_control_0_propagate(in_prop_1_3));
//1st row tile
    
Tile tile_0_1(.clock(clock), .io_in_a_0(out_a_1_0), .io_in_b_0(out_b_0_1), .io_in_d_0(out_d_1_0), 
    .io_in_control_0_propagate(out_prop_1_0), .io_out_a_0(in_a_2_0),
    .io_out_c_0(in_d_2_0), .io_out_b_0(in_b_1_1), .io_out_control_0_propagate(in_prop_2_0));
Tile tile_1_1(.clock(clock), .io_in_a_0(out_a_1_1), .io_in_b_0(out_b_1_1), .io_in_d_0(out_d_1_1), 
    .io_in_control_0_propagate(out_prop_1_1), .io_out_a_0(in_a_2_1),
    .io_out_c_0(in_d_2_1), .io_out_b_0(in_b_2_1), .io_out_control_0_propagate(in_prop_2_1));
Tile tile_2_1(.clock(clock), .io_in_a_0(out_a_1_2), .io_in_b_0(out_b_2_1), .io_in_d_0(out_d_1_2), 
    .io_in_control_0_propagate(out_prop_1_2), .io_out_a_0(in_a_2_2),
    .io_out_c_0(in_d_2_2), .io_out_b_0(in_b_3_1), .io_out_control_0_propagate(in_prop_2_2));
Tile tile_3_1(.clock(clock), .io_in_a_0(out_a_1_3), .io_in_b_0(out_b_3_1), .io_in_d_0(out_d_1_3), 
    .io_in_control_0_propagate(out_prop_1_3), .io_out_a_0(in_a_2_3),
    .io_out_c_0(in_d_2_3), .io_out_b_0(in_b_4_1), .io_out_control_0_propagate(in_prop_2_3));
//2nd row tile

Tile tile_0_2(.clock(clock), .io_in_a_0(out_a_2_0), .io_in_b_0(out_b_0_2), .io_in_d_0(out_d_2_0), 
    .io_in_control_0_propagate(out_prop_2_0), .io_out_a_0(in_a_3_0),
    .io_out_c_0(in_d_3_0), .io_out_b_0(in_b_1_2), .io_out_control_0_propagate(in_prop_3_0));
Tile tile_1_2(.clock(clock), .io_in_a_0(out_a_2_1), .io_in_b_0(out_b_1_2), .io_in_d_0(out_d_2_1), 
    .io_in_control_0_propagate(out_prop_2_1), .io_out_a_0(in_a_3_1),
    .io_out_c_0(in_d_3_1), .io_out_b_0(in_b_2_2), .io_out_control_0_propagate(in_prop_3_1));
Tile tile_2_2(.clock(clock), .io_in_a_0(out_a_2_2), .io_in_b_0(out_b_2_2), .io_in_d_0(out_d_2_2), 
    .io_in_control_0_propagate(out_prop_2_2), .io_out_a_0(in_a_3_2),
    .io_out_c_0(in_d_3_2), .io_out_b_0(in_b_3_2), .io_out_control_0_propagate(in_prop_3_2));
Tile tile_3_2(.clock(clock), .io_in_a_0(out_a_2_3), .io_in_b_0(out_b_3_2), .io_in_d_0(out_d_2_3), 
    .io_in_control_0_propagate(out_prop_2_3), .io_out_a_0(in_a_3_3),
    .io_out_c_0(in_d_3_3), .io_out_b_0(in_b_4_2), .io_out_control_0_propagate(in_prop_3_3));
//3rd row tile

Tile tile_0_3(.clock(clock), .io_in_a_0(out_a_3_0), .io_in_b_0(out_b_0_3), .io_in_d_0(out_d_3_0), 
    .io_in_control_0_propagate(out_prop_3_0), .io_out_a_0(in_a_4_0),
    .io_out_c_0(in_d_4_0), .io_out_b_0(in_b_1_3), .io_out_control_0_propagate(in_prop_4_0));
Tile tile_1_3(.clock(clock), .io_in_a_0(out_a_3_1), .io_in_b_0(out_b_1_3), .io_in_d_0(out_d_3_1), 
    .io_in_control_0_propagate(out_prop_3_1), .io_out_a_0(in_a_4_1),
    .io_out_c_0(in_d_4_1), .io_out_b_0(in_b_2_3), .io_out_control_0_propagate(in_prop_4_1));
Tile tile_2_3(.clock(clock), .io_in_a_0(out_a_3_2), .io_in_b_0(out_b_2_3), .io_in_d_0(out_d_3_2), 
    .io_in_control_0_propagate(out_prop_3_2), .io_out_a_0(in_a_4_2),
    .io_out_c_0(in_d_4_2), .io_out_b_0(in_b_3_3), .io_out_control_0_propagate(in_prop_4_2));
Tile tile_3_3(.clock(clock), .io_in_a_0(out_a_3_3), .io_in_b_0(out_b_3_3), .io_in_d_0(out_d_3_3), 
    .io_in_control_0_propagate(out_prop_3_3), .io_out_a_0(in_a_4_3),
    .io_out_c_0(in_d_4_3), .io_out_b_0(in_b_4_3), .io_out_control_0_propagate(in_prop_4_3));
//4th row tile

assign io_out_c_0_0 = out_d_4_0;
assign io_out_c_1_0 = out_d_4_1;
assign io_out_c_2_0 = out_d_4_2;
assign io_out_c_3_0 = out_d_4_3;


endmodule