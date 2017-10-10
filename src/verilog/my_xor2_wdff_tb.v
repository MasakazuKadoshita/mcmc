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
  always #5000
      CLOCK <= ~clock;
  end

  initial begin
            RESET = 0;
       #100 RESET = 1;
    #300000 RESET = 0;
       #100 RESET = 1;
  end
  
  initial begin
    CLOCK_ENABLE = 0;
  end
  always #40000
      CLOCK_ENABLE <= ~clock;
  end

  initial begin
    IN_A = 0;
    #10000 IN_A = 1;
    #20000 IN_A = 0;
    #30000 IN_A = 1;
  end
  
  initial begin
    IN_A = 0;
    #20000 IN_A = 1;
  end
