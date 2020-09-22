`timescale 1ns / 1ps

module testing_DM;

	// Inputs
	reg [31:0] address;

	// Outputs
	wire [31:0] data;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.address(address), 
		.data(data)
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
		end
      
endmodule

