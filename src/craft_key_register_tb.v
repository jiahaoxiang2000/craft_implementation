`timescale 1ns / 1ps
`include "craft_key_register.v"

module craft_key_register_tb;
  parameter PERIOD = 2;
  reg CLK;
  reg EN;
  reg [3:0] din;
  reg CK0;
  wire [3:0] tb_out;
  wire [7:0] tb_rc;

  reg tb_reset_n;
  reg [8-1:0] tb_round = 8'h00;
  reg [128-1:0] tb_key;
  reg [64-1:0] tb_tweak;
  wire [64-1:0] tb_TK;

  craft_key_register craft_key_register_inst (
      .clk(CLK),
      .en(EN),
      .key(tb_key),
      .tweak(tb_tweak),
      .r(tb_round),
      .CK0(CK0),
      .out(tb_out)
  );

  initial begin
    CLK = 1'b0;
    CK0 = 1'b0;
    EN = 1'b1;
    tb_key = 128'h27a6_781a_43f3_64bc_9167_08d5_fbb5_aefe;
    tb_tweak = 64'h54cd_94ff_d067_0a58;
    // #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end



  integer i;
  integer j;
  initial begin
    for (i = 0; i < 4; i = i + 1) begin
      CK0 = 1'b1;
      tb_round = i;
      #(PERIOD);
      CK0 = 1'b0;
      #(PERIOD);
      for (j = 0; j < 15; j = j + 1) begin
        #(PERIOD);
      end
    end

    CK0 = 1'b1;
    tb_round = 4;
    EN = 1'b0;
    #(PERIOD);
    CK0 = 1'b0;
    #(PERIOD);
    for (j = 0; j < 15; j = j + 1) begin
      #(PERIOD);
    end
    $finish;
  end


  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, craft_key_register_tb);
  end

endmodule  //craft_key_schedule_tb
