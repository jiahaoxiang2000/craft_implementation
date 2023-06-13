module lllwbc_key_schedule (
    input wire clk,
    input [0:127] key,
    output [0:127] kws,
    output reg [0:671] krs
);

  wire [0:32-1] K1;
  wire [0:32-1] K2;
  reg  [0:32-1] cks[0:21-1];


  // store the data to cks
  always @(posedge clk) begin
    cks[0]  <= 32'h13198a2e;
    cks[1]  <= 32'h03707344;
    cks[2]  <= 32'ha4093822;
    cks[3]  <= 32'h299f31d0;
    cks[4]  <= 32'h082efa98;
    cks[5]  <= 32'hec4e6c89;
    cks[6]  <= 32'h452821e6;
    cks[7]  <= 32'h38d01377;
    cks[8]  <= 32'hbe5466cf;
    cks[9]  <= 32'h34e90c6c;
    cks[10] <= 32'hc97c50dd;
    cks[11] <= 32'hf44525db;
    cks[12] <= 32'hbe5466cf;
    cks[13] <= 32'hf87c3ac0;
    cks[14] <= 32'h452821e6;
    cks[15] <= 32'h2ce2453e;
    cks[16] <= 32'h082efa98;
    cks[17] <= 32'he9331867;
    cks[18] <= 32'ha4093822;
    cks[19] <= 32'hc3dc5af3;
    cks[20] <= 32'h13198a2e;
  end
  // K1 K2 drive by ke
  assign K1 = key[64+0:64+31];
  assign K2 = key[64+32:64+63];
  // kws drive by kw 
  assign kws[0:63] = key[0:63];
  assign kws[64+0:64+62] = {key[63], key[0:61]};
  assign kws[64+63] = key[62] ^ key[0];


  integer i;
  always @(posedge clk) begin
    for (i = 0; i < 21; i = i + 2) begin
      krs[(i*32+0)+:32] <= K1 ^ cks[i];
    end
    for (i = 1; i < 20; i = i + 2) begin
      krs[(i*32+0)+:32] <= K2 ^ cks[i];
    end
  end


endmodule  // lllwbc_key_schedule
