module somador_serial(
    input logic A, B, clock, reset,d, 
    output logic S, Cout
);

logic q; // Saída do flip-flop tipo D

// Flip-flop tipo D do otavio
always_ff @(posedge clock, posedge reset)
begin
  if (reset == 1'b1)
        q <= 1'b0;
    else
        q <= d;
end

// Somador completo com a saida e a soma do Otavio
  assign S = A ^ B ^ q;
  assign Cout = (A&B)|(A&q)|(B&q);

endmodule