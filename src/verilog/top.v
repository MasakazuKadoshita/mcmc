/* Cited from http://research.kek.jp/people/uchida/educations/verilogHDL/index.html*/

module TOP(
  input IN_A, // in  : Input A
  input IN_B, // in  : Input B
  input IN_C, // in  : Input C
  output O,   // out : Output
);

  wire Z;
  
  MY_XOR2 U1(
    .IN_A (IN_A),
    .IN_B (IN_B),
    .O    (Z)
  );
  
  MY_XOR2 U2(
    .IN_A (IN_C),
    .IN_B (Z),
    .O    (O)
  );

endmodule
