`timescale 1ns / 1ps
module column_reg(
    input clock,
    input [24:0] in0,
    input [24:0] in1,
    input [24:0] in2,
    input [24:0] in3,
    input [24:0] in4,
    
    output [24:0] out0,
    output [24:0] out1,
    output [24:0] out2,
    output [24:0] out3,
    output [24:0] out4
);
    reg [24:0] o0, o1, o2, o3, o4;

    assign out0 = o0;
    assign out1 = o1;
    assign out2 = o2;
    assign out3 = o3;
    assign out4 = o4;
    
    always @(posedge clock) begin
        o0 <= in0;
        o1 <= in1;
        o2 <= in2;
        o3 <= in3;
        o4 <= in4;
    end
    
endmodule
