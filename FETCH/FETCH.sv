`timescale 1ns / 1ps
module fetch ( input logic [31:0] pc,
               input logic clk,reset_n,
                 input logic [31:0]imem_data,
               output logic [31:0] imem_addr,
               output logic [31:0] instruction,
               output logic imem_req);  

logic req_reg;

always_ff @(posedge clk or negedge reset_n) begin
if(!reset_n) begin
req_reg <= 1'b0;end
else  begin 
req_reg <= 1'b1;
end  
end  
assign imem_addr = pc;
assign imem_req = req_reg;
assign instruction = imem_data;
endmodule
