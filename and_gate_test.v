`timescale 1ns / 1ps



module and_gate_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	and_gate uut (
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
		a = 0;
		b = 1;
		#50;
		
		a = 1;
		b = 0;
		#50;
		
		a = 1;
		b = 1;
		#50;
		
		
	end
      
endmodule

