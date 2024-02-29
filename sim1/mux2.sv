module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
    logic out1, out2, out3, out4, out5;
    NAND2 #(
        .Tpdlh(7),
        .Tpdhl(7)
    ) g1 (
        .A(d1),
        .B(sel),
        .Z(out1)
    );
    NAND2 #(
        .Tpdlh(7),
        .Tpdhl(7)
    ) g2 (
        .A(out1),
        .B(out1),
        .Z(out2)
    );
    NAND2 #(
        .Tpdlh(7),
        .Tpdhl(7)
    ) g3 (
        .A(sel),
        .B(sel),
        .Z(out3)
    );
    NAND2 #(
        .Tpdlh(7),
        .Tpdhl(7)
    ) g4 (
        .A(out3),
        .B(d0),
        .Z(out4)
    );
    NAND2 #(
        .Tpdlh(7),
        .Tpdhl(7)
    ) g5 (
        .A(out4),
        .B(out4),
        .Z(out5)
    );
    OR2 #(
        .Tpdlh(10),
        .Tpdhl(10)
    ) g6 (
        .A(out5),
        .B(out2),
        .Z(z)
    );
// End of your code

endmodule
