module craft_round_constants (
    input clk,
    input rst,
    output [7:0] rc,
    output [7:0] rc_next
);

  reg [3:0] a = 4'h1;
  reg [2:0] b = 3'h1;
  reg [3:0] a_next = 4'h8;
  reg [2:0] b_next = 3'h4;

  always @(posedge clk)
    if (rst) begin
      a <= 4'h1;
      a_next <= 4'h8;
    end else begin
      a[1:0] <= a[3:2];
      a[2] <= a[1] ^ a[0];
      a[3] <= a[2] ^ a[1];

      a_next[1:0] <= a_next[3:2];
      a_next[2] <= a_next[1] ^ a_next[0];
      a_next[3] <= a_next[2] ^ a_next[1];
    end

  always @(posedge clk)
    if (rst) begin
      b <= 3'h1;
      b_next <= 3'h4;
    end else begin
      b[0] <= b[2];
      b[1] <= b[1] ^ b[0];
      b[2] <= b[2] ^ b[1];

      b_next[0] <= b_next[2];
      b_next[1] <= b_next[1] ^ b_next[0];
      b_next[2] <= b_next[2] ^ b_next[1];
    end

  assign rc = {a, 1'b0, b};
  assign rc_next = {a_next, 1'b0, b_next};

endmodule  //craft_round_constants
