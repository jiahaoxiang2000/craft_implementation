`timescale 1ns / 1ps

module top (
    input  CLK100MHZ,
    output test
);
  assign test = !CLK100MHZ;

endmodule
