`timescale 1ns / 1ps

module ALUControlTest;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] Function;

	// Outputs
	wire [2:0] ALU_Control;
	reg [7:0] test;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.ALU_Control(ALU_Control), 
		.ALUOp(ALUOp), 
		.Function(Function)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		Function = 0;

		// Wait 100 ns for global reset to finish
		// Add stimulus here
		assign test = {ALUOp, Function};
	end
	
	initial begin
		//#50
		//ALUOp = 10;
		//Function = 100101;
		#100;
		
		#50
		ALUOp = 2'b10;
		Function = 6'b100100;
		
		#50
		ALUOp = 2'b10;
		Function = 6'b101010;
		
		#50
		ALUOp = 2'b00;
		Function = 6'b011111;
		
		//#50
		//ALUOp = 01;
		//Function = 101010;
	
	end
      
endmodule

