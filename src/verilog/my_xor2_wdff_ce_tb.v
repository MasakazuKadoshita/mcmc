`timescale 1ps/1ps

module MY_XOR2_WDFF_TB();

  reg CLOCK;
  reg RESET;
  reg CLOCK_ENABLE;
  
  reg IN_A;
  reg IN_B;
  wire O;
  
  MY_XOR2_WDFF XOR2 (
  .CLK (CLOCK),
  .RESET (RESET),
  .CE (CLOCK_ENABLE),
  .IN_A (IN_A),
  .IN_B (IN_B),
  .O (O)
  );

  initial begin
    CLOCK = 0;
  end
  always #1000
      CLOCK <= ~CLOCK;

  initial begin
            RESET = 1;
       #100 RESET = 0;
//    #100000 RESET = 1;
//       #100 RESET = 0;
  end
  
  initial begin
            CLOCK_ENABLE = 1;
  end
  always #70000
      CLOCK_ENABLE <= ~CLOCK_ENABLE;

  initial begin
    IN_A = 0;
  end
  always #10000
    IN_A <= ~IN_A;
  
  initial begin
    IN_B = 0;
  end
  always #20000
    IN_B <= ~IN_B;
    
endmodule
