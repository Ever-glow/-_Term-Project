`timescale 1ns / 1ps
module row_reg(
    input clock,
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,

    output [7:0] out0,
    output [7:0] out1,
    output [7:0] out2,
    output [7:0] out3
);
    reg [7:0] o0, o1, o2, o3;
    
    assign out0 = o0;
    assign out1 = o1;
    assign out2 = o2;
    assign out3 = o3;
    
    always @(posedge clock) begin
        o0 <= in0;
        o1 <= in1;
        o2 <= in2;
        o3 <= in3;
          
             
    end
    
endmodule