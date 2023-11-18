module craft_state_register (
    input clk,
    input ce,
    input [63:0] plaintext,
    input [3:0] in,
    input CS0,
    input CS1,
    output [3:0] out
);

  reg [63:0] state_registers;

  function [63 : 0] permuteNibbles(input [63 : 0] data);
    begin
      // 15 12 13 14 10 9 8 11 6 5 4 7 1 2 3 0
      permuteNibbles[15*4+:4] = data[(15-15)*4+:4];
      permuteNibbles[14*4+:4] = data[(15-12)*4+:4];
      permuteNibbles[13*4+:4] = data[(15-13)*4+:4];
      permuteNibbles[12*4+:4] = data[(15-14)*4+:4];
      permuteNibbles[11*4+:4] = data[(15-10)*4+:4];
      permuteNibbles[10*4+:4] = data[(15-9)*4+:4];
      permuteNibbles[9*4+:4]  = data[(15-8)*4+:4];
      permuteNibbles[8*4+:4]  = data[(15-11)*4+:4];
      permuteNibbles[7*4+:4]  = data[(15-6)*4+:4];
      permuteNibbles[6*4+:4]  = data[(15-5)*4+:4];
      permuteNibbles[5*4+:4]  = data[(15-4)*4+:4];
      permuteNibbles[4*4+:4]  = data[(15-7)*4+:4];
      permuteNibbles[3*4+:4]  = data[(15-1)*4+:4];
      permuteNibbles[2*4+:4]  = data[(15-2)*4+:4];
      permuteNibbles[1*4+:4]  = data[(15-3)*4+:4];
      permuteNibbles[0*4+:4]  = data[(15-0)*4+:4];
    end
  endfunction  // permuteNibbles

  always @(posedge clk) begin
    if (ce) begin
      if (CS0 && !CS1) begin
        state_registers <= plaintext;
      end

      if (CS0 && CS1) begin
        state_registers[(15-3)*4+:4]  <= state_registers[(15-7)*4+:4];
        state_registers[(15-7)*4+:4]  <= state_registers[(15-11)*4+:4];
        state_registers[(15-11)*4+:4] <= state_registers[(15-15)*4+:4];
        state_registers[(15-15)*4+:4] <= in;
      end

      if (!CS0 && CS1) begin
        state_registers <= permuteNibbles(state_registers);
      end

      if (!CS0 && !CS1) begin
        state_registers <= {
          state_registers[(15-4)*4+:4],
          state_registers[(15-5)*4+:4],
          state_registers[(15-6)*4+:4],
          state_registers[(15-7)*4+:4],
          state_registers[(15-8)*4+:4],
          state_registers[(15-9)*4+:4],
          state_registers[(15-10)*4+:4],
          state_registers[(15-11)*4+:4],
          state_registers[(15-12)*4+:4],
          state_registers[(15-13)*4+:4],
          state_registers[(15-14)*4+:4],
          state_registers[(15-15)*4+:4],
          state_registers[(15-1)*4+:4],
          state_registers[(15-2)*4+:4],
          state_registers[(15-3)*4+:4],
          state_registers[(15-0)*4+:4]
        };
      end
    end
  end

  assign out = state_registers[63-:4];

endmodule
