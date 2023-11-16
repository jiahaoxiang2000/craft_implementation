module tb_craft_round ();

  parameter PERIOD = 2;
  reg CLK;
  reg CE;
  reg RST;

  reg [63:0] din;
  reg [63:0] tk;
  reg [7:0] rc;
  wire [63:0] dout;

  initial begin
    CLK = 1'b0;
    #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end

  craft_round craft_round_inst (
      .din (din),
      .tk  (tk),
      .rc  (rc),
      .dout(dout)
  );

  initial begin
    #(PERIOD);
    din = 64'h5734F006D8D88A3E;
    tk = 64'h736BECE593946EE4;
    rc = 8'h11;
    #(PERIOD);
    din = 64'h14E2E5E02782F597;
    tk = 64'hC5AA9C2A2BD2A4A6;
    rc = 8'h84;
    #(PERIOD);
    din = 64'hABA3B0CCB8C23B2C;
    tk = 64'h212225163E0A91F6;
    rc = 8'h42;
    #(PERIOD);
    din = 64'h11120F88604F9F6C;
    tk = 64'h97E355D9864C5BB4;
    rc = 8'h25;
  end


endmodule  //craft_round_constants
