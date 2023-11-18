`timescale 1ns / 1ps
`include "craft_state_register.v"

module craft_state_register_tb;
  parameter PERIOD = 2;
  reg CLK;
  reg EN;


  reg [3:0] tb_in;
  reg [128-1:0] tb_key;
  reg [64-1:0] tb_plaintext = 64'h0123_4567_89AB_CDEF;
  wire [3:0] tb_out;
  reg CS0;
  reg CS1;

  craft_state_register craft_state_register_inst (
      .clk(CLK),
      .ce(EN),
      .plaintext(tb_plaintext),
      .in(tb_in),
      .CS0(CS0),
      .CS1(CS1),
      .out(tb_out)
  );

  initial begin
    CLK = 1'b0;
    // #(PERIOD / 2);
    forever #(PERIOD / 2) CLK = ~CLK;
  end


  integer i;
  integer j;
  initial begin
    // store the init plaintext to state register
    EN  = 1'b1;
    CS0 = 1'b1;
    CS1 = 1'b0;
    #(PERIOD);
    CS0 = 1'b0;
    CS1 = 1'b0;
    for (i = 0; i < 4; i = i + 1) begin
      #(PERIOD);
    end

    CS0   = 1'b1;
    CS1   = 1'b1;
    tb_in = 4'd4;
    #(PERIOD);
    tb_in = 4'd8;
    #(PERIOD);
    tb_in = 4'd12;
    #(PERIOD);
    tb_in = 4'd0;
    #(PERIOD);

    CS0 = 1'b0;
    CS1 = 1'b1;
    #(PERIOD);
    
    EN = 1'b0;
    #(PERIOD);
    $finish;
  end


  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, craft_state_register_tb);
  end

endmodule  //craft_key_schedule_tb
