module lfsr (
    input logic clk,
    input logic rst_n,
    output logic [15:0] out
);
    logic [15:0] state;
always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= 16'b1000000000000001; 
    else begin
        state <= {state[14:0], state[15] ^ state[13] ^ state[12] ^ state[10]};
    end
end
assign out = state;
endmodule
