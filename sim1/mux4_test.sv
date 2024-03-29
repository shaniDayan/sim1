module mux4_test;

// Put your code here
// ------------------
    logic d0;         
    logic d1;          
    logic d2;          
    logic d3;    
    logic [1:0] sel;
    logic z;
	
    mux4 #(
       
    ) mux_gate ( 
		.d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .sel(sel),
        .z(z));

    initial begin
        d0 = 0;
        d1 = 0;
        d2 = 0;
        d3 = 0;
        sel = 2'b00;
        
        #48;

        d0 = 1;
        d1 = 0;
        d2 = 0;
        d3 = 0;
        sel = 2'b00;

        #48;

       

    end
// End of your code

endmodule
