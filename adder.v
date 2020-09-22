`timescale 1ns / 1ps

module adder(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] y
    );

always @(*)
begin

assign y = a+b;

end
endmodule
