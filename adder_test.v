`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:39:10 09/12/2020
// Design Name:   adder
// Module Name:   C:/Users/ninja/Desktop/MIPS32bit_Project/adder_test.v
// Project Name:  MIPS32bit_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] y;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 10;
		b = 0;
		#100;
		
		a = 10;
		b = 20;
		#100;
		
		a = 10;
		b = 50;
		#100;
		
		a = 40;
		b = 45;
		#100;
	end
      
endmodule

