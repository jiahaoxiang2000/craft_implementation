module tb_craft_encrypt ();

  parameter PERIOD = 2;
  reg CLK;
  reg CE;
  reg RST;



  initial begin
    CLK = 1'b0;
    #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end

  reg [63:0] plaintext = 64'h5734F006D8D88A3E;
  reg [63:0] tweak = 64'h54CD94FFD0670A58;
  reg [127:0] key = 128'h27a6_781a_43f3_64bc_9167_08d5_fbb5_aefe;
  wire done;
  wire [63:0] ciphertext;

  craft_encrypt craft_encrypt_tb (
      .clk(CLK),
      .rst_n(RST),
      .plaintext(plaintext),
      .tweak(tweak),
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
