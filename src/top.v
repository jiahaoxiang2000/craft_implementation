`timescale 1ns / 1ps

module top (
    input wire CLK100MHZ,
    input wire CPU_RESETN
);
  parameter CLK_FREQUENCY = 100_000_000;

  wire [  8-1:0] round = 8'h00;
  wire [128-1:0] key;
  wire [ 64-1:0] tweak;
  wire [ 64-1:0] TK = 32'hffffffff;

  assign key   = 128'h27a6_781a_43f3_64bc_9167_08d5_fbb5_aefe;
  assign tweak = 64'h54cd_94ff_d067_0a58;

   (* dont_touch = "yes" *) craft_key_schedule key_schedule (
      .key(key),
      .tweak(tweak),
      .r(round),
      .TK(TK)
  );



endmodule
