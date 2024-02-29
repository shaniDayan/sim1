module NAND2 (
    input logic A,
    input logic B,
    output logic Z
);

parameter Tpdlh = 1;
parameter Tpdhl = 1;

nand #(Tpdlh, Tpdhl) nand1 (Z, A, B);

endmodule
