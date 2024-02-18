`timescale 1ns / 1ps
module tb_craft_key_schedule;

  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  parameter CLK_HALF_PERIOD = 1;
  parameter CLK_PERIOD = 2 * CLK_HALF_PERIOD;

  //----------------------------------------------------------------
  // Register and Wire declarations.
  //----------------------------------------------------------------
  reg tb_clk;
  reg tb_reset_n;
  reg [8-1:0] tb_round = 8'h00;
  reg [128-1:0] tb_key;
  reg [64-1:0] tb_tweak;
  wire [64-1:0] tb_TK;

  //----------------------------------------------------------------
  // Device Under Test.
  //----------------------------------------------------------------
  craft_key_schedule key (
      .r(tb_round),
      .key(tb_key),
      .tweak(tb_tweak),
      .TK(tb_TK)
  );


  //----------------------------------------------------------------
  // clk_gen
  //
  // Always running clock generator process.
  //----------------------------------------------------------------
  always begin : clk_gen
    #CLK_HALF_PERIOD;
    tb_clk = !tb_clk;
  end  // clk_gen

  //----------------------------------------------------------------
  // init_sim()
  //
  // Initialize all counters and testbed functionality as well
  // as setting the DUT inputs to defined values.
  //----------------------------------------------------------------
  task init_sim;
    begin
      tb_clk = 0;
      tb_reset_n = 1;
      tb_key = 128'h27a6_781a_43f3_64bc_9167_08d5_fbb5_aefe;
      tb_round = 8'h00;
      tb_tweak = 64'h54cd_94ff_d067_0a58;
    end
  endtask  // init_sim


  //----------------------------------------------------------------
  // check_key()
  //
  // Check a given key in the  key memory against a given expected key.
  //----------------------------------------------------------------
  task check_key(input [7:0] key_nr, input [63 : 0] expected);
    begin
      tb_round = key_nr;
      #(CLK_PERIOD);
      if (tb_TK == expected) begin
        $display("** round number 0x%01x matched expected round key.", key_nr);
        $display("** Got:      0x%016x **", tb_TK);
      end else begin
        $display("** Error: round number 0x%02x did not match expected round key. **", key_nr);
        $display("** Expected: 0x%016x **", expected);
        $display("** Got:      0x%016x **", tb_TK);
      end
      $display("");
    end
  endtask  // check_key

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



  //----------------------------------------------------------------
  // check_key()
  //
  // Check a given key in the  key memory against a given expected key.
  //----------------------------------------------------------------
  task check_q_permutation(input [63:0] data, input [63:0] expected_p_data, output [63:0] pdata);
    begin

      pdata = q_permutation(data);

      #(CLK_PERIOD);
      if (pdata == expected_p_data) begin
        $display("** q_permutation has pass : data 0x%016x matched expected pdata.", data);
      end else begin
        $display("** Error: data 0x%016x did not match the expected **", data);

        $display("** Expected: 0x%016x :pdata       **", pdata);
        $display("** Got:      0x%016x :expected_p_data       **", expected_p_data);
      end
      $display("");
    end
  endtask  // 

  //----------------------------------------------------------------
  // craft_key_test
  // The main test functionality.
  //----------------------------------------------------------------
  initial begin : craft_key_test
    reg [63 : 0] expected_00;
    reg [63 : 0] expected_01;
    reg [63 : 0] expected_02;
    reg [63 : 0] expected_03;
    reg [7:0] round;

    reg [63:0] data;
    reg [63:0] pata;
    reg [63:0] expected_p_data;

    $display("   -= Testbench for craft key started =-");
    $display("    =====================================");
    $display("");


    init_sim();
    #(100 * CLK_PERIOD);

    data = 64'h0123456789abcdef;
    expected_p_data = 64'hcaf5e892b374601d;

    check_q_permutation(data, expected_p_data, pata);

    expected_00 = 64'h736BECE593946EE4;
    expected_01 = 64'hC5AA9C2A2BD2A4A6;
    expected_02 = 64'h212225163E0A91F6;
    expected_03 = 64'h97E355D9864C5BB4;

    round = 8'h00;
    check_key(round, expected_00);
    round = 8'h01;
    check_key(round, expected_01);
    round = 8'h02;
    check_key(round, expected_02);
    round = 8'h03;
    check_key(round, expected_03);
    round = 8'h04;
    check_key(round, expected_00);
    round = 8'h05;
    check_key(round, expected_01);
    round = 8'h06;
    check_key(round, expected_02);
    round = 8'h07;
    check_key(round, expected_03);


    $display("");
    $display("*** craft key test simulation done. ***");
    $finish;
  end  // aes_key_test


endmodule  //craft_key_schedule_tb
