module OR2_tb;

	logic a;
	logic b;
	logic z;
	
	OR2 #(
		.Tpdhl(2),
		.Tpdlh(4)
	)or_gate(
		.A(a),
		.B(b),
		.Z(z)
	);
	initial begin
		a = 0;
		b = 0;
		
		#10
		a = 1;
		b = 0; 
		
		#10
		a = 0;
		b = 1;
		
		#10
		a=1;
		b=1;
	end
endmodule 