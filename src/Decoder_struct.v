// 2:4 Decoder Structural
module decoder2to4_struct(output [3:0] Y, input [1:0] A);
  wire A0_bar, A1_bar;

  not (A0_bar, A[0]);
  not (A1_bar, A[1]);

  and (Y[0], A1_bar, A0_bar);  // 00
  and (Y[1], A1_bar, A[0]);    // 01
  and (Y[2], A[1], A0_bar);    // 10
  and (Y[3], A[1], A[0]);      // 11
endmodule

// 3:8 Decoder Structural
module decoder3to8_struct(output [7:0] Y, input [2:0] A);
  wire A0_bar, A1_bar, A2_bar;

  not (A0_bar, A[0]);
  not (A1_bar, A[1]);
  not (A2_bar, A[2]);

  and (Y[0], A2_bar, A1_bar, A0_bar);  // 000
  and (Y[1], A2_bar, A1_bar, A[0]);    // 001
  and (Y[2], A2_bar, A[1], A0_bar);    // 010
  and (Y[3], A2_bar, A[1], A[0]);      // 011
  and (Y[4], A[2], A1_bar, A0_bar);    // 100
  and (Y[5], A[2], A1_bar, A[0]);      // 101
  and (Y[6], A[2], A[1], A0_bar);      // 110
  and (Y[7], A[2], A[1], A[0]);        // 111
endmodule
