`include "present_encrypt.v"

module present_encrypt_tb ();

  parameter PERIOD = 2;
  reg CLK;
  reg CE;
  reg RST;



  initial begin
    CLK = 1'b0;
    #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end

  reg [63:0] plaintext = 64'h0000000000000000;
  reg [127:0] key = 128'h00000000000000000000000000000000;
  wire done;
  wire [63:0] ciphertext;

  present_encrypt present_encrypt_tb (
      .clk(CLK),
      .rst_n(RST),
      .plaintext(plaintext),
      .key(key),
      .done(done),
      .ciphertext(ciphertext)
  );

  initial begin
    #(PERIOD);
    RST = 1'b0;
    #(PERIOD);
    RST = 1'b1;
  end


endmodule  //craft_round_constants
