`timescale 1ns / 1ps

module shiftby2_26b_test;

	// Inputs
	reg [25:0] data_in;

	// Outputs
	wire [27:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	shiftby2_26b uut (
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data_in = 26'b00100;
		#50;
		
		data_in = 26'b0010010;
		#50;
		
		data_in = 26'b0010011;
		#50;
	end
      
endmodule

