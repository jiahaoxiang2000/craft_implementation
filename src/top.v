`timescale 1ns / 1ps
`include "craft_encrypt.v"


module top (
    input wire CLK100MHZ,
    input wire CPU_RESETN,
    output LED
);
  parameter CLK_FREQUENCY = 100_000_000;

  wire [8-1:0] round = 8'h00;

  wire [64-1:0] TK;
  reg flag;
  wire [7:0] rc;
  assign LED = flag;

  always @(posedge CLK100MHZ) begin
    if (TK == 64'h736BECE593946EE4) begin
      flag <= 1;
    end else begin
      flag <= 0;
    end
  end

  reg [63:0] plaintext = 64'h5734F006D8D88A3E;
  reg [63:0] tweak = 64'h54CD94FFD0670A58;
  reg [127:0] key = 128'h27a6_781a_43f3_64bc_9167_08d5_fbb5_aefe;
  wire done;
  wire [63:0] ciphertext;

  (* dont_touch = "yes" *) craft_encrypt craft_encrypt_inst (
      .clk(CLK100MHZ),
      .rst_n(CPU_RESETN),
      .plaintext(plaintext),
      .tweak(tweak),
      .key(key),
      .done(done),
      .ciphertext(ciphertext)
  );


  

endmodule
