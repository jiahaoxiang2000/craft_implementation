`include "craft_sbox.v"
module tb_craft_sbox ();

  parameter PERIOD = 2;
  reg CLK;
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
    if (dout != 4'hc) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0xc");
      $finish;
    end

    #(PERIOD);
    din = 4'h1;
    if (dout != 4'ha) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0xa");
      $finish;
    end

    #(PERIOD);
    din = 4'h2;
    if (dout != 4'hd) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0xd");
      $finish;
    end

    #(PERIOD);
    din = 4'h3;
    if (dout != 4'h3) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x3");
      $finish;
    end

    #(PERIOD);
    din = 4'h4;
    if (dout != 4'he) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0xe");
      $finish;
    end

    #(PERIOD);
    din = 4'h5;
    if (dout != 4'hb) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0xb");
      $finish;
    end
    #(PERIOD);
    din = 4'h6;
    if (dout != 4'hf) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0xf");
      $finish;
    end
    #(PERIOD);
    din = 4'h7;
    if (dout != 4'h7) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x7");
      $finish;
    end
    #(PERIOD);
    din = 4'h8;
    if (dout != 4'h8) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x8");
      $finish;
    end
    #(PERIOD);
    din = 4'h9;
    if (dout != 4'h9) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x9");
      $finish;
    end
    #(PERIOD);
    din = 4'ha;
    if (dout != 4'h1) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x1");
      $finish;
    end
    #(PERIOD);
    din = 4'hb;
    if (dout != 4'h5) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x5");
      $finish;
    end
    #(PERIOD);
    din = 4'hc;
    if (dout != 4'h0) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x0");
      $finish;
    end
    #(PERIOD);
    din = 4'hd;
    if (dout != 4'h2) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x2");
      $finish;
    end
    #(PERIOD);
    din = 4'he;
    if (dout != 4'h4) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x4");
      $finish;
    end
    #(PERIOD);
    din = 4'hf;
    if (dout != 4'h6) begin
      $display("din = %h, dout = %h", din, dout);
      $display("ERROR: Expected 0x6");
      $finish;
    end
    $finish;
  end


endmodule  //craft_round_constants
