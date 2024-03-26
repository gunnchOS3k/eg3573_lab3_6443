module FullAdderTestbench;
    reg a, b, carry_in;
    wire sum, carry_out;
    
    // Instantiate the FullAdder module
    FullAdder fa(.a(a), .b(b), .carry_in(carry_in), .sum(sum), .carry_out(carry_out));
    
    initial begin
        // Apply all possible input combinations
        $display("A B CI | S CO");
        $display("-------------");
        a = 0; b = 0; carry_in = 0; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
        
        a = 0; b = 0; carry_in = 1; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
        
        a = 0; b = 1; carry_in = 0; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
        
        a = 0; b = 1; carry_in = 1; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
        
        a = 1; b = 0; carry_in = 0; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
        
        a = 1; b = 0; carry_in = 1; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
        
        a = 1; b = 1; carry_in = 0; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
        
        a = 1; b = 1; carry_in = 1; #10
        $display("%b %b %b  | %b  %b", a, b, carry_in, sum, carry_out);
    end
endmodule
