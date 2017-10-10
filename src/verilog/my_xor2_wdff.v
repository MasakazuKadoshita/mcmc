/* XOR with D-type Flip Flop */
/* Cited from http://research.kek.jp/people/uchida/educations/verilogHDL/index.html*/

module MY_XOR2_WDFF(
  input  CLK    ,  //  in   :  Imput, System clock
  input  RESET  ,  //  in   :  Input, System reset
  input  CE     ,  //  in   :  Input, Clock enable
  input  IN_A   ,  //  in   :  Input
  input  IN_B   ,  //  in   :  Input
  output O         //  out  :  Output
);

  reg Q;

  always @(posedge CLK)begin
    if(RESET) begin
      Q <= 1'b0;
    end else begin
      if(CE)begin
        Q <= ((IN_A & ~IN_B) | (~IN_A & IN_B));
      end
    end
  end
  
  assign O = Q;
  
endmodule
