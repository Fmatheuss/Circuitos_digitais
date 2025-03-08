module ULA(
    input logic[3:0] a, b,
    input logic[1:0] op,
    output logic[3:0] c
);

logic [3:0] sum, sub, op_and, op_or;

assign sum = a + b;
assign sub = a - b;
assign op_and = a & b;
assign op_or = a | b;

always_comb
begin
    case(op)
        2'b00: c = sum;
        2'b01: c = sub;
        2'b10: c = op_and;
        default: c = op_or;
    endcase
end

endmodule


