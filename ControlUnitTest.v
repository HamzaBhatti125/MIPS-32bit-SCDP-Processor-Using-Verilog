`timescale 1ns / 1ps


module ControlUnit_test;

	// Inputs
	reg [5:0] opcode;

	// Outputs
	wire RegDst;
	wire Jump;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire [1:0] ALUop;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.opcode(opcode), 
		.RegDst(RegDst), 
		.Jump(Jump), 
		.Branch(Branch), 
		.MemRead(MemRead), 
		.MemtoReg(MemtoReg), 
		.ALUop(ALUop), 
		.MemWrite(MemWrite), 
		.ALUSrc(ALUSrc), 
		.RegWrite(RegWrite)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50;
		opcode = 6'b000000;
		
		#50;
		opcode = 6'b100011;
		
		#50;
		opcode = 6'b101011;
		
		
		#50;
		opcode = 6'b000100;
		
	end
      
endmodule

