`timescale 1ns / 1ps

module top (
    input wire CLK100MHZ,
    input wire CPU_RESETN,
    output LED
);
  parameter CLK_FREQUENCY = 100_000_000;

  wire [8-1:0] round = 8'h00;
  wire [128-1:0] key;
  wire [64-1:0] tweak;
  wire [64-1:0] TK;
  reg flag;

  reg CE = 1'b1;
  wire [7:0] rc;

  assign key   = 128'h27a6_781a_43f3_64bc_9167_08d5_fbb5_aefe;
  assign tweak = 64'h54cd_94ff_d067_0a58;

  assign LED   = flag;


  always @(posedge CLK100MHZ) begin
    if (TK == 64'h736BECE593946EE4) begin
      flag <= 1;
    end else begin
      flag <= 0;
    end
  end

  (* dont_touch = "yes" *) craft_key_schedule key_schedule (
      .key(key),
      .tweak(tweak),
      .r(round),
      .TK(TK)
  );

  (* dont_touch = "yes" *) craft_round_constants craft_round_constants_isnt (
      .clk(CLK100MHZ),
      .rst(CPU_RESETN),
      .ce (CE),
      .rc (rc)
  );



endmodule
