`include "craft_sbox.v"
module craft_round (
    input  wire [63:0] din,
    input  wire [63:0] tk,
    input  wire [ 7:0] rc,
    output wire [63:0] add_key,
    output wire [63:0] dout
);
  // MixColumn
  wire [15:0] mx_row0;
  wire [15:0] mx_row1;

  assign mx_row0 = din[63-:16] ^ din[31-:16] ^ din[15-:16];
  assign mx_row1 = din[47-:16] ^ din[15-:16];
  // Add Round Constant
  wire [7:0] rc_row1;

  assign rc_row1[7-:4] = mx_row1[15-:4] ^ rc[7-:4];
  assign rc_row1[3-:4] = mx_row1[11-:4] ^ rc[3-:4];
  // Add ATK (add sub key)
  wire [63:0] rt;

  assign rt[63-:16] = mx_row0 ^ tk[63-:16];
  assign rt[47-:16] = {rc_row1 ^ tk[47-:8], mx_row1[7-:8] ^ tk[39-:8]};
  assign rt[31-:16] = din[31-:16] ^ tk[31-:16];
  assign rt[15-:16] = din[15-:16] ^ tk[15-:16];

  assign add_key = rt;

  // PermuteNibbles
  wire [63:0] pn;
  assign pn[63-4*0-:4]  = rt[63-4*15-:4];
  assign pn[63-4*1-:4]  = rt[63-4*12-:4];
  assign pn[63-4*2-:4]  = rt[63-4*13-:4];
  assign pn[63-4*3-:4]  = rt[63-4*14-:4];
  assign pn[63-4*4-:4]  = rt[63-4*10-:4];
  assign pn[63-4*5-:4]  = rt[63-4*9-:4];
  assign pn[63-4*6-:4]  = rt[63-4*8-:4];
  assign pn[63-4*7-:4]  = rt[63-4*11-:4];
  assign pn[63-4*8-:4]  = rt[63-4*6-:4];
  assign pn[63-4*9-:4]  = rt[63-4*5-:4];
  assign pn[63-4*10-:4] = rt[63-4*4-:4];
  assign pn[63-4*11-:4] = rt[63-4*7-:4];
  assign pn[63-4*12-:4] = rt[63-4*1-:4];
  assign pn[63-4*13-:4] = rt[63-4*2-:4];
  assign pn[63-4*14-:4] = rt[63-4*3-:4];
  assign pn[63-4*15-:4] = rt[63-4*0-:4];

  // SBox to out
  craft_sbox craft_sbox_inst_0 (
      .din (pn[63-16*0-:16]),
      .dout(dout[63-16*0-:16])
  );
  craft_sbox craft_sbox_inst_1 (
      .din (pn[63-16*1-:16]),
      .dout(dout[63-16*1-:16])
  );
  craft_sbox craft_sbox_inst_2 (
      .din (pn[63-16*2-:16]),
      .dout(dout[63-16*2-:16])
  );
  craft_sbox craft_sbox_inst_3 (
      .din (pn[63-16*3-:16]),
      .dout(dout[63-16*3-:16])
  );


endmodule  //craft_round
