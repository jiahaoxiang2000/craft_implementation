module craft_sbox (
    input  wire [3:0] din,
    output wire [3:0] dout
);

  wire [3 : 0] sbox[0 : 15];
  assign sbox[4'h0] = 4'hc;
  assign sbox[4'h1] = 4'ha;
  assign sbox[4'h2] = 4'hd;
  assign sbox[4'h3] = 4'h3;
  assign sbox[4'h4] = 4'he;
  assign sbox[4'h5] = 4'hb;
  assign sbox[4'h6] = 4'hf;
  assign sbox[4'h7] = 4'h7;
  assign sbox[4'h8] = 4'h8;
  assign sbox[4'h9] = 4'h9;
  assign sbox[4'ha] = 4'h1;
  assign sbox[4'hb] = 4'h5;
  assign sbox[4'hc] = 4'h0;
  assign sbox[4'hd] = 4'h2;
  assign sbox[4'he] = 4'h4;
  assign sbox[4'hf] = 4'h6;

  assign dout = sbox[din];

endmodule  //craft_sbox
