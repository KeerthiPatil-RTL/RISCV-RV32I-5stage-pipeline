`timescale 1ns/1ps
module tb_pc;
reg clk;
reg rst;
reg pc_write;
reg [31:0] pc_next;
wire [31:0] pc_out;

pc dut(.clk(clk), 
.rst(rst),
.pc_write(pc_write),
.pc_next(pc_next),
.pc_out(pc_out)
);
always #5 clk = ~clk;
initial begin
clk = 0; rst =1; pc_write = 0; pc_next = 32'h00000000;
#12;rst =0 ; pc_write = 1; pc_next = 32'h00000004;
#10 ; pc_next = 32'h00000008;
#10 ;pc_write = 0 ; pc_next = 32'h0000000c;
#10 ; pc_write = 1; #10;
$finish;
end
endmodule
