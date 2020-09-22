`timescale 1ns / 1ps


module se_test;

	// Inputs
	reg [15:0] in;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	signExtension uut (
		.out(out), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4;
		
		#100;
		in = 7;
		
		// Add stimulus here

	end
      
endmodule

