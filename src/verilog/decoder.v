/* Examples for representation of multiple bits */
/* Cited from http://research.kek.jp/people/uchida/educations/verilogHDL/index.html*/

module DECODER(
  ADDRESS , // in  : Input  , Address[7:0]
  CE        // out : Output , Chip enable[1:0]
);


  input   [7:0]  ADDRESS ;
  output  [1:0]  CE      ;
  

  wire    [1:0]  CE      ;
  
  assign  CE[0] = (ADDRESS[7:0]==8'h0);
  assign  CE[1] = (ADDRESS[7:0]==8'h1);

endmodule
  