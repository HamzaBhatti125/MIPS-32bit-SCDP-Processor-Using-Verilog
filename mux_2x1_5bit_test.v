`timescale 1ns / 1ps

module Mux2x1_test;

	// Inputs
	reg [4:0] I0;
	reg [4:0] I1;
	reg sel;

	// Outputs
	wire [4:0] out;

	// Instantiate the Unit Under Test (UUT)
	Mux2x1 uut (
		.I0(I0), 
		.I1(I1), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		I0 = 0;
		I1 = 0;
		sel = 0;
        
		// Add stimulus here
		#50
		I0 = 5'b01010;
		I1 = 5'b00110;
		sel = 0;

		#50
		I0 = 5'b01010;
		I1 = 5'b00110;
		sel = 1;

		#50
		I0 = 5'b01010;
		I1 = 5'b00110;
		sel = 0;
		
		#50
		I0 = 5'b01010;
		I1 = 5'b00110;
		sel = 1;
		
			#50
		I0 = 5'b01010;
		I1 = 5'b00110;
		sel = 0;
		
		
		
	end
      
endmodule

