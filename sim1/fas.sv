// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
	logic out_x1, out_x3, out_o1, out_n1, out_n2, out_n3,out_n4;
	parameter xnorTpd = 9;
	parameter nandTpd = 7;
	parameter orTpd = 10;
	XNOR2 #(
		.Tpdlh(xnorTpd),
		.Tpdhl(xnorTpd)
		)x1(
			.A(b),
			.B(cin),
			.Z(out_x1)
	);
	XNOR2 #(
		.Tpdlh(xnorTpd),
		.Tpdhl(xnorTpd)
		)x3(
			.A(a),
			.B(a_ns),
			.Z(out_x3)
	);
	OR2 #(
		.Tpdlh(orTpd),
		.Tpdhl(orTpd)
		)o1(
			.A(b),
			.B(cin),
			.Z(out_o1)
	);
	NAND2 #(
        .Tpdlh(nandTpd),
        .Tpdhl(nandTpd)
    ) n3 (
        .A(b),
        .B(cin),
        .Z(out_n3)
    );
	NAND2 #(
        .Tpdlh(nandTpd),
        .Tpdhl(nandTpd)
    ) n4 (
        .A(out_n3),
        .B(out_n3),
        .Z(out_n4)
    );
	XNOR2 #(
		.Tpdlh(xnorTpd),
		.Tpdhl(xnorTpd)
		)x2(
			.A(a),
			.B(out_x1),
			.Z(s)
	);
	NAND2 #(
        .Tpdlh(nandTpd),
        .Tpdhl(nandTpd)
    ) n1 (
        .A(out_x3),
        .B(out_o1),
        .Z(out_n1)
    );
	NAND2 #(
        .Tpdlh(nandTpd),
        .Tpdhl(nandTpd)
    ) n2 (
        .A(out_n1),
        .B(out_n1),
        .Z(out_n2)
    );
	OR2 #(
		.Tpdlh(orTpd),
		.Tpdhl(orTpd)
		)o2(
			.A(out_n2),
			.B(out_n4),
			.Z(cout)
	);
	
	

// End of your code

endmodule
