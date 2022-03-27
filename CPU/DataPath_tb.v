`timescale 1ns / 1ns


module DataPath_tb;

parameter WIDTH = 32;

	reg [WIDTH-1:0] dataInput;
	reg [WIDTH-1:0] irInput;
	reg registerFileSelect;
	reg clk;
	
	
 DataPath data1(irInput, dataInput, clk, registerFileSelect);



initial
    begin
        clk = 0;
        forever #5 clk = !clk;
    end
	
	
initial
	begin
	
	//WRITE DATA IN
	#10 registerFileSelect = 1'b1;
	dataInput = 32'h0000001;

	//Write 1 to R0
	#40 irInput[25:21] = 'b00000;


	//Write 1 to R1
	#40 irInput[25:21] = 'b00001;

	

	//READ DATA TO ALU
	#10 registerFileSelect = 'b0;

	//Set operation to add
	irInput[31:26] = 'b000000;

	//Select R0 for A and R1 for B to Send to MUX
	#40 irInput[20:16] = 'b00000; 
	#40 irInput[15:11] = 'b00001;

    #40 $stop;
  end
 
 initial
   begin
    $display("      time clk dataInput irInput registerFileSelect");
    $monitor($stime,, clk,,, dataInput,,, irInput,,, registerFileSelect);
   end

endmodule  