`timescale 1ns / 1ps
module top_tb;
  parameter Tt = 20;  // clock timout
  reg clk;
  wire test;

  // simulation init
  initial begin
    clk = 0;
    forever clk = #(Tt / 2) ~clk;
  end

  top top_instan (
      .CLK100MHZ(clk),
      .test(test)
  );

endmodule  //top_tb
