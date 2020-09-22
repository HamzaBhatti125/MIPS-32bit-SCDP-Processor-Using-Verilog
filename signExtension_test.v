`timescale 1ns / 1ps


module sing_ext_testing;

	// Inputs
	reg [15:0] in;
	reg ExtendSign;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	signExtension uut (
		.out(out), 
		.in(in), 
		.ExtendSign(ExtendSign)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		ExtendSign = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here

	end
	
	initial begin
		#20;
		
		in = -27;
		ExtendSign = 0;
		
		#20;
		
		in = +999;
		ExtendSign = 0;
		
		#20;
		
		in = -786;
		ExtendSign = 1;
		
		#20;
		
		in = +44;
		ExtendSign = 1;
		
		#20;
		$stop;
	end
      
endmodule

