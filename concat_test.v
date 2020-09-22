`timescale 1ns / 1ps

module concat_test;

	// Inputs
	reg [27:0] ins_28b;
	reg [3:0] pc_plus4;

	// Outputs
	wire [31:0] jump_address;

	// Instantiate the Unit Under Test (UUT)
	jump_concat uut (
		.ins_28b(ins_28b), 
		.pc_plus4(pc_plus4), 
		.jump_address(jump_address)
	);

	initial begin
		// Initialize Inputs
		ins_28b = 0;
		pc_plus4 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		ins_28b = 28'b00111000;
		pc_plus4 = 4'b0011;
		#50;
		
		ins_28b = 28'b0011100011;
		pc_plus4 = 4'b0111;
		#50;
		
		ins_28b = 28'b0011111;
		pc_plus4 = 4'b1111;
		#50;
		
		
	end
      
endmodule

