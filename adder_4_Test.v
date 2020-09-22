`timescale 1ns / 1ps

module adder_4_Test;

	// Inputs
	reg [31:0] inst_address;

	// Outputs
	wire [31:0] inst_address_plus4;

	// Instantiate the Unit Under Test (UUT)
	adder_4 uut (
		.inst_address(inst_address), 
		.inst_address_plus4(inst_address_plus4)
	);

	initial begin
		// Initialize Inputs
		inst_address = 0;

		// Wait 100 ns for global reset to finish
		#50;
      inst_address = 5;

		#50;
      inst_address = 9;
		
		#50;
      inst_address = 4;
		
		#50;
      inst_address = 10;
		// Add stimulus here

	end
      
endmodule

