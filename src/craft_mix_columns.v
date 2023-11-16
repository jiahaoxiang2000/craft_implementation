module craft_mix_columns (
    input clk,
    input [3:0] in,
    input CM0,
    input CM1,
    output [3:0] out
);
  // inter registers
  reg  [3:0] r0;
  reg  [3:0] r1;
  reg  [3:0] r2;
  reg  [3:0] r3;
  // inter temp wires
  wire [3:0] t0;
  wire [3:0] t1;
  wire [3:0] t2;
  wire [3:0] t3;

  // inter register change
  always @(posedge clk) begin
    if (CM0 == 1'b1) begin
      r0 <= in[3:0];
      r1 <= r0;
    end else begin
      r0 <= r0;
      r1 <= r1;
    end

    if (CM1 == 1'b1) begin
      r2 <= t1;
      r3 <= t2;
    end else begin
      r2 <= r2;
      r3 <= r3;
    end
  end

  // inter wire change
  assign t0  = r0;
  assign t1  = CM0 ? r1 : r0 ^ r2;
  assign t2  = CM0 ? r2 : r0 ^ r1 ^ r3;
  assign t3  = r3;

  // output
  assign out = t3;

endmodule
