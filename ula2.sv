module ULA #(parameter N = 8) (
    input logic[N-1:0] a, b,
    input logic[2:0] op,
    output logic[N-1:0] c
);

logic [N-1:0] sum, sub, op_and, op_or,mult;

assign sum = a + b;
assign sub = a - b;
assign mult = a * b;
assign op_and = a & b;
assign op_or = a | b;


always_comb
begin
    case(op)
        3'b000: c = sum;
        3'b001: c = sub;
        3'b010: c = mult;
        3'b011: c = op_and;
        default: c = op_or;
    endcase
end

endmodule
