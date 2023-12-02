`include "craft_sbox.v"
`include "craft_state_register.v"
`include "craft_key_register.v"
`include "craft_mix_columns.v"
`include "craft_sbox.v"

module craft_encrypt (
    input wire clk,
    input wire rst_n,
    input wire [63:0] plaintext,
    input wire [63:0] tweak,
    input wire [127:0] key,
    output reg done,
    output wire [63:0] ciphertext
);

  reg [7:0] r = 8'h00;
  reg [3:0] count = 4'h0;
  reg [1:0] repeat_count = 2'h0;
  reg CS0 = 1'b1;
  reg CS1 = 1'b0;
  reg CK0;
  reg CM0 = 1'b0;
  reg CM1 = 1'b0;
  reg ce_sr = 1'b1;
  reg ce_kr = 1'b0;
  wire [3:0] mc_in, sr_in, kr_out, mc_out, sb_in, sb_out;



  parameter START = 5'b00000, KEY_SCHEDULE = 5'b00001, MIX_COLUMNS = 5'b00010, SUB_BOX = 5'b00100, PERMUT = 5'b01000, DONE = 5'b10000; // Define states

  reg [4:0] state = 5'b00000;  // Define state variables
  reg [4:0] next_state = 5'b00000;  // Define next_state variables

  assign sr_in = (r == 8'd31 && next_state != PERMUT || r == 8'd32) ? sb_in : sb_out;

  (* dont_touch = "yes" *)  craft_state_register craft_state_register_inst (
      .clk(clk),
      .ce(ce_sr),
      .plaintext(plaintext),
      .in(sr_in),
      .CS0(CS0),
      .CS1(CS1),
      .out(mc_in),
      .state_registers(ciphertext)
  );

  (* dont_touch = "yes" *) craft_mix_columns craft_mix_columns_inst (
      .clk(clk),
      .in (mc_in),
      .CM0(CM0),
      .CM1(CM1),
      .out(mc_out)
  );

  (* dont_touch = "yes" *)  craft_key_register craft_key_register_inst (
      .clk(clk),
      .en(ce_kr),
      .key(key),
      .tweak(tweak),
      .r(r),
      .CK0(CK0),
      .out(kr_out)
  );

  assign sb_in = mc_out ^ kr_out;
 (* dont_touch = "yes" *) craft_sbox craft_sbox_inst (
      .din (sb_in),
      .dout(sb_out)
  );

  always @(posedge clk) begin
    case (next_state)
      START: begin
        // state register control sign
        ce_sr = 1'b1;
        CS0   = 1'b1;
        CS1   = 1'b0;
        // key register control sign
        ce_kr = 1'b0;
        // mix columns control sign
        CM0   = 1'b0;
        CM1   = 1'b0;
      end
      KEY_SCHEDULE: begin
        // state register control sign
        ce_sr = 1'b0;
        // key register control sign
        ce_kr = 1'b1;
        CK0   = 1'b1;
        // mix columns control sign
        CM0   = 1'b0;
        CM1   = 1'b0;
      end
      MIX_COLUMNS: begin
        // state register control sign
        if (count == 4'h4) begin
          ce_sr = 1'b0;
        end else begin
          ce_sr = 1'b1;
          CS0   = 1'b0;
          CS1   = 1'b0;
        end
        // key register control sign
        ce_kr = 1'b0;
        // mix columns control sign
        if (count == 4'h4) begin
          CM0 = 1'b0;
          CM1 = 1'b1;
        end else begin
          CM0 = 1'b1;
          CM1 = 1'b1;
        end
      end
      SUB_BOX: begin
        // state register control sign
        ce_sr = 1'b1;
        CS0   = 1'b1;
        CS1   = 1'b1;
        // key register control sign
        ce_kr = 1'b1;
        CK0   = 1'b0;
        // mix columns control sign
        CM0   = 1'b1;
        CM1   = 1'b1;
      end
      PERMUT: begin
        // state register control sign
        if (count == 4'h1) begin
          ce_sr = 1'b0;
        end else begin
          ce_sr = 1'b1;
          CS0   = 1'b0;
          CS1   = 1'b1;
        end
        // key register control sign
        ce_kr = 1'b0;
        // mix columns control sign
        CM0   = 1'b0;
        CM1   = 1'b0;
      end
      DONE: begin
        // state register control sign
        ce_sr = 1'b0;
        // key register control sign
        ce_kr = 1'b0;
        // mix columns control sign
        CM0   = 1'b0;
        CM1   = 1'b0;
      end
    endcase
  end

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= START;
      next_state <= START;
      done <= 1'b0;
      r <= 8'h00;
    end else begin
      state <= next_state;
    end
  end

  always @(posedge clk) begin
    case (state)
      START: begin
        // Transition conditions from START state
        if (r == 8'h00) next_state = KEY_SCHEDULE;
        else next_state = START;
      end
      KEY_SCHEDULE: begin
        // Transition conditions from KEY_SCHEDULE state
        // Note: this delay one cycle for key_schedule
        if (1) begin
          next_state = MIX_COLUMNS;
          count <= 4'h1;
        end else next_state = KEY_SCHEDULE;
      end
      MIX_COLUMNS: begin
        // Transition conditions from MIX_COLUMNS state
        if (count == 4'h4) begin
          count <= 4'h0;
          next_state = SUB_BOX;
        end else begin
          count <= count + 4'h1;
          if (next_state == SUB_BOX) begin
            next_state = SUB_BOX;
          end else next_state = MIX_COLUMNS;
        end
      end
      SUB_BOX: begin
        // Transition conditions from SUB_BOX state
        if (count == 4'h3) begin
          count <= 4'h0;
          if (repeat_count == 2'h3) begin
            repeat_count <= 2'h0;
            r <= r + 8'd1;
            if (r == 8'd31) next_state = DONE;
            else next_state = PERMUT;
          end else begin
            repeat_count <= repeat_count + 2'h1;
            next_state = MIX_COLUMNS;
          end
        end else begin
          count <= count + 4'h1;
          if (next_state == MIX_COLUMNS) next_state = MIX_COLUMNS;
          else if (next_state == PERMUT) next_state = PERMUT;
          else if (next_state == DONE) next_state = DONE;
          else next_state = SUB_BOX;
        end
      end
      PERMUT: begin
        // Transition conditions from PERMUT state
        if (1) begin
          next_state = KEY_SCHEDULE;
          count <= 4'h0;
        end else next_state = PERMUT;
      end
      DONE: begin
        // Transition conditions from DONE state
        if (0) next_state = START;
        else begin
          next_state = DONE;
          done <= 1'b1;
        end
      end
    endcase
  end


endmodule  //craft_encrypt
