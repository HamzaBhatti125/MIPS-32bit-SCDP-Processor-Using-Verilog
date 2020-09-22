`timescale 1ns / 1ps

module main_MIPS_32b_Test;

	// Outputs
	wire [31:0] insss;

	// Instantiate the Unit Under Test (UUT)
	main_MIPS_32b uut (
		.insss(insss)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		 #50;
		 
		 #50;
		 
		 #50;
		 
		 #50;
		 
		// Add stimulus here

	end
      
endmodule

