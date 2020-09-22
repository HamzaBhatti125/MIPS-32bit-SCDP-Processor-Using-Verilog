`timescale 1ns / 1ps


module shiftby2_32b_test;

	// Inputs
	reg [31:0] data_in;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	shiftby2_32b uut (
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data_in = 32'b100;
		#50;
		
		data_in = 32'b100010;
		#50;
		
		data_in = 32'b1001100;
		#50;
	end
      
endmodule

