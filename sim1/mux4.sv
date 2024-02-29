module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
    logic outA, outB;
    mux2 #(
       
    ) A( .d0(d0),
        .d1(d2),
        .sel(sel[0]),
        .z(outA));

    mux2 #(
        
    ) B(.d0(d1),
        .d1(d3),
        .sel(~sel[0]),  // Invert sel for the second input
        .z(outB));

    mux2 #(
        
    ) C(.d0(outA),
        .d1(outB),
        .sel(sel[1]),
        .z(z));
// End of your code

endmodule
