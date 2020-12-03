/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module ram_handler_10 (
    input location,
    input state,
    input clk,
    input [6:0] in_number,
    output reg [6:0] out_number
  );
  
  
  
  wire [7-1:0] M_ram_read_data;
  reg [1-1:0] M_ram_address;
  reg [7-1:0] M_ram_write_data;
  reg [1-1:0] M_ram_write_en;
  simple_ram_17 #(.SIZE(3'h7), .DEPTH(2'h2)) ram (
    .clk(clk),
    .address(M_ram_address),
    .write_data(M_ram_write_data),
    .write_en(M_ram_write_en),
    .read_data(M_ram_read_data)
  );
  
  always @* begin
    out_number = 1'h0;
    M_ram_write_en = 1'h0;
    M_ram_address = 1'h0;
    M_ram_write_data = 16'bxxxxxxxxxxxxxxxx;
    if (state == 1'h0) begin
      M_ram_write_en = 1'h0;
      M_ram_address = location;
      out_number = M_ram_read_data;
    end else begin
      if (state == 1'h1) begin
        M_ram_write_en = 1'h1;
        M_ram_address = location;
        M_ram_write_data = in_number;
      end
    end
  end
endmodule