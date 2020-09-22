`timescale 1ns / 1ps

module testing;

	// Inputs
	reg [31:0] address;

	// Outputs
	wire [31:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	instMemory uut (
		.address(address), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		address = 0;

		// Wait 100 ns for global reset to finish
		#20;
		address = 4;

		// Wait 100 ns for global reset to finish
		#20;
		address = 8;

		// Wait 100 ns for global reset to finish
		#20;
		address = 12;

		// Wait 100 ns for global reset to finish
		#20;
		address = 16;

		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here
		$stop;
	end
      
endmodule

