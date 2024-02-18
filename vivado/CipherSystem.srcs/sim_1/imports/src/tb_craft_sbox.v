module tb_craft_sbox ();

  parameter PERIOD = 2;
  reg CLK;
  reg CE;
  reg RST;
  reg [15:0] din;
  wire [15:0] dout;

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
    din = 16'h0123;
    #(PERIOD);
    din = 16'h4567;
    #(PERIOD);
    din = 16'h89ab;
    #(PERIOD);
    din = 16'hcdef;
  end


endmodule  //craft_round_constants
