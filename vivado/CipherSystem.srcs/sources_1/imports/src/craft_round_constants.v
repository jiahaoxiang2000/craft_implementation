module craft_round_constants (
    input clk,
    input rst,
    output [7:0] rc
);


  reg [3:0] a = 4'h1;
  reg [2:0] b = 3'h1;

  always @(posedge clk)
    if (rst) a <= 4'h1;
    else  begin
      a[2:0] <= a[3:1];
      a[3]   <= a[1] ^ a[0];
    end

  always @(posedge clk)
    if (rst) b <= 3'h1;
    else begin
      b[1:0] <= b[2:1];
      b[2]   <= b[1] ^ b[0];
    end

  assign rc = {a, 1'b0, b};

endmodule  //craft_round_constants
