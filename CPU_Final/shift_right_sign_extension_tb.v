// -----------------------------------------------------------
//	Module:		32-Bit Arithemtic Right Shift Testbench
//	Author:		Jude Gabriel
//	Contact:	gabriel23@up.edu
//	Date:		March 14, 2022
// ----------------------------------------------------------


`timescale 1ns/1ns

module shift_right_sign_extension_tb;

reg  [31:0] a;
reg  [31:0] b;
wire [31:0] z;

shift_right_sign_extension srse1(z, a, b);

initial 
  begin
	//Randomized testing
	#10 a = 32'hFFFFFFFF; b = 32'h00000000;
	#10 a = 32'h00000000; b = 32'hFFFFFFFF;
	#10 a = 32'h000000F0; b = 32'hFFFFFFFF;
	#10 a = 32'h00FFF000; b = 32'hFFFFFFFF;
	#10 a = 32'h000FF000; b = 32'h0000001;
	#10 a = 32'h000000F0; b = 32'h0000002;
	#10 a = 32'h00FFF000; b = 32'h0000003;

	//Test each bit
	#10 a = 32'hF0000000; b = 32'h00000000;
	#10 a = 32'hF0000000; b = 32'h00000001;
	#10 a = 32'hF0000000; b = 32'h00000002;
	#10 a = 32'hF0000000; b = 32'h00000003;
	#10 a = 32'hF0000000; b = 32'h00000004;	
	#10 a = 32'hF0000000; b = 32'h00000005;
	#10 a = 32'hF0000000; b = 32'h00000006;
	#10 a = 32'hF0000000; b = 32'h00000007;
	#10 a = 32'hF0000000; b = 32'h00000008;
	#10 a = 32'hF0000000; b = 32'h00000009;
	#10 a = 32'hF0000000; b = 32'h0000000A;
	#10 a = 32'hF0000000; b = 32'h0000000B;
	#10 a = 32'hF0000000; b = 32'h0000000C;
	#10 a = 32'hF0000000; b = 32'h0000000D;
	#10 a = 32'hF0000000; b = 32'h0000000E;
	#10 a = 32'hF0000000; b = 32'h0000000F;
	#10 a = 32'hF0000000; b = 32'h00000010;
	#10 a = 32'hF0000000; b = 32'h00000011;
	#10 a = 32'hF0000000; b = 32'h00000012;
	#10 a = 32'hF0000000; b = 32'h00000013;
	#10 a = 32'hF0000000; b = 32'h00000014;	
	#10 a = 32'hF0000000; b = 32'h00000015;
	#10 a = 32'hF0000000; b = 32'h00000016;
	#10 a = 32'hF0000000; b = 32'h00000017;
	#10 a = 32'hF0000000; b = 32'h00000018;
	#10 a = 32'hF0000000; b = 32'h00000019;
	#10 a = 32'hF0000000; b = 32'h0000001A;
	#10 a = 32'hF0000000; b = 32'h0000001B;
	#10 a = 32'hF0000000; b = 32'h0000001C;
	#10 a = 32'hF0000000; b = 32'h0000001D;
	#10 a = 32'hF0000000; b = 32'h0000001E;
	#10 a = 32'hF0000000; b = 32'h0000001F;

	
	
	#10 $stop;
  end

initial 
  begin 
	$display("    time  a   b	z");
	$monitor($time,, a,, b,,,,,, z);
  end

endmodule
