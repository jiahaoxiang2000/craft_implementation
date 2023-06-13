`timescale 1ns / 1ps

module top (
    input wire CLK100MHZ,
    input wire CPU_RESETN,
    output test
);
  assign test = !CLK100MHZ;

endmodule
