module crossbar_2x2 (
    input logic x2, x1, s,
    output logic y1, y2
);

    always_comb 
    begin
        y1 = s ? x2 : x1;
        y2 = s ? x1 : x2;
    end

endmodule















