`include "craft_round_constants.v"
`include "craft_key_schedule.v"
`include "craft_round.v"

module craft_encrypt (
    input wire clk,
    input wire rst_n,
    input wire [63:0] plaintext,
    input wire [63:0] tweak,
    input wire [127:0] key,
    output reg done,
    output wire [63:0] ciphertext
);

  reg [7:0] r0 = 8'h00;
  reg [7:0] r1 = 8'h01;

  always @(posedge clk) begin
    if (!rst_n) begin
      r0 <= 8'h00;
      r1 <= 8'h01;
    end else if (!done) begin
      r0 <= r0 + 8'h02;
      r1 <= r1 + 8'h02;
    end else begin
      r1 <= r1;
      r0 <= r0;
    end
  end

  always @(posedge clk) begin
    if (r1 >= 8'd31) begin
      done <= 1'b1;
    end else done <= 1'b0;
  end

  wire [7:0] rc;
  wire [7:0] rc_next;

  // this only assignment one time when r0 = 32 and done's up edge 
  assign ciphertext = done ? ciphertext : add_key;

   (* dont_touch = "yes" *) craft_round_constants craft_round_constants_inst_0 (
      .clk(clk),
      .rst(!rst_n),
      .rc(rc),
      .rc_next(rc_next)
  );

  wire [63:0] tk0;
  wire [63:0] tk1;

   (* dont_touch = "yes" *) craft_key_schedule craft_key_schedule_inst_0 (
      .r(r0),
      .key(key),
      .tweak(tweak),
      .TK(tk0)
  );

   (* dont_touch = "yes" *) craft_key_schedule craft_key_schedule_inst_1 (
      .r(r1),
      .key(key),
      .tweak(tweak),
      .TK(tk1)
  );

  reg  [63:0] state;
  wire [63:0] state_next_in;
  wire [63:0] state_next;

  wire [63:0] add_key;

  always @(posedge clk) begin
    if (!rst_n) begin
      state <= plaintext;
    end else if (!done) begin
      state <= state_next;
    end else begin
      state <= state;
    end

  end

   (* dont_touch = "yes" *) craft_round craft_round_inst_0 (
      .din (state),
      .tk  (tk0),
      .rc  (rc),
      .dout(state_next_in)
  );

   (* dont_touch = "yes" *) craft_round craft_round_inst_1 (
      .din(state_next_in),
      .tk(tk1),
      .rc(rc_next),
      .add_key(add_key),
      .dout(state_next)
  );



endmodule  //craft_encrypt
