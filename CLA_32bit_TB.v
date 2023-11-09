`timescale 10ns/1ps

module CLA_32bit_TB;

  // Parameters
  parameter DATA_WIDTH    =    32;
  parameter ADD_WIDTH     =    1;

  // Inputs
  reg [DATA_WIDTH-1:0] A;
  reg [DATA_WIDTH-1:0] B;

  // Outputs
  wire [DATA_WIDTH-1:0] Sum;
  wire Cout;
  reg clk;
  reg reset, CS, WR, RD;
  reg Address;
  reg [DATA_WIDTH - 1 : 0]  Data;
  wire [DATA_WIDTH - 1 : 0]  o_result;

  initial begin
		clk = 1;
		forever #5 clk = ~clk;
  end
  // Instantiate the DUT
  carry_lookahead_adder dut (
        .clock(clk),
        .reset(reset),
        .CS(CS),
        .WR(WR),
        .RD(RD),
        .Address(Address),
        .Data(Data),
        .o_result(o_result)
  );

  // Clock generation

  // Test inputs
  initial begin
    Address = 0;
    Data = 32'd10;  // 10
    reset = 1;
    CS = 0;
    WR = 0;
    RD = 1;
    $display("%b", o_result);
    #10;
    Address = 1;
    Data = 32'd255;  // 255
    reset = 1;
    CS = 0;
    WR = 0;
    RD = 1;
    $display("%b", o_result);
    #10;
    Address = 1;
    Data = 32'b00000000000000000000000011111111;  // 255
    reset = 1;
    CS = 0;
    WR = 1;
    RD = 0;
    $display("%b", o_result);
    #10;
    Address = 0;
    Data = 32'b00000000000000000000000000101011;  // 11
    reset = 1;
    CS = 0;
    WR = 0;
    RD = 1;
    $display("%b", o_result);
    #10;
    Address = 1;
    Data = 32'b00000000000000000000000011111110;  // 255
    reset = 1;
    CS = 0;
    WR = 0;
    RD = 1;
    $display("%b", o_result);
    #10;
    Address = 1;
    Data = 32'b00000000000000000000000011111111;  // 255
    reset = 1;
    CS = 0;
    WR = 1;
    RD = 0;
    $display("%b", o_result);
    #10
    $finish;
  end

  // Clock driver
  //always #5 clk = ~clk;

  // Apply inputs and display outputs
  always @(posedge clk) begin
    #1;  // Wait for combinational logic to settle
    $display("A = %b, B = %b, Sum = %b, Cout = %b", A, B, Sum, Cout);
  end

endmodule