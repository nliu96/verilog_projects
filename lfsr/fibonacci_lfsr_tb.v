module fibonacci_lfsr_tb;
  parameter DATA_WIDTH = 4;
  parameter SEED = 4'b1111;

  reg clk;
  wire [DATA_WIDTH-1:0] out;

  fibonacci_lfsr #(.DATA_WIDTH(DATA_WIDTH), .SEED(SEED)) uut (
    .clk(clk),
    .q(out)
  );

  initial begin
    clk = 0;
  end

  always
    #5 clk = !clk;
endmodule
