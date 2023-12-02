module craft_key_schedule (
    input wire [128-1:0] key,
    input wire [64-1:0] tweak,
    input [8-1:0] r,
    output wire [64-1:0] TK
);

  wire [63:0] t_key;
  wire [63:0] t_tweak;
  
  function [63 : 0] q_permutation(input [63 : 0] data);
    begin
      // 12, 10, 15, 5, 14, 8, 9, 2, 11, 3, 7, 4, 6, 0, 1, 13]
      q_permutation[15*4+:4] = data[(15-12)*4+:4];
      q_permutation[14*4+:4] = data[(15-10)*4+:4];
      q_permutation[13*4+:4] = data[(15-15)*4+:4];
      q_permutation[12*4+:4] = data[(15-5)*4+:4];
      q_permutation[11*4+:4] = data[(15-14)*4+:4];
      q_permutation[10*4+:4] = data[(15-8)*4+:4];
      q_permutation[9*4+:4]  = data[(15-9)*4+:4];
      q_permutation[8*4+:4]  = data[(15-2)*4+:4];
      q_permutation[7*4+:4]  = data[(15-11)*4+:4];
      q_permutation[6*4+:4]  = data[(15-3)*4+:4];
      q_permutation[5*4+:4]  = data[(15-7)*4+:4];
      q_permutation[4*4+:4]  = data[(15-4)*4+:4];
      q_permutation[3*4+:4]  = data[(15-6)*4+:4];
      q_permutation[2*4+:4]  = data[(15-0)*4+:4];
      q_permutation[1*4+:4]  = data[(15-1)*4+:4];
      q_permutation[0*4+:4]  = data[(15-13)*4+:4];
    end
  endfunction  // q_permutation

  assign t_key = (r % 2 == 0) ? key[127-:64] : key[63-:64];
  assign t_tweak = (r % 4 < 2) ? tweak : q_permutation(tweak);


  assign TK = t_key ^ t_tweak;


endmodule  //craft_key_schedule
