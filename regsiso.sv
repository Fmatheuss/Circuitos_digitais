module registrador_shift_direita (
  input logic clk, reset,
  input logic [7:0] data_in,
  output logic [7:0] data_out
);

  always_ff @(posedge clk) begin
    if (reset)
      data_out <= 8'b0;
    else
      data_out <= {data_in[6:0], 1'b0};
  end

endmodule