`timescale 1ns / 1ps
module top_tb;

  wire test;
  reg clk;

  // simulation init
  initial begin
    clk = 0;
    forever clk = #(1) ~clk;
  end

  top top_instan (
      .CLK100MHZ(clk),
      .test(test)
  );

endmodule  //top_tb
