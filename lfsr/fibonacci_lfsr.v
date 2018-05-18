module fibonacci_lfsr(clk, q);
  parameter DATA_WIDTH = 3;
  parameter SEED = 3'b111;
  input clk;
  output reg [DATA_WIDTH-1:0] q = SEED;
  
  reg feedback;

  always @ (posedge clk) begin
    feedback =  q[DATA_WIDTH-1] ^ q[DATA_WIDTH-2];
    q = q << 1;
    q[0] = feedback;
  end
endmodule
