`timescale 1ns/1ps

module Decoder_struct_tb;
  reg [1:0] A2;
  reg [2:0] A3;
  wire [3:0] Y2;
  wire [7:0] Y3;

  // Instantiate modules
  decoder2to4_struct d2(Y2, A2);
  decoder3to8_struct d3(Y3, A3);

  initial begin
    $display("---- 2:4 Decoder Test ----");
    for (integer i = 0; i < 4; i = i + 1) begin
      A2 = i;
      #10;
      $display("A = %b | Y = %b", A2, Y2);
    end

    $display("\n---- 3:8 Decoder Test ----");
    for (integer j = 0; j < 8; j = j + 1) begin
      A3 = j;
      #10;
      $display("A = %b | Y = %b", A3, Y3);
    end

    $finish;
  end
endmodule
