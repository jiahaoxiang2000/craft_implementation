`include "craft_round_constants.v"
`include "craft_key_schedule.v"
`include "craft_round.v"
`include "craft_sbox.v"

module craft_encrypt (
    input wire clk,
    input wire rst_n,
    input wire [63:0] plaintext,
    input wire [63:0] tweak,
    input wire [127:0] key,
    output reg done,
    output reg [63:0] ciphertext
);

  reg  [ 7:0] r;
  reg  [63:0] state;
  wire [63:0] state_next;
  wire [63:0] add_key;

  always @(posedge clk) begin
    if (!rst_n) begin
      r <= 8'h00;
    end else if (!done) begin
      r <= r + 8'h01;
    end else r <= r;
  end

  always @(posedge clk) begin
    if (r >= 8'd31) begin
      done <= 1'b1;
      // this only assignment one time when r = 32 and done's up edge 
      if (!done) begin
        ciphertext <= add_key;
      end
    end else done <= 1'b0;
  end

  wire [7:0] rc;

  craft_round_constants craft_round_constants_inst_0 (
      .clk(clk),
      .rst(!rst_n),
      .rc (rc)
  );

  wire [63:0] tk;

  craft_key_schedule craft_key_schedule_inst_0 (
      .r(r),
      .key(key),
      .tweak(tweak),
      .TK(tk)
  );



  always @(posedge clk) begin
    if (!rst_n) begin
      state <= plaintext;
    end else if (!done) begin
      state <= state_next;
    end else begin
      state <= state;
    end
  end

  craft_round craft_round_inst_0 (
      .din(state),
      .tk(tk),
      .rc(rc),
      .add_key(add_key),
      .dout(state_next)
  );



endmodule  //craft_encrypt
