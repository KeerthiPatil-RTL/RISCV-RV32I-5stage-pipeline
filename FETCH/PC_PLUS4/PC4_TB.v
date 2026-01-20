`timescale 1ns / 1ps

module pc4_tb;
reg [31:0]pc_out;
wire [31:0] pc4_out;
PC4 dut (.pc_out(pc_out), .pc4_out(pc4_out));
initial begin
pc_out = 32'h0000000;#5;
pc_out = 32'h0000005;#5;
pc_out = 32'h0000070;#5;
$finish;
end
endmodule
