/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module game_engine_3 (
    input clk,
    input rst,
    input btn_a_sig,
    input btn_b_sig,
    input btn_c_sig,
    input btn_d_sig,
    input next_player_sig,
    output reg [6:0] current_out,
    output reg [6:0] target_display,
    output reg [3:0] a_display,
    output reg [3:0] b_display,
    output reg [3:0] c_display,
    output reg [3:0] d_display
  );
  
  
  
  wire [7-1:0] M_ram_out_number;
  reg [1-1:0] M_ram_location;
  reg [1-1:0] M_ram_state;
  reg [7-1:0] M_ram_in_number;
  ram_handler_10 ram (
    .clk(clk),
    .location(M_ram_location),
    .state(M_ram_state),
    .in_number(M_ram_in_number),
    .out_number(M_ram_out_number)
  );
  wire [1-1:0] M_ed_a_out;
  reg [1-1:0] M_ed_a_in;
  edge_detector_11 ed_a (
    .clk(clk),
    .in(M_ed_a_in),
    .out(M_ed_a_out)
  );
  wire [1-1:0] M_ed_b_out;
  reg [1-1:0] M_ed_b_in;
  edge_detector_11 ed_b (
    .clk(clk),
    .in(M_ed_b_in),
    .out(M_ed_b_out)
  );
  wire [1-1:0] M_ed_c_out;
  reg [1-1:0] M_ed_c_in;
  edge_detector_11 ed_c (
    .clk(clk),
    .in(M_ed_c_in),
    .out(M_ed_c_out)
  );
  wire [1-1:0] M_ed_d_out;
  reg [1-1:0] M_ed_d_in;
  edge_detector_11 ed_d (
    .clk(clk),
    .in(M_ed_d_in),
    .out(M_ed_d_out)
  );
  wire [1-1:0] M_ed_next_out;
  reg [1-1:0] M_ed_next_in;
  edge_detector_11 ed_next (
    .clk(clk),
    .in(M_ed_next_in),
    .out(M_ed_next_out)
  );
  wire [1-1:0] M_bc_a_out;
  reg [1-1:0] M_bc_a_in;
  button_conditioner_12 bc_a (
    .clk(clk),
    .in(M_bc_a_in),
    .out(M_bc_a_out)
  );
  wire [1-1:0] M_bc_b_out;
  reg [1-1:0] M_bc_b_in;
  button_conditioner_12 bc_b (
    .clk(clk),
    .in(M_bc_b_in),
    .out(M_bc_b_out)
  );
  wire [1-1:0] M_bc_c_out;
  reg [1-1:0] M_bc_c_in;
  button_conditioner_12 bc_c (
    .clk(clk),
    .in(M_bc_c_in),
    .out(M_bc_c_out)
  );
  wire [1-1:0] M_bc_d_out;
  reg [1-1:0] M_bc_d_in;
  button_conditioner_12 bc_d (
    .clk(clk),
    .in(M_bc_d_in),
    .out(M_bc_d_out)
  );
  wire [1-1:0] M_bc_next_out;
  reg [1-1:0] M_bc_next_in;
  button_conditioner_12 bc_next (
    .clk(clk),
    .in(M_bc_next_in),
    .out(M_bc_next_out)
  );
  wire [32-1:0] M_random_num;
  reg [1-1:0] M_random_next;
  reg [32-1:0] M_random_seed;
  random_13 random (
    .clk(clk),
    .rst(rst),
    .next(M_random_next),
    .seed(M_random_seed),
    .num(M_random_num)
  );
  reg [3:0] M_button_a_d, M_button_a_q = 1'h0;
  reg [3:0] M_button_b_d, M_button_b_q = 1'h0;
  reg [3:0] M_button_c_d, M_button_c_q = 1'h0;
  reg [3:0] M_button_d_d, M_button_d_q = 1'h0;
  reg [6:0] M_current_d, M_current_q = 1'h0;
  reg [6:0] M_target_d, M_target_q = 5'h14;
  reg [1:0] M_temp_d, M_temp_q = 1'h0;
  localparam BEGIN_state = 3'd0;
  localparam IDLE_state = 3'd1;
  localparam ADDITION_state = 3'd2;
  localparam COMPARE_state = 3'd3;
  localparam RESULT_state = 3'd4;
  
  reg [2:0] M_state_d, M_state_q = BEGIN_state;
  
  always @* begin
    M_state_d = M_state_q;
    M_button_b_d = M_button_b_q;
    M_button_a_d = M_button_a_q;
    M_button_d_d = M_button_d_q;
    M_current_d = M_current_q;
    M_temp_d = M_temp_q;
    M_button_c_d = M_button_c_q;
    M_target_d = M_target_q;
    
    M_random_seed = 128'h843233523a61357423b6225651512c62;
    M_random_next = btn_a_sig | btn_b_sig | btn_c_sig | btn_d_sig;
    current_out = 1'h0;
    M_ram_location = 1'bx;
    M_ram_state = 1'h0;
    M_ram_in_number = 1'h0;
    target_display = 7'bxxxxxxx;
    a_display = 4'bxxxx;
    b_display = 4'bxxxx;
    c_display = 4'bxxxx;
    d_display = 4'bxxxx;
    M_bc_a_in = btn_a_sig;
    M_bc_b_in = btn_b_sig;
    M_bc_c_in = btn_c_sig;
    M_bc_d_in = btn_d_sig;
    M_bc_next_in = next_player_sig;
    M_ed_a_in = M_bc_a_out;
    M_ed_b_in = M_bc_b_out;
    M_ed_c_in = M_bc_c_out;
    M_ed_d_in = M_bc_d_out;
    M_ed_next_in = M_bc_next_out;
    
    case (M_state_q)
      BEGIN_state: begin
        M_target_d = 5'h14;
        M_button_a_d = M_random_num[0+2-:3] + M_random_num[5+1-:2];
        M_button_b_d = M_random_num[2+2-:3] + M_random_num[13+1-:2];
        M_button_c_d = M_random_num[7+2-:3] + M_random_num[4+1-:2];
        M_button_d_d = M_random_num[8+2-:3] + M_random_num[2+1-:2];
        M_ram_state = 1'h1;
        M_ram_location = 1'h0;
        M_ram_in_number = 1'h1;
        M_state_d = IDLE_state;
      end
      IDLE_state: begin
        M_ram_state = 1'h0;
        M_ram_location = 1'h0;
        M_current_d = M_ram_out_number;
        current_out = M_ram_out_number;
        target_display = M_target_q;
        a_display = M_button_a_q;
        b_display = M_button_b_q;
        c_display = M_button_c_q;
        d_display = M_button_d_q;
        if (M_ed_a_out == 1'h1) begin
          M_state_d = ADDITION_state;
          M_temp_d = 1'h0;
        end else begin
          if (M_ed_b_out == 1'h1) begin
            M_state_d = ADDITION_state;
            M_temp_d = 1'h1;
          end else begin
            if (M_ed_c_out == 1'h1) begin
              M_state_d = ADDITION_state;
              M_temp_d = 2'h2;
            end else begin
              if (M_ed_d_out == 1'h1) begin
                M_state_d = ADDITION_state;
                M_temp_d = 2'h3;
              end
            end
          end
        end
      end
      ADDITION_state: begin
        if (M_temp_q == 1'h0) begin
          M_ram_state = 1'h1;
          M_ram_location = 1'h0;
          M_ram_in_number = M_current_q + M_button_a_q;
        end else begin
          if (M_temp_q == 1'h1) begin
            M_ram_state = 1'h1;
            M_ram_location = 1'h0;
            M_ram_in_number = M_current_q + M_button_b_q;
          end else begin
            if (M_temp_q == 2'h2) begin
              M_ram_state = 1'h1;
              M_ram_location = 1'h0;
              M_ram_in_number = M_current_q + M_button_c_q;
            end else begin
              if (M_temp_q == 2'h3) begin
                M_ram_state = 1'h1;
                M_ram_location = 1'h0;
                M_ram_in_number = M_current_q + M_button_d_q;
              end
            end
          end
        end
        M_state_d = COMPARE_state;
      end
      COMPARE_state: begin
        if (M_ram_out_number >= M_target_q) begin
          M_state_d = BEGIN_state;
        end else begin
          M_state_d = RESULT_state;
        end
      end
      RESULT_state: begin
        M_ram_state = 1'h0;
        M_ram_location = 1'h0;
        current_out = M_ram_out_number;
        M_current_d = M_ram_out_number;
        if (M_ed_next_out == 1'h1) begin
          M_state_d = IDLE_state;
          M_button_a_d = M_random_num[0+2-:3] + M_random_num[5+1-:2];
          M_button_b_d = M_random_num[6+2-:3] + M_random_num[4+1-:2];
          M_button_c_d = M_random_num[0+2-:3] + M_random_num[10+1-:2];
          M_button_d_d = M_random_num[5+1-:2] + M_random_num[2+1-:2];
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_button_a_q <= 1'h0;
      M_button_b_q <= 1'h0;
      M_button_c_q <= 1'h0;
      M_button_d_q <= 1'h0;
      M_current_q <= 1'h0;
      M_target_q <= 5'h14;
      M_temp_q <= 1'h0;
      M_state_q <= 1'h0;
    end else begin
      M_button_a_q <= M_button_a_d;
      M_button_b_q <= M_button_b_d;
      M_button_c_q <= M_button_c_d;
      M_button_d_q <= M_button_d_d;
      M_current_q <= M_current_d;
      M_target_q <= M_target_d;
      M_temp_q <= M_temp_d;
      M_state_q <= M_state_d;
    end
  end
  
endmodule