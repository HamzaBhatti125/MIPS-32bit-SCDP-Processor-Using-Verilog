`timescale 1ns / 1ps


module adder_32b_test;

	// Inputs
	reg [31:0] op1;
	reg [31:0] op2;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	adder_32b uut (
		.op1(op1), 
		.op2(op2), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		op1 = 0;
		op2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		op1 = 5;
		op2 = 4;
		#50;
		
		op1 = 11;
		op2 = 8;
		#50;
		
		op1 = 65;
		op2 = 100;
		#50;
		
	end
      
endmodule

