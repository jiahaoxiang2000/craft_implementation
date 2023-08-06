module tb_craft_round_constants ();

  parameter PERIOD = 2;
  reg CLK;
  reg CE;
  reg RST;
  wire [7:0] rc;

  initial begin
    CLK = 1'b0;
    #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end



  craft_round_constants craft_round_constants_inst (
      .clk(CLK),
      .rst(RST),
      .ce (CE),
      .rc (rc)
  );

  initial begin
    #(PERIOD);
    CE  = 1'b1;
    RST = 1'b1;
    #(PERIOD);
    RST = 1'b0;
  end


endmodule  //craft_round_constants
