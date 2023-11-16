module tb_craft_sbox ();

  parameter PERIOD = 2;
  reg CLK;
  reg CE;
  reg RST;
  reg [3:0] din;
  wire [3:0] dout;

  initial begin
    CLK = 1'b0;
    #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end

  craft_sbox craft_sbox_inst (
      .din (din),
      .dout(dout)
  );


  initial begin
    #(PERIOD);
    din = 4'h0;
    #(PERIOD);
    din = 4'h1;
    #(PERIOD);
    din = 4'h2;
    #(PERIOD);
    din = 4'h3;
    #(PERIOD);
    din = 4'h4;
    #(PERIOD);
    din = 4'h5;
    #(PERIOD);
    din = 4'h6;
    #(PERIOD);
    din = 4'h7;
    #(PERIOD);
    din = 4'h8;
    #(PERIOD);
    din = 4'h9;
    #(PERIOD);
    din = 4'ha;
    #(PERIOD);
    din = 4'hb;
    #(PERIOD);
    din = 4'hc;
    #(PERIOD);
    din = 4'hd;
    #(PERIOD);
    din = 4'he;
    #(PERIOD);
    din = 4'hf;

  end


endmodule  //craft_round_constants
