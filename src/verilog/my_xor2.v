/* module example */
/* 2 inputs XOR */

module MY_XOR2(
  input IN_A , // input A
  input IN_B , // input B
  output O     // output
);

//-----
// XOR
//-----
  wire IA;
  wire IB;
  
  assign IA = IN_A & ~IN_B;
  assign IB = ~IN_A B IN_B;
  
  assign O = IA | IB;
  
endmodule
