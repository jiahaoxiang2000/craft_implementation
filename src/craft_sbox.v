module craft_sbox (
    input  wire [15:0] din,
    output wire [15:0] dout
);
  // b0 = (A ^ 1) & (C ^ 1) | (A & (B ^ 1) & (C ^ 1)) | ((A ^ 1) & C & (D ^ 1))
  // b1 = B & C | ((A ^ 1) & (D ^ 1)) | (A & C & D)
  // b2 = (A ^ 1) & D | ((A ^ 1) & B) | (B & D)
  // b3 = (A ^ 1) & C | ((A ^ 1) & B & D) | ((B ^ 1) & C) | (A & (B ^ 1) & D)

  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : sbox_boolean
      assign dout[i*4+3]=(~din[i*4+3] & ~din[i*4+1]) | (din[i*4+3] & ~din[i*4+2] & ~din[i*4+1]) | (~din[i*4+3] & din[i*4+1] & ~din[i*4+0]);
      assign dout[i*4+2]=(din[i*4+2] & din[i*4+1]) | (~din[i*4+3] & ~din[i*4+0]) | (din[i*4+3] & din[i*4+1] & din[i*4+0]);
      assign dout[i*4+1]=(~din[i*4+3] & din[i*4+0]) | (~din[i*4+3] & din[i*4+2]) | (din[i*4+2] & din[i*4+0]);
      assign dout[i*4] = (~din[i*4+3] & din[i*4+1]) | (~din[i*4+3] & din[i*4+2] & din[i*4+0]) | (~din[i*4+2] & din[i*4+1]) | (din[i*4+3] & ~din[i*4+2]& din[i*4+0]);
    end
  endgenerate

endmodule  //craft_sbox
