// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Dec  2 08:13:02 2023
// Host        : xjh-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/xjh/CodeSpace/verilog/CipherSystem/vivado/CipherSystem.sim/sim_1/synth/func/xsim/craft_encrypt_tb_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DONE = "5'b10000" *) (* KEY_SCHEDULE = "5'b00001" *) (* MIX_COLUMNS = "5'b00010" *) 
(* PERMUT = "5'b01000" *) (* START = "5'b00000" *) (* SUB_BOX = "5'b00100" *) 
module craft_encrypt
   (clk,
    rst_n,
    plaintext,
    tweak,
    key,
    done,
    ciphertext);
  input clk;
  input rst_n;
  input [63:0]plaintext;
  input [63:0]tweak;
  input [127:0]key;
  output done;
  output [63:0]ciphertext;

  wire \<const0> ;
  wire [63:0]ciphertext;
  wire clk;
  wire [127:0]key;
  wire [3:0]kr_out;
  wire [3:0]mc_in;
  wire [3:0]mc_out;
  wire [63:0]plaintext;
  wire [3:0]sb_in;
  wire [3:0]sb_out;
  wire [63:0]tweak;

  assign done = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DONT_TOUCH *) 
  craft_key_register craft_key_register_inst
       (.CK0(1'b0),
        .clk(clk),
        .en(1'b0),
        .key(key),
        .out(kr_out),
        .r({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tweak(tweak));
  (* DONT_TOUCH *) 
  craft_mix_columns craft_mix_columns_inst
       (.CM0(1'b0),
        .CM1(1'b0),
        .clk(clk),
        .in(mc_in),
        .out(mc_out));
  (* DONT_TOUCH *) 
  craft_sbox craft_sbox_inst
       (.din(sb_in),
        .dout(sb_out));
  LUT2 #(
    .INIT(4'h6)) 
    craft_sbox_inst_i_1
       (.I0(kr_out[3]),
        .I1(mc_out[3]),
        .O(sb_in[3]));
  LUT2 #(
    .INIT(4'h6)) 
    craft_sbox_inst_i_2
       (.I0(kr_out[2]),
        .I1(mc_out[2]),
        .O(sb_in[2]));
  LUT2 #(
    .INIT(4'h6)) 
    craft_sbox_inst_i_3
       (.I0(kr_out[1]),
        .I1(mc_out[1]),
        .O(sb_in[1]));
  LUT2 #(
    .INIT(4'h6)) 
    craft_sbox_inst_i_4
       (.I0(kr_out[0]),
        .I1(mc_out[0]),
        .O(sb_in[0]));
  (* DONT_TOUCH *) 
  craft_state_register craft_state_register_inst
       (.CS0(1'b1),
        .CS1(1'b0),
        .ce(1'b1),
        .clk(clk),
        .in(sb_out),
        .out(mc_in),
        .plaintext(plaintext),
        .state_registers(ciphertext));
endmodule

module craft_key_register
   (clk,
    en,
    key,
    tweak,
    r,
    CK0,
    out);
  input clk;
  input en;
  input [127:0]key;
  input [63:0]tweak;
  input [7:0]r;
  input CK0;
  output [3:0]out;

  wire CK0;
  wire clk;
  wire en;
  wire [127:0]key;
  wire [59:0]key_registers;
  wire \key_registers[0]_i_1_n_0 ;
  wire \key_registers[0]_i_2_n_0 ;
  wire \key_registers[10]_i_1_n_0 ;
  wire \key_registers[10]_i_2_n_0 ;
  wire \key_registers[11]_i_1_n_0 ;
  wire \key_registers[11]_i_2_n_0 ;
  wire \key_registers[12]_i_1_n_0 ;
  wire \key_registers[12]_i_2_n_0 ;
  wire \key_registers[13]_i_1_n_0 ;
  wire \key_registers[13]_i_2_n_0 ;
  wire \key_registers[14]_i_1_n_0 ;
  wire \key_registers[14]_i_2_n_0 ;
  wire \key_registers[15]_i_1_n_0 ;
  wire \key_registers[15]_i_2_n_0 ;
  wire \key_registers[16]_i_1_n_0 ;
  wire \key_registers[16]_i_2_n_0 ;
  wire \key_registers[17]_i_1_n_0 ;
  wire \key_registers[17]_i_2_n_0 ;
  wire \key_registers[18]_i_1_n_0 ;
  wire \key_registers[18]_i_2_n_0 ;
  wire \key_registers[19]_i_1_n_0 ;
  wire \key_registers[19]_i_2_n_0 ;
  wire \key_registers[1]_i_1_n_0 ;
  wire \key_registers[1]_i_2_n_0 ;
  wire \key_registers[20]_i_1_n_0 ;
  wire \key_registers[20]_i_2_n_0 ;
  wire \key_registers[21]_i_1_n_0 ;
  wire \key_registers[21]_i_2_n_0 ;
  wire \key_registers[22]_i_1_n_0 ;
  wire \key_registers[22]_i_2_n_0 ;
  wire \key_registers[23]_i_1_n_0 ;
  wire \key_registers[23]_i_2_n_0 ;
  wire \key_registers[24]_i_1_n_0 ;
  wire \key_registers[24]_i_2_n_0 ;
  wire \key_registers[25]_i_1_n_0 ;
  wire \key_registers[25]_i_2_n_0 ;
  wire \key_registers[26]_i_1_n_0 ;
  wire \key_registers[26]_i_2_n_0 ;
  wire \key_registers[27]_i_1_n_0 ;
  wire \key_registers[27]_i_2_n_0 ;
  wire \key_registers[28]_i_1_n_0 ;
  wire \key_registers[28]_i_2_n_0 ;
  wire \key_registers[29]_i_1_n_0 ;
  wire \key_registers[29]_i_2_n_0 ;
  wire \key_registers[2]_i_1_n_0 ;
  wire \key_registers[2]_i_2_n_0 ;
  wire \key_registers[30]_i_1_n_0 ;
  wire \key_registers[30]_i_2_n_0 ;
  wire \key_registers[31]_i_1_n_0 ;
  wire \key_registers[31]_i_2_n_0 ;
  wire \key_registers[32]_i_1_n_0 ;
  wire \key_registers[32]_i_2_n_0 ;
  wire \key_registers[33]_i_1_n_0 ;
  wire \key_registers[33]_i_2_n_0 ;
  wire \key_registers[34]_i_1_n_0 ;
  wire \key_registers[34]_i_2_n_0 ;
  wire \key_registers[35]_i_1_n_0 ;
  wire \key_registers[35]_i_2_n_0 ;
  wire \key_registers[36]_i_1_n_0 ;
  wire \key_registers[36]_i_2_n_0 ;
  wire \key_registers[37]_i_1_n_0 ;
  wire \key_registers[37]_i_2_n_0 ;
  wire \key_registers[38]_i_1_n_0 ;
  wire \key_registers[38]_i_2_n_0 ;
  wire \key_registers[39]_i_1_n_0 ;
  wire \key_registers[39]_i_2_n_0 ;
  wire \key_registers[3]_i_1_n_0 ;
  wire \key_registers[3]_i_2_n_0 ;
  wire \key_registers[40]_i_1_n_0 ;
  wire \key_registers[40]_i_2_n_0 ;
  wire \key_registers[41]_i_1_n_0 ;
  wire \key_registers[41]_i_2_n_0 ;
  wire \key_registers[42]_i_1_n_0 ;
  wire \key_registers[42]_i_2_n_0 ;
  wire \key_registers[43]_i_1_n_0 ;
  wire \key_registers[43]_i_2_n_0 ;
  wire \key_registers[44]_i_1_n_0 ;
  wire \key_registers[44]_i_2_n_0 ;
  wire \key_registers[45]_i_1_n_0 ;
  wire \key_registers[45]_i_2_n_0 ;
  wire \key_registers[46]_i_1_n_0 ;
  wire \key_registers[46]_i_2_n_0 ;
  wire \key_registers[46]_i_3_n_0 ;
  wire \key_registers[46]_i_4_n_0 ;
  wire \key_registers[47]_i_1_n_0 ;
  wire \key_registers[47]_i_2_n_0 ;
  wire \key_registers[48]_i_1_n_0 ;
  wire \key_registers[48]_i_2_n_0 ;
  wire \key_registers[49]_i_1_n_0 ;
  wire \key_registers[49]_i_2_n_0 ;
  wire \key_registers[4]_i_1_n_0 ;
  wire \key_registers[4]_i_2_n_0 ;
  wire \key_registers[50]_i_1_n_0 ;
  wire \key_registers[50]_i_2_n_0 ;
  wire \key_registers[51]_i_1_n_0 ;
  wire \key_registers[51]_i_2_n_0 ;
  wire \key_registers[52]_i_1_n_0 ;
  wire \key_registers[52]_i_2_n_0 ;
  wire \key_registers[53]_i_1_n_0 ;
  wire \key_registers[53]_i_2_n_0 ;
  wire \key_registers[54]_i_1_n_0 ;
  wire \key_registers[54]_i_2_n_0 ;
  wire \key_registers[55]_i_1_n_0 ;
  wire \key_registers[55]_i_2_n_0 ;
  wire \key_registers[56]_i_1_n_0 ;
  wire \key_registers[56]_i_2_n_0 ;
  wire \key_registers[57]_i_1_n_0 ;
  wire \key_registers[57]_i_2_n_0 ;
  wire \key_registers[58]_i_1_n_0 ;
  wire \key_registers[58]_i_2_n_0 ;
  wire \key_registers[59]_i_1_n_0 ;
  wire \key_registers[59]_i_2_n_0 ;
  wire \key_registers[5]_i_1_n_0 ;
  wire \key_registers[5]_i_2_n_0 ;
  wire \key_registers[60]_i_1_n_0 ;
  wire \key_registers[60]_i_2_n_0 ;
  wire \key_registers[61]_i_1_n_0 ;
  wire \key_registers[61]_i_2_n_0 ;
  wire \key_registers[62]_i_1_n_0 ;
  wire \key_registers[62]_i_2_n_0 ;
  wire \key_registers[63]_i_1_n_0 ;
  wire \key_registers[63]_i_2_n_0 ;
  wire \key_registers[6]_i_1_n_0 ;
  wire \key_registers[6]_i_2_n_0 ;
  wire \key_registers[7]_i_1_n_0 ;
  wire \key_registers[7]_i_2_n_0 ;
  wire \key_registers[8]_i_1_n_0 ;
  wire \key_registers[8]_i_2_n_0 ;
  wire \key_registers[9]_i_1_n_0 ;
  wire \key_registers[9]_i_2_n_0 ;
  wire [3:0]out;
  wire [7:0]r;
  wire [63:0]tweak;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[0]_i_1 
       (.I0(\key_registers[0]_i_2_n_0 ),
        .I1(CK0),
        .I2(out[0]),
        .O(\key_registers[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[0]_i_2 
       (.I0(tweak[0]),
        .I1(r[1]),
        .I2(tweak[8]),
        .I3(key[0]),
        .I4(r[0]),
        .I5(key[64]),
        .O(\key_registers[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[10]_i_1 
       (.I0(\key_registers[10]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[54]),
        .O(\key_registers[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[10]_i_2 
       (.I0(tweak[10]),
        .I1(r[1]),
        .I2(tweak[62]),
        .I3(key[10]),
        .I4(r[0]),
        .I5(key[74]),
        .O(\key_registers[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[11]_i_1 
       (.I0(\key_registers[11]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[55]),
        .O(\key_registers[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[11]_i_2 
       (.I0(tweak[11]),
        .I1(r[1]),
        .I2(tweak[63]),
        .I3(key[11]),
        .I4(r[0]),
        .I5(key[75]),
        .O(\key_registers[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[12]_i_1 
       (.I0(\key_registers[12]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[56]),
        .O(\key_registers[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[12]_i_2 
       (.I0(tweak[12]),
        .I1(r[1]),
        .I2(tweak[36]),
        .I3(key[12]),
        .I4(r[0]),
        .I5(key[76]),
        .O(\key_registers[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[13]_i_1 
       (.I0(\key_registers[13]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[57]),
        .O(\key_registers[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[13]_i_2 
       (.I0(tweak[13]),
        .I1(r[1]),
        .I2(tweak[37]),
        .I3(key[13]),
        .I4(r[0]),
        .I5(key[77]),
        .O(\key_registers[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[14]_i_1 
       (.I0(\key_registers[14]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[58]),
        .O(\key_registers[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[14]_i_2 
       (.I0(tweak[14]),
        .I1(r[1]),
        .I2(tweak[38]),
        .I3(key[14]),
        .I4(r[0]),
        .I5(key[78]),
        .O(\key_registers[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[15]_i_1 
       (.I0(\key_registers[15]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[59]),
        .O(\key_registers[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[15]_i_2 
       (.I0(tweak[15]),
        .I1(r[1]),
        .I2(tweak[39]),
        .I3(key[15]),
        .I4(r[0]),
        .I5(key[79]),
        .O(\key_registers[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[16]_i_1 
       (.I0(\key_registers[16]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[0]),
        .O(\key_registers[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[16]_i_2 
       (.I0(tweak[16]),
        .I1(r[1]),
        .I2(tweak[44]),
        .I3(key[16]),
        .I4(r[0]),
        .I5(key[80]),
        .O(\key_registers[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[17]_i_1 
       (.I0(\key_registers[17]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[1]),
        .O(\key_registers[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[17]_i_2 
       (.I0(tweak[17]),
        .I1(r[1]),
        .I2(tweak[45]),
        .I3(key[17]),
        .I4(r[0]),
        .I5(key[81]),
        .O(\key_registers[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[18]_i_1 
       (.I0(\key_registers[18]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[2]),
        .O(\key_registers[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[18]_i_2 
       (.I0(tweak[18]),
        .I1(r[1]),
        .I2(tweak[46]),
        .I3(key[18]),
        .I4(r[0]),
        .I5(key[82]),
        .O(\key_registers[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[19]_i_1 
       (.I0(\key_registers[19]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[3]),
        .O(\key_registers[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[19]_i_2 
       (.I0(tweak[19]),
        .I1(r[1]),
        .I2(tweak[47]),
        .I3(key[19]),
        .I4(r[0]),
        .I5(key[83]),
        .O(\key_registers[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[1]_i_1 
       (.I0(\key_registers[1]_i_2_n_0 ),
        .I1(CK0),
        .I2(out[1]),
        .O(\key_registers[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[1]_i_2 
       (.I0(tweak[1]),
        .I1(r[1]),
        .I2(tweak[9]),
        .I3(key[1]),
        .I4(r[0]),
        .I5(key[65]),
        .O(\key_registers[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[20]_i_1 
       (.I0(\key_registers[20]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[4]),
        .O(\key_registers[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[20]_i_2 
       (.I0(tweak[20]),
        .I1(r[1]),
        .I2(tweak[32]),
        .I3(key[20]),
        .I4(r[0]),
        .I5(key[84]),
        .O(\key_registers[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[21]_i_1 
       (.I0(\key_registers[21]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[5]),
        .O(\key_registers[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[21]_i_2 
       (.I0(tweak[21]),
        .I1(r[1]),
        .I2(tweak[33]),
        .I3(key[21]),
        .I4(r[0]),
        .I5(key[85]),
        .O(\key_registers[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[22]_i_1 
       (.I0(\key_registers[22]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[6]),
        .O(\key_registers[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[22]_i_2 
       (.I0(tweak[22]),
        .I1(r[1]),
        .I2(tweak[34]),
        .I3(key[22]),
        .I4(r[0]),
        .I5(key[86]),
        .O(\key_registers[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[23]_i_1 
       (.I0(\key_registers[23]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[7]),
        .O(\key_registers[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[23]_i_2 
       (.I0(tweak[23]),
        .I1(r[1]),
        .I2(tweak[35]),
        .I3(key[23]),
        .I4(r[0]),
        .I5(key[87]),
        .O(\key_registers[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[24]_i_1 
       (.I0(\key_registers[24]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[8]),
        .O(\key_registers[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[24]_i_2 
       (.I0(tweak[24]),
        .I1(r[1]),
        .I2(tweak[48]),
        .I3(key[24]),
        .I4(r[0]),
        .I5(key[88]),
        .O(\key_registers[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[25]_i_1 
       (.I0(\key_registers[25]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[9]),
        .O(\key_registers[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[25]_i_2 
       (.I0(tweak[25]),
        .I1(r[1]),
        .I2(tweak[49]),
        .I3(key[25]),
        .I4(r[0]),
        .I5(key[89]),
        .O(\key_registers[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[26]_i_1 
       (.I0(\key_registers[26]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[10]),
        .O(\key_registers[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[26]_i_2 
       (.I0(tweak[26]),
        .I1(r[1]),
        .I2(tweak[50]),
        .I3(key[26]),
        .I4(r[0]),
        .I5(key[90]),
        .O(\key_registers[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[27]_i_1 
       (.I0(\key_registers[27]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[11]),
        .O(\key_registers[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[27]_i_2 
       (.I0(tweak[27]),
        .I1(r[1]),
        .I2(tweak[51]),
        .I3(key[27]),
        .I4(r[0]),
        .I5(key[91]),
        .O(\key_registers[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[28]_i_1 
       (.I0(\key_registers[28]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[12]),
        .O(\key_registers[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[28]_i_2 
       (.I0(tweak[28]),
        .I1(r[1]),
        .I2(tweak[16]),
        .I3(key[28]),
        .I4(r[0]),
        .I5(key[92]),
        .O(\key_registers[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[29]_i_1 
       (.I0(\key_registers[29]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[13]),
        .O(\key_registers[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[29]_i_2 
       (.I0(tweak[29]),
        .I1(r[1]),
        .I2(tweak[17]),
        .I3(key[29]),
        .I4(r[0]),
        .I5(key[93]),
        .O(\key_registers[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[2]_i_1 
       (.I0(\key_registers[2]_i_2_n_0 ),
        .I1(CK0),
        .I2(out[2]),
        .O(\key_registers[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[2]_i_2 
       (.I0(tweak[2]),
        .I1(r[1]),
        .I2(tweak[10]),
        .I3(key[2]),
        .I4(r[0]),
        .I5(key[66]),
        .O(\key_registers[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[30]_i_1 
       (.I0(\key_registers[30]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[14]),
        .O(\key_registers[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[30]_i_2 
       (.I0(tweak[30]),
        .I1(r[1]),
        .I2(tweak[18]),
        .I3(key[30]),
        .I4(r[0]),
        .I5(key[94]),
        .O(\key_registers[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[31]_i_1 
       (.I0(\key_registers[31]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[15]),
        .O(\key_registers[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[31]_i_2 
       (.I0(tweak[31]),
        .I1(r[1]),
        .I2(tweak[19]),
        .I3(key[31]),
        .I4(r[0]),
        .I5(key[95]),
        .O(\key_registers[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[32]_i_1 
       (.I0(\key_registers[32]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[16]),
        .O(\key_registers[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[32]_i_2 
       (.I0(tweak[32]),
        .I1(r[1]),
        .I2(tweak[52]),
        .I3(key[32]),
        .I4(r[0]),
        .I5(key[96]),
        .O(\key_registers[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[33]_i_1 
       (.I0(\key_registers[33]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[17]),
        .O(\key_registers[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[33]_i_2 
       (.I0(tweak[33]),
        .I1(r[1]),
        .I2(tweak[53]),
        .I3(key[33]),
        .I4(r[0]),
        .I5(key[97]),
        .O(\key_registers[33]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[34]_i_1 
       (.I0(\key_registers[34]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[18]),
        .O(\key_registers[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[34]_i_2 
       (.I0(tweak[34]),
        .I1(r[1]),
        .I2(tweak[54]),
        .I3(key[34]),
        .I4(r[0]),
        .I5(key[98]),
        .O(\key_registers[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[35]_i_1 
       (.I0(\key_registers[35]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[19]),
        .O(\key_registers[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[35]_i_2 
       (.I0(tweak[35]),
        .I1(r[1]),
        .I2(tweak[55]),
        .I3(key[35]),
        .I4(r[0]),
        .I5(key[99]),
        .O(\key_registers[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[36]_i_1 
       (.I0(\key_registers[36]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[20]),
        .O(\key_registers[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[36]_i_2 
       (.I0(tweak[36]),
        .I1(r[1]),
        .I2(tweak[24]),
        .I3(key[36]),
        .I4(r[0]),
        .I5(key[100]),
        .O(\key_registers[36]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[37]_i_1 
       (.I0(\key_registers[37]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[21]),
        .O(\key_registers[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[37]_i_2 
       (.I0(tweak[37]),
        .I1(r[1]),
        .I2(tweak[25]),
        .I3(key[37]),
        .I4(r[0]),
        .I5(key[101]),
        .O(\key_registers[37]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[38]_i_1 
       (.I0(\key_registers[38]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[22]),
        .O(\key_registers[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[38]_i_2 
       (.I0(tweak[38]),
        .I1(r[1]),
        .I2(tweak[26]),
        .I3(key[38]),
        .I4(r[0]),
        .I5(key[102]),
        .O(\key_registers[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[39]_i_1 
       (.I0(\key_registers[39]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[23]),
        .O(\key_registers[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[39]_i_2 
       (.I0(tweak[39]),
        .I1(r[1]),
        .I2(tweak[27]),
        .I3(key[39]),
        .I4(r[0]),
        .I5(key[103]),
        .O(\key_registers[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[3]_i_1 
       (.I0(\key_registers[3]_i_2_n_0 ),
        .I1(CK0),
        .I2(out[3]),
        .O(\key_registers[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[3]_i_2 
       (.I0(tweak[3]),
        .I1(r[1]),
        .I2(tweak[11]),
        .I3(key[3]),
        .I4(r[0]),
        .I5(key[67]),
        .O(\key_registers[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0EF1FFFF0EF10000)) 
    \key_registers[40]_i_1 
       (.I0(\key_registers[46]_i_2_n_0 ),
        .I1(\key_registers[46]_i_3_n_0 ),
        .I2(1'b0),
        .I3(\key_registers[40]_i_2_n_0 ),
        .I4(CK0),
        .I5(key_registers[24]),
        .O(\key_registers[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[40]_i_2 
       (.I0(tweak[40]),
        .I1(r[1]),
        .I2(tweak[28]),
        .I3(key[40]),
        .I4(r[0]),
        .I5(key[104]),
        .O(\key_registers[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \key_registers[41]_i_1 
       (.I0(\key_registers[46]_i_2_n_0 ),
        .I1(\key_registers[46]_i_3_n_0 ),
        .I2(1'b0),
        .I3(\key_registers[41]_i_2_n_0 ),
        .I4(CK0),
        .I5(key_registers[25]),
        .O(\key_registers[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[41]_i_2 
       (.I0(tweak[41]),
        .I1(r[1]),
        .I2(tweak[29]),
        .I3(key[41]),
        .I4(r[0]),
        .I5(key[105]),
        .O(\key_registers[41]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \key_registers[42]_i_1 
       (.I0(1'b0),
        .I1(\key_registers[42]_i_2_n_0 ),
        .I2(CK0),
        .I3(key_registers[26]),
        .O(\key_registers[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[42]_i_2 
       (.I0(tweak[42]),
        .I1(r[1]),
        .I2(tweak[30]),
        .I3(key[42]),
        .I4(r[0]),
        .I5(key[106]),
        .O(\key_registers[42]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[43]_i_1 
       (.I0(\key_registers[43]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[27]),
        .O(\key_registers[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[43]_i_2 
       (.I0(tweak[43]),
        .I1(r[1]),
        .I2(tweak[31]),
        .I3(key[43]),
        .I4(r[0]),
        .I5(key[107]),
        .O(\key_registers[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0EF1FFFF0EF10000)) 
    \key_registers[44]_i_1 
       (.I0(\key_registers[46]_i_2_n_0 ),
        .I1(\key_registers[46]_i_3_n_0 ),
        .I2(1'b0),
        .I3(\key_registers[44]_i_2_n_0 ),
        .I4(CK0),
        .I5(key_registers[28]),
        .O(\key_registers[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[44]_i_2 
       (.I0(tweak[44]),
        .I1(r[1]),
        .I2(tweak[4]),
        .I3(key[44]),
        .I4(r[0]),
        .I5(key[108]),
        .O(\key_registers[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \key_registers[45]_i_1 
       (.I0(\key_registers[46]_i_2_n_0 ),
        .I1(\key_registers[46]_i_3_n_0 ),
        .I2(1'b0),
        .I3(\key_registers[45]_i_2_n_0 ),
        .I4(CK0),
        .I5(key_registers[29]),
        .O(\key_registers[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[45]_i_2 
       (.I0(tweak[45]),
        .I1(r[1]),
        .I2(tweak[5]),
        .I3(key[45]),
        .I4(r[0]),
        .I5(key[109]),
        .O(\key_registers[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \key_registers[46]_i_1 
       (.I0(\key_registers[46]_i_2_n_0 ),
        .I1(\key_registers[46]_i_3_n_0 ),
        .I2(1'b0),
        .I3(\key_registers[46]_i_4_n_0 ),
        .I4(CK0),
        .I5(key_registers[30]),
        .O(\key_registers[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \key_registers[46]_i_2 
       (.I0(r[7]),
        .I1(r[6]),
        .I2(r[4]),
        .I3(r[5]),
        .O(\key_registers[46]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \key_registers[46]_i_3 
       (.I0(r[2]),
        .I1(r[3]),
        .I2(r[0]),
        .I3(r[1]),
        .O(\key_registers[46]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[46]_i_4 
       (.I0(tweak[46]),
        .I1(r[1]),
        .I2(tweak[6]),
        .I3(key[46]),
        .I4(r[0]),
        .I5(key[110]),
        .O(\key_registers[46]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \key_registers[47]_i_1 
       (.I0(1'b0),
        .I1(\key_registers[47]_i_2_n_0 ),
        .I2(CK0),
        .I3(key_registers[31]),
        .O(\key_registers[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[47]_i_2 
       (.I0(tweak[47]),
        .I1(r[1]),
        .I2(tweak[7]),
        .I3(key[47]),
        .I4(r[0]),
        .I5(key[111]),
        .O(\key_registers[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[48]_i_1 
       (.I0(\key_registers[48]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[32]),
        .O(\key_registers[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[48]_i_2 
       (.I0(tweak[48]),
        .I1(r[1]),
        .I2(tweak[40]),
        .I3(key[48]),
        .I4(r[0]),
        .I5(key[112]),
        .O(\key_registers[48]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[49]_i_1 
       (.I0(\key_registers[49]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[33]),
        .O(\key_registers[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[49]_i_2 
       (.I0(tweak[49]),
        .I1(r[1]),
        .I2(tweak[41]),
        .I3(key[49]),
        .I4(r[0]),
        .I5(key[113]),
        .O(\key_registers[49]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[4]_i_1 
       (.I0(\key_registers[4]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[48]),
        .O(\key_registers[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[4]_i_2 
       (.I0(tweak[4]),
        .I1(r[1]),
        .I2(tweak[56]),
        .I3(key[4]),
        .I4(r[0]),
        .I5(key[68]),
        .O(\key_registers[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[50]_i_1 
       (.I0(\key_registers[50]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[34]),
        .O(\key_registers[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[50]_i_2 
       (.I0(tweak[50]),
        .I1(r[1]),
        .I2(tweak[42]),
        .I3(key[50]),
        .I4(r[0]),
        .I5(key[114]),
        .O(\key_registers[50]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[51]_i_1 
       (.I0(\key_registers[51]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[35]),
        .O(\key_registers[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[51]_i_2 
       (.I0(tweak[51]),
        .I1(r[1]),
        .I2(tweak[43]),
        .I3(key[51]),
        .I4(r[0]),
        .I5(key[115]),
        .O(\key_registers[51]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[52]_i_1 
       (.I0(\key_registers[52]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[36]),
        .O(\key_registers[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[52]_i_2 
       (.I0(tweak[52]),
        .I1(r[1]),
        .I2(tweak[0]),
        .I3(key[52]),
        .I4(r[0]),
        .I5(key[116]),
        .O(\key_registers[52]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[53]_i_1 
       (.I0(\key_registers[53]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[37]),
        .O(\key_registers[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[53]_i_2 
       (.I0(tweak[53]),
        .I1(r[1]),
        .I2(tweak[1]),
        .I3(key[53]),
        .I4(r[0]),
        .I5(key[117]),
        .O(\key_registers[53]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[54]_i_1 
       (.I0(\key_registers[54]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[38]),
        .O(\key_registers[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[54]_i_2 
       (.I0(tweak[54]),
        .I1(r[1]),
        .I2(tweak[2]),
        .I3(key[54]),
        .I4(r[0]),
        .I5(key[118]),
        .O(\key_registers[54]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[55]_i_1 
       (.I0(\key_registers[55]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[39]),
        .O(\key_registers[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[55]_i_2 
       (.I0(tweak[55]),
        .I1(r[1]),
        .I2(tweak[3]),
        .I3(key[55]),
        .I4(r[0]),
        .I5(key[119]),
        .O(\key_registers[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[56]_i_1 
       (.I0(\key_registers[56]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[40]),
        .O(\key_registers[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[56]_i_2 
       (.I0(tweak[56]),
        .I1(r[1]),
        .I2(tweak[20]),
        .I3(key[56]),
        .I4(r[0]),
        .I5(key[120]),
        .O(\key_registers[56]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[57]_i_1 
       (.I0(\key_registers[57]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[41]),
        .O(\key_registers[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[57]_i_2 
       (.I0(tweak[57]),
        .I1(r[1]),
        .I2(tweak[21]),
        .I3(key[57]),
        .I4(r[0]),
        .I5(key[121]),
        .O(\key_registers[57]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[58]_i_1 
       (.I0(\key_registers[58]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[42]),
        .O(\key_registers[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[58]_i_2 
       (.I0(tweak[58]),
        .I1(r[1]),
        .I2(tweak[22]),
        .I3(key[58]),
        .I4(r[0]),
        .I5(key[122]),
        .O(\key_registers[58]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[59]_i_1 
       (.I0(\key_registers[59]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[43]),
        .O(\key_registers[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[59]_i_2 
       (.I0(tweak[59]),
        .I1(r[1]),
        .I2(tweak[23]),
        .I3(key[59]),
        .I4(r[0]),
        .I5(key[123]),
        .O(\key_registers[59]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[5]_i_1 
       (.I0(\key_registers[5]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[49]),
        .O(\key_registers[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[5]_i_2 
       (.I0(tweak[5]),
        .I1(r[1]),
        .I2(tweak[57]),
        .I3(key[5]),
        .I4(r[0]),
        .I5(key[69]),
        .O(\key_registers[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[60]_i_1 
       (.I0(\key_registers[60]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[44]),
        .O(\key_registers[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[60]_i_2 
       (.I0(tweak[60]),
        .I1(r[1]),
        .I2(tweak[12]),
        .I3(key[60]),
        .I4(r[0]),
        .I5(key[124]),
        .O(\key_registers[60]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[61]_i_1 
       (.I0(\key_registers[61]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[45]),
        .O(\key_registers[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[61]_i_2 
       (.I0(tweak[61]),
        .I1(r[1]),
        .I2(tweak[13]),
        .I3(key[61]),
        .I4(r[0]),
        .I5(key[125]),
        .O(\key_registers[61]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[62]_i_1 
       (.I0(\key_registers[62]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[46]),
        .O(\key_registers[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[62]_i_2 
       (.I0(tweak[62]),
        .I1(r[1]),
        .I2(tweak[14]),
        .I3(key[62]),
        .I4(r[0]),
        .I5(key[126]),
        .O(\key_registers[62]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[63]_i_1 
       (.I0(\key_registers[63]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[47]),
        .O(\key_registers[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[63]_i_2 
       (.I0(tweak[63]),
        .I1(r[1]),
        .I2(tweak[15]),
        .I3(key[63]),
        .I4(r[0]),
        .I5(key[127]),
        .O(\key_registers[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[6]_i_1 
       (.I0(\key_registers[6]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[50]),
        .O(\key_registers[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[6]_i_2 
       (.I0(tweak[6]),
        .I1(r[1]),
        .I2(tweak[58]),
        .I3(key[6]),
        .I4(r[0]),
        .I5(key[70]),
        .O(\key_registers[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[7]_i_1 
       (.I0(\key_registers[7]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[51]),
        .O(\key_registers[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[7]_i_2 
       (.I0(tweak[7]),
        .I1(r[1]),
        .I2(tweak[59]),
        .I3(key[7]),
        .I4(r[0]),
        .I5(key[71]),
        .O(\key_registers[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[8]_i_1 
       (.I0(\key_registers[8]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[52]),
        .O(\key_registers[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[8]_i_2 
       (.I0(tweak[8]),
        .I1(r[1]),
        .I2(tweak[60]),
        .I3(key[8]),
        .I4(r[0]),
        .I5(key[72]),
        .O(\key_registers[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \key_registers[9]_i_1 
       (.I0(\key_registers[9]_i_2_n_0 ),
        .I1(CK0),
        .I2(key_registers[53]),
        .O(\key_registers[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1DE21D1D1DE2E2E2)) 
    \key_registers[9]_i_2 
       (.I0(tweak[9]),
        .I1(r[1]),
        .I2(tweak[61]),
        .I3(key[9]),
        .I4(r[0]),
        .I5(key[73]),
        .O(\key_registers[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[0] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[0]_i_1_n_0 ),
        .Q(key_registers[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[10] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[10]_i_1_n_0 ),
        .Q(key_registers[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[11] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[11]_i_1_n_0 ),
        .Q(key_registers[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[12] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[12]_i_1_n_0 ),
        .Q(key_registers[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[13] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[13]_i_1_n_0 ),
        .Q(key_registers[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[14] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[14]_i_1_n_0 ),
        .Q(key_registers[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[15] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[15]_i_1_n_0 ),
        .Q(key_registers[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[16] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[16]_i_1_n_0 ),
        .Q(key_registers[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[17] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[17]_i_1_n_0 ),
        .Q(key_registers[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[18] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[18]_i_1_n_0 ),
        .Q(key_registers[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[19] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[19]_i_1_n_0 ),
        .Q(key_registers[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[1] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[1]_i_1_n_0 ),
        .Q(key_registers[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[20] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[20]_i_1_n_0 ),
        .Q(key_registers[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[21] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[21]_i_1_n_0 ),
        .Q(key_registers[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[22] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[22]_i_1_n_0 ),
        .Q(key_registers[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[23] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[23]_i_1_n_0 ),
        .Q(key_registers[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[24] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[24]_i_1_n_0 ),
        .Q(key_registers[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[25] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[25]_i_1_n_0 ),
        .Q(key_registers[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[26] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[26]_i_1_n_0 ),
        .Q(key_registers[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[27] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[27]_i_1_n_0 ),
        .Q(key_registers[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[28] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[28]_i_1_n_0 ),
        .Q(key_registers[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[29] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[29]_i_1_n_0 ),
        .Q(key_registers[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[2] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[2]_i_1_n_0 ),
        .Q(key_registers[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[30] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[30]_i_1_n_0 ),
        .Q(key_registers[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[31] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[31]_i_1_n_0 ),
        .Q(key_registers[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[32] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[32]_i_1_n_0 ),
        .Q(key_registers[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[33] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[33]_i_1_n_0 ),
        .Q(key_registers[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[34] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[34]_i_1_n_0 ),
        .Q(key_registers[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[35] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[35]_i_1_n_0 ),
        .Q(key_registers[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[36] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[36]_i_1_n_0 ),
        .Q(key_registers[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[37] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[37]_i_1_n_0 ),
        .Q(key_registers[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[38] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[38]_i_1_n_0 ),
        .Q(key_registers[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[39] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[39]_i_1_n_0 ),
        .Q(key_registers[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[3] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[3]_i_1_n_0 ),
        .Q(key_registers[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[40] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[40]_i_1_n_0 ),
        .Q(key_registers[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[41] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[41]_i_1_n_0 ),
        .Q(key_registers[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[42] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[42]_i_1_n_0 ),
        .Q(key_registers[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[43] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[43]_i_1_n_0 ),
        .Q(key_registers[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[44] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[44]_i_1_n_0 ),
        .Q(key_registers[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[45] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[45]_i_1_n_0 ),
        .Q(key_registers[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[46] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[46]_i_1_n_0 ),
        .Q(key_registers[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[47] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[47]_i_1_n_0 ),
        .Q(key_registers[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[48] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[48]_i_1_n_0 ),
        .Q(key_registers[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[49] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[49]_i_1_n_0 ),
        .Q(key_registers[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[4] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[4]_i_1_n_0 ),
        .Q(key_registers[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[50] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[50]_i_1_n_0 ),
        .Q(key_registers[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[51] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[51]_i_1_n_0 ),
        .Q(key_registers[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[52] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[52]_i_1_n_0 ),
        .Q(key_registers[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[53] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[53]_i_1_n_0 ),
        .Q(key_registers[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[54] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[54]_i_1_n_0 ),
        .Q(key_registers[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[55] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[55]_i_1_n_0 ),
        .Q(key_registers[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[56] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[56]_i_1_n_0 ),
        .Q(key_registers[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[57] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[57]_i_1_n_0 ),
        .Q(key_registers[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[58] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[58]_i_1_n_0 ),
        .Q(key_registers[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[59] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[59]_i_1_n_0 ),
        .Q(key_registers[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[5] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[5]_i_1_n_0 ),
        .Q(key_registers[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[60] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[60]_i_1_n_0 ),
        .Q(out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[61] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[61]_i_1_n_0 ),
        .Q(out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[62] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[62]_i_1_n_0 ),
        .Q(out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[63] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[63]_i_1_n_0 ),
        .Q(out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[6] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[6]_i_1_n_0 ),
        .Q(key_registers[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[7] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[7]_i_1_n_0 ),
        .Q(key_registers[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[8] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[8]_i_1_n_0 ),
        .Q(key_registers[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_registers_reg[9] 
       (.C(clk),
        .CE(en),
        .D(\key_registers[9]_i_1_n_0 ),
        .Q(key_registers[9]),
        .R(1'b0));
endmodule

module craft_mix_columns
   (clk,
    in,
    CM0,
    CM1,
    out);
  input clk;
  input [3:0]in;
  input CM0;
  input CM1;
  output [3:0]out;

  wire CM0;
  wire CM1;
  wire clk;
  wire [3:0]in;
  wire [3:0]out;
  wire [3:0]r0;
  wire [3:0]r1;
  wire [3:0]r2;
  wire [3:0]t1;
  wire [3:0]t2;

  FDRE #(
    .INIT(1'b0)) 
    \r0_reg[0] 
       (.C(clk),
        .CE(CM0),
        .D(in[0]),
        .Q(r0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg[1] 
       (.C(clk),
        .CE(CM0),
        .D(in[1]),
        .Q(r0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg[2] 
       (.C(clk),
        .CE(CM0),
        .D(in[2]),
        .Q(r0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg[3] 
       (.C(clk),
        .CE(CM0),
        .D(in[3]),
        .Q(r0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[0] 
       (.C(clk),
        .CE(CM0),
        .D(r0[0]),
        .Q(r1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[1] 
       (.C(clk),
        .CE(CM0),
        .D(r0[1]),
        .Q(r1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[2] 
       (.C(clk),
        .CE(CM0),
        .D(r0[2]),
        .Q(r1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[3] 
       (.C(clk),
        .CE(CM0),
        .D(r0[3]),
        .Q(r1[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \r2[0]_i_1 
       (.I0(r1[0]),
        .I1(CM0),
        .I2(r2[0]),
        .I3(r0[0]),
        .O(t1[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \r2[1]_i_1 
       (.I0(r1[1]),
        .I1(CM0),
        .I2(r2[1]),
        .I3(r0[1]),
        .O(t1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \r2[2]_i_1 
       (.I0(r1[2]),
        .I1(CM0),
        .I2(r2[2]),
        .I3(r0[2]),
        .O(t1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \r2[3]_i_1 
       (.I0(r1[3]),
        .I1(CM0),
        .I2(r2[3]),
        .I3(r0[3]),
        .O(t1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[0] 
       (.C(clk),
        .CE(CM1),
        .D(t1[0]),
        .Q(r2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[1] 
       (.C(clk),
        .CE(CM1),
        .D(t1[1]),
        .Q(r2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[2] 
       (.C(clk),
        .CE(CM1),
        .D(t1[2]),
        .Q(r2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[3] 
       (.C(clk),
        .CE(CM1),
        .D(t1[3]),
        .Q(r2[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB88B8BB8)) 
    \r3[0]_i_1 
       (.I0(r2[0]),
        .I1(CM0),
        .I2(r1[0]),
        .I3(r0[0]),
        .I4(out[0]),
        .O(t2[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB88B8BB8)) 
    \r3[1]_i_1 
       (.I0(r2[1]),
        .I1(CM0),
        .I2(r1[1]),
        .I3(r0[1]),
        .I4(out[1]),
        .O(t2[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB88B8BB8)) 
    \r3[2]_i_1 
       (.I0(r2[2]),
        .I1(CM0),
        .I2(r1[2]),
        .I3(r0[2]),
        .I4(out[2]),
        .O(t2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB88B8BB8)) 
    \r3[3]_i_1 
       (.I0(r2[3]),
        .I1(CM0),
        .I2(r1[3]),
        .I3(r0[3]),
        .I4(out[3]),
        .O(t2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[0] 
       (.C(clk),
        .CE(CM1),
        .D(t2[0]),
        .Q(out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[1] 
       (.C(clk),
        .CE(CM1),
        .D(t2[1]),
        .Q(out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[2] 
       (.C(clk),
        .CE(CM1),
        .D(t2[2]),
        .Q(out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[3] 
       (.C(clk),
        .CE(CM1),
        .D(t2[3]),
        .Q(out[3]),
        .R(1'b0));
endmodule

module craft_sbox
   (din,
    dout);
  input [3:0]din;
  output [3:0]dout;

  wire [3:0]din;
  wire [3:0]dout;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h5F48)) 
    \dout[0]_INST_0 
       (.I0(din[3]),
        .I1(din[0]),
        .I2(din[2]),
        .I3(din[1]),
        .O(dout[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \dout[1]_INST_0 
       (.I0(din[3]),
        .I1(din[2]),
        .I2(din[0]),
        .O(dout[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hC8D5)) 
    \dout[2]_INST_0 
       (.I0(din[3]),
        .I1(din[1]),
        .I2(din[2]),
        .I3(din[0]),
        .O(dout[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0737)) 
    \dout[3]_INST_0 
       (.I0(din[2]),
        .I1(din[3]),
        .I2(din[1]),
        .I3(din[0]),
        .O(dout[3]));
endmodule

module craft_state_register
   (clk,
    ce,
    plaintext,
    in,
    CS0,
    CS1,
    out,
    state_registers);
  input clk;
  input ce;
  input [63:0]plaintext;
  input [3:0]in;
  input CS0;
  input CS1;
  output [3:0]out;
  output [63:0]state_registers;

  wire CS0;
  wire CS1;
  wire ce;
  wire clk;
  wire [3:0]in;
  wire [3:0]out;
  wire [63:0]plaintext;
  wire [59:0]\^state_registers ;
  wire \state_registers[0]_i_1_n_0 ;
  wire \state_registers[10]_i_1_n_0 ;
  wire \state_registers[11]_i_1_n_0 ;
  wire \state_registers[12]_i_1_n_0 ;
  wire \state_registers[13]_i_1_n_0 ;
  wire \state_registers[14]_i_1_n_0 ;
  wire \state_registers[15]_i_1_n_0 ;
  wire \state_registers[16]_i_1_n_0 ;
  wire \state_registers[17]_i_1_n_0 ;
  wire \state_registers[18]_i_1_n_0 ;
  wire \state_registers[19]_i_1_n_0 ;
  wire \state_registers[1]_i_1_n_0 ;
  wire \state_registers[20]_i_1_n_0 ;
  wire \state_registers[21]_i_1_n_0 ;
  wire \state_registers[22]_i_1_n_0 ;
  wire \state_registers[23]_i_1_n_0 ;
  wire \state_registers[24]_i_1_n_0 ;
  wire \state_registers[25]_i_1_n_0 ;
  wire \state_registers[26]_i_1_n_0 ;
  wire \state_registers[27]_i_1_n_0 ;
  wire \state_registers[28]_i_1_n_0 ;
  wire \state_registers[29]_i_1_n_0 ;
  wire \state_registers[2]_i_1_n_0 ;
  wire \state_registers[30]_i_1_n_0 ;
  wire \state_registers[31]_i_1_n_0 ;
  wire \state_registers[32]_i_1_n_0 ;
  wire \state_registers[33]_i_1_n_0 ;
  wire \state_registers[34]_i_1_n_0 ;
  wire \state_registers[35]_i_1_n_0 ;
  wire \state_registers[36]_i_1_n_0 ;
  wire \state_registers[37]_i_1_n_0 ;
  wire \state_registers[38]_i_1_n_0 ;
  wire \state_registers[39]_i_1_n_0 ;
  wire \state_registers[3]_i_1_n_0 ;
  wire \state_registers[40]_i_1_n_0 ;
  wire \state_registers[41]_i_1_n_0 ;
  wire \state_registers[42]_i_1_n_0 ;
  wire \state_registers[43]_i_1_n_0 ;
  wire \state_registers[44]_i_1_n_0 ;
  wire \state_registers[45]_i_1_n_0 ;
  wire \state_registers[46]_i_1_n_0 ;
  wire \state_registers[47]_i_1_n_0 ;
  wire \state_registers[48]_i_1_n_0 ;
  wire \state_registers[49]_i_1_n_0 ;
  wire \state_registers[4]_i_1_n_0 ;
  wire \state_registers[50]_i_1_n_0 ;
  wire \state_registers[51]_i_1_n_0 ;
  wire \state_registers[51]_i_2_n_0 ;
  wire \state_registers[52]_i_1_n_0 ;
  wire \state_registers[53]_i_1_n_0 ;
  wire \state_registers[54]_i_1_n_0 ;
  wire \state_registers[55]_i_1_n_0 ;
  wire \state_registers[56]_i_1_n_0 ;
  wire \state_registers[57]_i_1_n_0 ;
  wire \state_registers[58]_i_1_n_0 ;
  wire \state_registers[59]_i_1_n_0 ;
  wire \state_registers[5]_i_1_n_0 ;
  wire \state_registers[60]_i_1_n_0 ;
  wire \state_registers[61]_i_1_n_0 ;
  wire \state_registers[62]_i_1_n_0 ;
  wire \state_registers[63]_i_1_n_0 ;
  wire \state_registers[63]_i_2_n_0 ;
  wire \state_registers[6]_i_1_n_0 ;
  wire \state_registers[7]_i_1_n_0 ;
  wire \state_registers[8]_i_1_n_0 ;
  wire \state_registers[9]_i_1_n_0 ;

  assign state_registers[63:60] = out;
  assign state_registers[59:0] = \^state_registers [59:0];
  LUT5 #(
    .INIT(32'hFA72D850)) 
    \state_registers[0]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(out[0]),
        .I3(in[0]),
        .I4(plaintext[0]),
        .O(\state_registers[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[10]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [54]),
        .I3(plaintext[10]),
        .O(\state_registers[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[11]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [55]),
        .I3(plaintext[11]),
        .O(\state_registers[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[12]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [56]),
        .I3(plaintext[12]),
        .O(\state_registers[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[13]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [57]),
        .I3(plaintext[13]),
        .O(\state_registers[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[14]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [58]),
        .I3(plaintext[14]),
        .O(\state_registers[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[15]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [59]),
        .I3(plaintext[15]),
        .O(\state_registers[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[16]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [32]),
        .I3(\^state_registers [0]),
        .I4(plaintext[16]),
        .O(\state_registers[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[17]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [33]),
        .I3(\^state_registers [1]),
        .I4(plaintext[17]),
        .O(\state_registers[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[18]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [34]),
        .I3(\^state_registers [2]),
        .I4(plaintext[18]),
        .O(\state_registers[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[19]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [35]),
        .I3(\^state_registers [3]),
        .I4(plaintext[19]),
        .O(\state_registers[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    \state_registers[1]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(out[1]),
        .I3(in[1]),
        .I4(plaintext[1]),
        .O(\state_registers[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[20]_i_1 
       (.I0(\^state_registers [4]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [44]),
        .I4(plaintext[20]),
        .O(\state_registers[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[21]_i_1 
       (.I0(\^state_registers [5]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [45]),
        .I4(plaintext[21]),
        .O(\state_registers[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[22]_i_1 
       (.I0(\^state_registers [6]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [46]),
        .I4(plaintext[22]),
        .O(\state_registers[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[23]_i_1 
       (.I0(\^state_registers [7]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [47]),
        .I4(plaintext[23]),
        .O(\state_registers[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[24]_i_1 
       (.I0(\^state_registers [8]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [40]),
        .I4(plaintext[24]),
        .O(\state_registers[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[25]_i_1 
       (.I0(\^state_registers [9]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [41]),
        .I4(plaintext[25]),
        .O(\state_registers[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[26]_i_1 
       (.I0(\^state_registers [10]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [42]),
        .I4(plaintext[26]),
        .O(\state_registers[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[27]_i_1 
       (.I0(\^state_registers [11]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [43]),
        .I4(plaintext[27]),
        .O(\state_registers[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[28]_i_1 
       (.I0(\^state_registers [12]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [36]),
        .I4(plaintext[28]),
        .O(\state_registers[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[29]_i_1 
       (.I0(\^state_registers [13]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [37]),
        .I4(plaintext[29]),
        .O(\state_registers[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    \state_registers[2]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(out[2]),
        .I3(in[2]),
        .I4(plaintext[2]),
        .O(\state_registers[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[30]_i_1 
       (.I0(\^state_registers [14]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [38]),
        .I4(plaintext[30]),
        .O(\state_registers[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[31]_i_1 
       (.I0(\^state_registers [15]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [39]),
        .I4(plaintext[31]),
        .O(\state_registers[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF2D0)) 
    \state_registers[32]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [16]),
        .I3(plaintext[32]),
        .O(\state_registers[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF2D0)) 
    \state_registers[33]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [17]),
        .I3(plaintext[33]),
        .O(\state_registers[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF2D0)) 
    \state_registers[34]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [18]),
        .I3(plaintext[34]),
        .O(\state_registers[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF2D0)) 
    \state_registers[35]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [19]),
        .I3(plaintext[35]),
        .O(\state_registers[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[36]_i_1 
       (.I0(\^state_registers [20]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [28]),
        .I4(plaintext[36]),
        .O(\state_registers[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[37]_i_1 
       (.I0(\^state_registers [21]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [29]),
        .I4(plaintext[37]),
        .O(\state_registers[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[38]_i_1 
       (.I0(\^state_registers [22]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [30]),
        .I4(plaintext[38]),
        .O(\state_registers[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[39]_i_1 
       (.I0(\^state_registers [23]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [31]),
        .I4(plaintext[39]),
        .O(\state_registers[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    \state_registers[3]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(out[3]),
        .I3(in[3]),
        .I4(plaintext[3]),
        .O(\state_registers[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[40]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [24]),
        .I3(plaintext[40]),
        .O(\state_registers[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[41]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [25]),
        .I3(plaintext[41]),
        .O(\state_registers[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[42]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [26]),
        .I3(plaintext[42]),
        .O(\state_registers[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[43]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [27]),
        .I3(plaintext[43]),
        .O(\state_registers[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[44]_i_1 
       (.I0(\^state_registers [28]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [20]),
        .I4(plaintext[44]),
        .O(\state_registers[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[45]_i_1 
       (.I0(\^state_registers [29]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [21]),
        .I4(plaintext[45]),
        .O(\state_registers[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[46]_i_1 
       (.I0(\^state_registers [30]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [22]),
        .I4(plaintext[46]),
        .O(\state_registers[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[47]_i_1 
       (.I0(\^state_registers [31]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [23]),
        .I4(plaintext[47]),
        .O(\state_registers[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[48]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [4]),
        .I3(\^state_registers [32]),
        .I4(plaintext[48]),
        .O(\state_registers[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[49]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [5]),
        .I3(\^state_registers [33]),
        .I4(plaintext[49]),
        .O(\state_registers[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[4]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [48]),
        .I3(plaintext[4]),
        .O(\state_registers[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[50]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [6]),
        .I3(\^state_registers [34]),
        .I4(plaintext[50]),
        .O(\state_registers[50]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAA)) 
    \state_registers[51]_i_1 
       (.I0(ce),
        .I1(CS1),
        .I2(CS0),
        .O(\state_registers[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB62D940)) 
    \state_registers[51]_i_2 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [7]),
        .I3(\^state_registers [35]),
        .I4(plaintext[51]),
        .O(\state_registers[51]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[52]_i_1 
       (.I0(\^state_registers [36]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [8]),
        .I4(plaintext[52]),
        .O(\state_registers[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[53]_i_1 
       (.I0(\^state_registers [37]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [9]),
        .I4(plaintext[53]),
        .O(\state_registers[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[54]_i_1 
       (.I0(\^state_registers [38]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [10]),
        .I4(plaintext[54]),
        .O(\state_registers[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[55]_i_1 
       (.I0(\^state_registers [39]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [11]),
        .I4(plaintext[55]),
        .O(\state_registers[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[56]_i_1 
       (.I0(\^state_registers [40]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [12]),
        .I4(plaintext[56]),
        .O(\state_registers[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[57]_i_1 
       (.I0(\^state_registers [41]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [13]),
        .I4(plaintext[57]),
        .O(\state_registers[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[58]_i_1 
       (.I0(\^state_registers [42]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [14]),
        .I4(plaintext[58]),
        .O(\state_registers[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[59]_i_1 
       (.I0(\^state_registers [43]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [15]),
        .I4(plaintext[59]),
        .O(\state_registers[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[5]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [49]),
        .I3(plaintext[5]),
        .O(\state_registers[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[60]_i_1 
       (.I0(\^state_registers [44]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [0]),
        .I4(plaintext[60]),
        .O(\state_registers[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[61]_i_1 
       (.I0(\^state_registers [45]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [1]),
        .I4(plaintext[61]),
        .O(\state_registers[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[62]_i_1 
       (.I0(\^state_registers [46]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [2]),
        .I4(plaintext[62]),
        .O(\state_registers[62]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \state_registers[63]_i_1 
       (.I0(ce),
        .I1(CS0),
        .I2(CS1),
        .O(\state_registers[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \state_registers[63]_i_2 
       (.I0(\^state_registers [47]),
        .I1(CS0),
        .I2(CS1),
        .I3(\^state_registers [3]),
        .I4(plaintext[63]),
        .O(\state_registers[63]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[6]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [50]),
        .I3(plaintext[6]),
        .O(\state_registers[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[7]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [51]),
        .I3(plaintext[7]),
        .O(\state_registers[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[8]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [52]),
        .I3(plaintext[8]),
        .O(\state_registers[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFA50)) 
    \state_registers[9]_i_1 
       (.I0(CS0),
        .I1(CS1),
        .I2(\^state_registers [53]),
        .I3(plaintext[9]),
        .O(\state_registers[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[0] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[0]_i_1_n_0 ),
        .Q(\^state_registers [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[10] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[10]_i_1_n_0 ),
        .Q(\^state_registers [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[11] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[11]_i_1_n_0 ),
        .Q(\^state_registers [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[12] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[12]_i_1_n_0 ),
        .Q(\^state_registers [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[13] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[13]_i_1_n_0 ),
        .Q(\^state_registers [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[14] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[14]_i_1_n_0 ),
        .Q(\^state_registers [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[15] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[15]_i_1_n_0 ),
        .Q(\^state_registers [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[16] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[16]_i_1_n_0 ),
        .Q(\^state_registers [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[17] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[17]_i_1_n_0 ),
        .Q(\^state_registers [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[18] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[18]_i_1_n_0 ),
        .Q(\^state_registers [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[19] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[19]_i_1_n_0 ),
        .Q(\^state_registers [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[1] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[1]_i_1_n_0 ),
        .Q(\^state_registers [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[20] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[20]_i_1_n_0 ),
        .Q(\^state_registers [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[21] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[21]_i_1_n_0 ),
        .Q(\^state_registers [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[22] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[22]_i_1_n_0 ),
        .Q(\^state_registers [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[23] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[23]_i_1_n_0 ),
        .Q(\^state_registers [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[24] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[24]_i_1_n_0 ),
        .Q(\^state_registers [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[25] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[25]_i_1_n_0 ),
        .Q(\^state_registers [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[26] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[26]_i_1_n_0 ),
        .Q(\^state_registers [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[27] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[27]_i_1_n_0 ),
        .Q(\^state_registers [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[28] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[28]_i_1_n_0 ),
        .Q(\^state_registers [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[29] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[29]_i_1_n_0 ),
        .Q(\^state_registers [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[2] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[2]_i_1_n_0 ),
        .Q(\^state_registers [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[30] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[30]_i_1_n_0 ),
        .Q(\^state_registers [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[31] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[31]_i_1_n_0 ),
        .Q(\^state_registers [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[32] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[32]_i_1_n_0 ),
        .Q(\^state_registers [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[33] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[33]_i_1_n_0 ),
        .Q(\^state_registers [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[34] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[34]_i_1_n_0 ),
        .Q(\^state_registers [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[35] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[35]_i_1_n_0 ),
        .Q(\^state_registers [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[36] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[36]_i_1_n_0 ),
        .Q(\^state_registers [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[37] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[37]_i_1_n_0 ),
        .Q(\^state_registers [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[38] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[38]_i_1_n_0 ),
        .Q(\^state_registers [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[39] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[39]_i_1_n_0 ),
        .Q(\^state_registers [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[3] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[3]_i_1_n_0 ),
        .Q(\^state_registers [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[40] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[40]_i_1_n_0 ),
        .Q(\^state_registers [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[41] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[41]_i_1_n_0 ),
        .Q(\^state_registers [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[42] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[42]_i_1_n_0 ),
        .Q(\^state_registers [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[43] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[43]_i_1_n_0 ),
        .Q(\^state_registers [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[44] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[44]_i_1_n_0 ),
        .Q(\^state_registers [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[45] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[45]_i_1_n_0 ),
        .Q(\^state_registers [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[46] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[46]_i_1_n_0 ),
        .Q(\^state_registers [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[47] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[47]_i_1_n_0 ),
        .Q(\^state_registers [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[48] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[48]_i_1_n_0 ),
        .Q(\^state_registers [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[49] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[49]_i_1_n_0 ),
        .Q(\^state_registers [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[4] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[4]_i_1_n_0 ),
        .Q(\^state_registers [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[50] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[50]_i_1_n_0 ),
        .Q(\^state_registers [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[51] 
       (.C(clk),
        .CE(\state_registers[51]_i_1_n_0 ),
        .D(\state_registers[51]_i_2_n_0 ),
        .Q(\^state_registers [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[52] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[52]_i_1_n_0 ),
        .Q(\^state_registers [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[53] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[53]_i_1_n_0 ),
        .Q(\^state_registers [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[54] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[54]_i_1_n_0 ),
        .Q(\^state_registers [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[55] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[55]_i_1_n_0 ),
        .Q(\^state_registers [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[56] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[56]_i_1_n_0 ),
        .Q(\^state_registers [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[57] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[57]_i_1_n_0 ),
        .Q(\^state_registers [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[58] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[58]_i_1_n_0 ),
        .Q(\^state_registers [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[59] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[59]_i_1_n_0 ),
        .Q(\^state_registers [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[5] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[5]_i_1_n_0 ),
        .Q(\^state_registers [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[60] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[60]_i_1_n_0 ),
        .Q(out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[61] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[61]_i_1_n_0 ),
        .Q(out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[62] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[62]_i_1_n_0 ),
        .Q(out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[63] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[63]_i_2_n_0 ),
        .Q(out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[6] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[6]_i_1_n_0 ),
        .Q(\^state_registers [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[7] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[7]_i_1_n_0 ),
        .Q(\^state_registers [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[8] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[8]_i_1_n_0 ),
        .Q(\^state_registers [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_registers_reg[9] 
       (.C(clk),
        .CE(\state_registers[63]_i_1_n_0 ),
        .D(\state_registers[9]_i_1_n_0 ),
        .Q(\^state_registers [9]),
        .R(1'b0));
endmodule

(* CLK_FREQUENCY = "100000000" *) 
(* NotValidForBitStream *)
module top
   (CLK100MHZ,
    CPU_RESETN,
    LED);
  input CLK100MHZ;
  input CPU_RESETN;
  output LED;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire LED;
  wire NLW_craft_encrypt_inst_done_UNCONNECTED;
  wire [63:0]NLW_craft_encrypt_inst_ciphertext_UNCONNECTED;

  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF LED_OBUF_inst
       (.I(1'b0),
        .O(LED));
  (* DONE = "5'b10000" *) 
  (* DONT_TOUCH *) 
  (* KEY_SCHEDULE = "5'b00001" *) 
  (* MIX_COLUMNS = "5'b00010" *) 
  (* PERMUT = "5'b01000" *) 
  (* START = "5'b00000" *) 
  (* SUB_BOX = "5'b00100" *) 
  craft_encrypt craft_encrypt_inst
       (.ciphertext(NLW_craft_encrypt_inst_ciphertext_UNCONNECTED[63:0]),
        .clk(CLK100MHZ_IBUF_BUFG),
        .done(NLW_craft_encrypt_inst_done_UNCONNECTED),
        .key({1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .plaintext({1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .rst_n(CPU_RESETN),
        .tweak({1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
