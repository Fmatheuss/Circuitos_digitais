module lfsr(
    input logic clk,
    input logic rst_n,
    output logic [7:0] out
);
    logic [7:0] state;

always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= 8'b10000001; // Valor inicial (seed)
    else begin
        state <= {state[6:0], state[7] ^ state[5] ^ state[4] ^ state[3]}; // Feedback com XOR
    end
end
assign out = state;
endmodule

