module craft_sbox (
    input  wire [WIDTH-1:0] din,
    output wire [WIDTH-1:0] dout
);
  localparam integer WIDTH = 16;
  localparam integer SBOX_WIDTH = 4;

  //----------------------------------------------------------------
  // The sbox array.
  //----------------------------------------------------------------
  wire [SBOX_WIDTH-1 : 0] sbox[0 : 2**SBOX_WIDTH -1];

  //----------------------------------------------------------------
  // Four parallel muxes.
  //----------------------------------------------------------------
  assign dout[15 : 12] = sbox[din[15 : 12]];
  assign dout[11 : 8] = sbox[din[11 : 8]];
  assign dout[7 : 4] = sbox[din[7 : 4]];
  assign dout[3 : 0] = sbox[din[3 : 0]];


  //----------------------------------------------------------------
  // Creating the sbox array contents.
  //----------------------------------------------------------------
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




endmodule  //craft_sbox
