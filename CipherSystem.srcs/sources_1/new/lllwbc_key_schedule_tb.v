`timescale 1ns / 1ps

module lllwbc_key_schedule_tb;
  reg clk;

  // simulation init
  initial begin
    clk = 0;
    forever clk = #(1) ~clk;
  end

  reg  [0:127] key = 128'h80000000000000031111111111111111;
  wire [0:127] kws;
  wire [0:671] krs;

  lllwbc_key_schedule lllwbc_key_schedule_inst (
      .clk(clk),
      .key(key),
      .kws(kws),
      .krs(krs)
  );


endmodule  // lllwbc_key_schedule
