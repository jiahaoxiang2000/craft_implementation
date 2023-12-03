

module present_encrypt (
    input wire clk,
    input wire rst_n,
    input wire [63:0] plaintext,
    input wire [127:0] key,
    output reg done,
    output wire [63:0] ciphertext
);

  reg [7:0] r0 = 8'h00;
  reg [63:0] state;
  wire [63:0] state_next;
  reg [127:0] key_state;
  wire [127:0] key_state_next;

  reg [3:0] sbox[0:15];  // s box for sBoxLayer

  initial begin
    sbox[0]  = 12;
    sbox[1]  = 5;
    sbox[2]  = 6;
    sbox[3]  = 11;
    sbox[4]  = 9;
    sbox[5]  = 0;
    sbox[6]  = 10;
    sbox[7]  = 13;
    sbox[8]  = 3;
    sbox[9]  = 14;
    sbox[10] = 15;
    sbox[11] = 8;
    sbox[12] = 4;
    sbox[13] = 7;
    sbox[14] = 1;
    sbox[15] = 2;
  end
  // round control signals
  always @(posedge clk) begin
    if (!rst_n) begin
      r0 <= 8'h00;
    end else if (!done) begin
      r0 <= r0 + 8'h01;
    end else begin
      r0 <= r0;
    end
  end

  always @(posedge clk) begin
    if (r0 >= 8'd31) begin
      done <= 1'b1;
    end else done <= 1'b0;
  end

  always @(posedge clk) begin
    if (!rst_n) begin
      state <= plaintext;
      key_state <= key;
    end else if (!done) begin
      state <= state_next;
      key_state <= key_state_next;
    end else begin
      state <= state;
      key_state <= key_state;
    end
  end

  wire [63:0] sbox_in;  // input of sBoxLayer
  assign sbox_in = state[63:0] ^ key_state[127:64];

  wire [63:0] sbox_out;  // output of sBoxLayer
  assign sbox_out = {
    sbox[sbox_in[63:60]],
    sbox[sbox_in[59:56]],
    sbox[sbox_in[55:52]],
    sbox[sbox_in[51:48]],
    sbox[sbox_in[47:44]],
    sbox[sbox_in[43:40]],
    sbox[sbox_in[39:36]],
    sbox[sbox_in[35:32]],
    sbox[sbox_in[31:28]],
    sbox[sbox_in[27:24]],
    sbox[sbox_in[23:20]],
    sbox[sbox_in[19:16]],
    sbox[sbox_in[15:12]],
    sbox[sbox_in[11:8]],
    sbox[sbox_in[7:4]],
    sbox[sbox_in[3:0]]
  };

  wire [63:0] pLayer_out;  // output of pLayer

  assign pLayer_out = {
    sbox_out[63-0],
    sbox_out[63-4],
    sbox_out[63-8],
    sbox_out[63-12],
    sbox_out[63-16],
    sbox_out[63-20],
    sbox_out[63-24],
    sbox_out[63-28],
    sbox_out[63-32],
    sbox_out[63-36],
    sbox_out[63-40],
    sbox_out[63-44],
    sbox_out[63-48],
    sbox_out[63-52],
    sbox_out[63-56],
    sbox_out[63-60],
    sbox_out[63-1],
    sbox_out[63-5],
    sbox_out[63-9],
    sbox_out[63-13],
    sbox_out[63-17],
    sbox_out[63-21],
    sbox_out[63-25],
    sbox_out[63-29],
    sbox_out[63-33],
    sbox_out[63-37],
    sbox_out[63-41],
    sbox_out[63-45],
    sbox_out[63-49],
    sbox_out[63-53],
    sbox_out[63-57],
    sbox_out[63-61],
    sbox_out[63-2],
    sbox_out[63-6],
    sbox_out[63-10],
    sbox_out[63-14],
    sbox_out[63-18],
    sbox_out[63-22],
    sbox_out[63-26],
    sbox_out[63-30],
    sbox_out[63-34],
    sbox_out[63-38],
    sbox_out[63-42],
    sbox_out[63-46],
    sbox_out[63-50],
    sbox_out[63-54],
    sbox_out[63-58],
    sbox_out[63-62],
    sbox_out[63-3],
    sbox_out[63-7],
    sbox_out[63-11],
    sbox_out[63-15],
    sbox_out[63-19],
    sbox_out[63-23],
    sbox_out[63-27],
    sbox_out[63-31],
    sbox_out[63-35],
    sbox_out[63-39],
    sbox_out[63-43],
    sbox_out[63-47],
    sbox_out[63-51],
    sbox_out[63-55],
    sbox_out[63-59],
    sbox_out[63-63]
  };

  assign state_next = pLayer_out;

  wire [127:0] key_shift = {key_state[66:0], key_state[127:67]};

  wire [  7:0] key_sbox = {sbox[key_shift[127:124]], sbox[key_shift[123:120]]};

  wire [  4:0] key_const = key_shift[66:62] ^ r0[4:0];

  assign key_state_next = {key_sbox, key_shift[119:67], key_const, key_shift[61:0]};

  assign ciphertext = state_next ^ key_state_next[127:64];


endmodule  //craft_encrypt
