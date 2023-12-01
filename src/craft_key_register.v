module craft_key_register (
    input clk,
    input en,
    input [128-1:0] key,
    input [64-1:0] tweak,
    input [8-1:0] r,
    input CK0,
    output wire [3:0] out
);

  wire [63:0] t_key;
  wire [63:0] t_tweak;
  wire [63:0] TK;
  wire [63:0] t_keys;
  wire [7:0] rc;
  reg [63:0] key_registers;


  function [63 : 0] q_permutation(input [63 : 0] data);
    begin
      // 12, 10, 15, 5, 14, 8, 9, 2, 11, 3, 7, 4, 6, 0, 1, 13]
      q_permutation[15*4+:4] = data[(15-12)*4+:4];
      q_permutation[14*4+:4] = data[(15-10)*4+:4];
      q_permutation[13*4+:4] = data[(15-15)*4+:4];
      q_permutation[12*4+:4] = data[(15-5)*4+:4];
      q_permutation[11*4+:4] = data[(15-14)*4+:4];
      q_permutation[10*4+:4] = data[(15-8)*4+:4];
      q_permutation[9*4+:4]  = data[(15-9)*4+:4];
      q_permutation[8*4+:4]  = data[(15-2)*4+:4];
      q_permutation[7*4+:4]  = data[(15-11)*4+:4];
      q_permutation[6*4+:4]  = data[(15-3)*4+:4];
      q_permutation[5*4+:4]  = data[(15-7)*4+:4];
      q_permutation[4*4+:4]  = data[(15-4)*4+:4];
      q_permutation[3*4+:4]  = data[(15-6)*4+:4];
      q_permutation[2*4+:4]  = data[(15-0)*4+:4];
      q_permutation[1*4+:4]  = data[(15-1)*4+:4];
      q_permutation[0*4+:4]  = data[(15-13)*4+:4];
    end
  endfunction  // q_permutation

  reg [3:0] a = 4'h1;
  reg [2:0] b = 3'h1;

  always @(r) begin
    if (r == 0) begin
      a <= 4'h1;
      b <= 3'h1;
    end else begin
      a[2:0] <= a[3:1];
      a[3]   <= a[1] ^ a[0];
      b[1:0] <= b[2:1];
      b[2]   <= b[1] ^ b[0];
    end
  end

  assign rc = {a, 1'b0, b};

  assign t_key = (r % 2 == 0) ? key[127-:64] : key[63-:64];
  assign t_tweak = (r % 4 < 2) ? tweak : q_permutation(tweak);

  assign TK = t_key ^ t_tweak;

  always @(posedge clk) begin
    if (en) begin
      if (CK0) begin
        // we let round const XOR with key, is equal to XOR with internal state
        key_registers <= {
          TK[(15-3)*4+:16], TK[(15-4)*4+:4] ^ rc[7-:4], TK[(15-5)*4+:4] ^ rc[3-:4], TK[(15-15)*4+:40]
        };
      end else begin
        key_registers <= {
          t_keys[(15-4)*4+:4],
          t_keys[(15-5)*4+:4],
          t_keys[(15-6)*4+:4],
          t_keys[(15-7)*4+:4],
          t_keys[(15-8)*4+:4],
          t_keys[(15-9)*4+:4],
          t_keys[(15-10)*4+:4],
          t_keys[(15-11)*4+:4],
          t_keys[(15-12)*4+:4],
          t_keys[(15-13)*4+:4],
          t_keys[(15-14)*4+:4],
          t_keys[(15-15)*4+:4],
          t_keys[(15-1)*4+:4],
          t_keys[(15-2)*4+:4],
          t_keys[(15-3)*4+:4],
          t_keys[(15-0)*4+:4]
        };
      end
    end
  end
  assign t_keys = key_registers;

  assign out = key_registers[63-:4];
  
endmodule  //craft_key_register
