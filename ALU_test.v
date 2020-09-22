`timescale 1ns / 1ps


module ALUTest;

	// Inputs
	reg [31:0] regA;
	reg [31:0] regB;
	reg [2:0] alu_control;
	//reg clock;

	// Outputs
	wire [31:0] result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.regA(regA), 
		.regB(regB), 
		.alu_control(alu_control), 
		.result(result), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		regA = 0;
		regB = 0;
		alu_control = 0;

		// Wait 100 ns for global reset to finish
		#100;
      //forever #50 clock=~clock;	
		// Add stimulus here
	end
	
	initial begin
		#150
		regA = 7;
		regB = 8;
		alu_control = 001;
		
		#100
		regA = 3;
		regB = 4;
		alu_control = 010;
		
		#100
		regA = 4;
		regB = 3;
		alu_control = 110;
		
		#100
		regA = 4;
		regB = 4;
		alu_control = 110;
		
	
	end
	
      
endmodule

