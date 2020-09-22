`timescale 1ns / 1ps

module RF_test;

	// Inputs
	reg [4:0] ReadReg1;
	reg [4:0] ReadReg2;
	reg [4:0] WriteReg;
	reg [31:0] WriteData;
	reg RegWrite;

	// Outputs
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.ReadReg1(ReadReg1), 
		.ReadReg2(ReadReg2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2)
	);

	initial begin
		// Initialize Inputs
		ReadReg1 = 0;
		ReadReg2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      initial begin
		// 1
		#150
		ReadReg1 = 0;
		ReadReg2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		
		//2
		#100
		ReadReg1 = 0;
		ReadReg2 = 1;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		
		//3
		#100
		ReadReg1 = 2;
		ReadReg2 = 3;
		WriteReg = 0;
		WriteData = 10;
		RegWrite = 1;
		
		//4
		#100
		ReadReg1 = 0;
		ReadReg2 = 3;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		
		//5
		#100
		ReadReg1 = 0;
		ReadReg2 = 1;
		WriteReg = 1;
		WriteData = 11;
		RegWrite = 1;
		
		//6
		#100
		ReadReg1 = 1;
		ReadReg2 = 1;
		WriteReg = 1;
		WriteData =0;
		RegWrite = 1;
		
		
	end
endmodule

