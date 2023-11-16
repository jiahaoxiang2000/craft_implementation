`include "craft_mix_columns.v"
module craft_mix_columns_tb ();

  parameter PERIOD = 2;
  reg CLK;
  reg [3:0] din;
  reg CM0;
  reg CM1;
  wire [3:0] dout;

  initial begin
    CLK = 1'b0;
    CM0 = 1'b1;
    CM1 = 1'b1;
    #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end

  craft_mix_columns craft_mix_columns_tb (
      .clk(CLK),
      .in (din),
      .CM0(CM0),
      .CM1(CM1),
      .out(dout)
  );

  initial begin
    #(PERIOD);
    din = 4'b0001;
    #(PERIOD);
    din = 4'b0010;
    #(PERIOD);
    din = 4'b0100;
    #(PERIOD);
    din = 4'b1000;
    #(PERIOD);
    CM0 = 1'b0;
    #(PERIOD);
    CM0 = 1'b1;
    if (dout != 4'b1101) begin
      $display("ERROR: Expected 0b1101");
      $finish;
    end
    #(PERIOD);
    if (dout != 4'b1010) begin
      $display("ERROR: Expected 0b1101");
      $finish;
    end
    #(PERIOD);
    if (dout != 4'b0100) begin
      $display("ERROR: Expected 0b0100");
      $finish;
    end
    #(PERIOD);
    if (dout != 4'b1000) begin
      $display("ERROR: Expected 0b1000");
      $finish;
    end

    $finish;
  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, craft_mix_columns_tb); 
  end


endmodule
