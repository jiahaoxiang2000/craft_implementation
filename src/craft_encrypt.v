`include "craft_sbox.v"

module craft_encrypt (
    input wire clk,
    input wire rst_n,
    input wire [63:0] plaintext,
    input wire [63:0] tweak,
    input wire [127:0] key,
    output reg done,
    output reg [63:0] ciphertext
);

  reg [7:0] r = 8'h00;
  reg [3:0] count = 4'h0;
  reg [1:0] repeat_count = 2'h0;

  reg [4:0] state = START, next_state;  // Define state and next_state variables

  parameter START = 5'b00000, KEY_SCHEDULE = 5'b00001, MIX_COLUMNS = 5'b00010, SUB_BOX = 5'b00100, PERMUT = 5'b01000, DONE = 5'b10000; // Define states


  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= START;
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
        end else next_state = PERMUT;
      end
      DONE: begin
        // Transition conditions from DONE state
        if (0) next_state = START;
        else next_state = DONE;
      end
    endcase
  end


endmodule  //craft_encrypt
