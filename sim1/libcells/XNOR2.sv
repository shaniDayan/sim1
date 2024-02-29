module XNOR2 (
    input logic A,
    input logic B,
    output logic Z
);

parameter Tpdlh = 1;
parameter Tpdhl = 1;

xnor #(Tpdlh, Tpdhl) xnor1 (Z, A, B);

endmodule
