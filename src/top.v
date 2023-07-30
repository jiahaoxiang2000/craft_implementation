`timescale 1ns / 1ps

module top (
    input wire CLK100MHZ,
    input wire CPU_RESETN,
    output CA,
    output CB,
    output CC,
    output CD,
    output CE,
    output CF,
    output CG,
    output DP,
    output [7:0] AN
);
  parameter CLK_FREQUENCY = 100_000_000;

  // display 
  //   wire [31:0] data = 32'hffffffff;
  //   wire        en;
  //   assign en = 1'b1;

  //   display #(
  //       .CLK_FREQUENCY(CLK_FREQUENCY)
  //   ) display_inst (
  //       .en  (en),
  //       .clk (CLK100MHZ),
  //       .rstn(CPU_RESETN),
  //       .data(data),
  //       .CA  (CA),
  //       .CB  (CB),
  //       .CC  (CC),
  //       .CD  (CD),
  //       .CE  (CE),
  //       .CF  (CF),
  //       .CG  (CG),
  //       .DP  (DP),
  //       .AN  (AN)
  //   );

  reg  [  8-1:0] round = 8'h00;
  reg  [128-1:0] key;
  reg  [ 64-1:0] tweak;
  wire [ 64-1:0] TK;

  craft_key_schedule key_schedule (
      .key(key),
      .tweak(tweak),
      .r(round),
      .TK(TK)
  );



endmodule
