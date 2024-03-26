module FullAdder(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);
    // Intermediate signals for the gates
    wire ab_xor, ab_and, xor_cin_and;
    
    // XOR gate for a and b to calculate the sum part
    xor(ab_xor, a, b);
    xor(sum, ab_xor, carry_in);
    
    // AND gates for a and b, and for ab_xor and carry_in
    and(ab_and, a, b);
    and(xor_cin_and, ab_xor, carry_in);
    
    // OR gate to calculate the carry out
    or(carry_out, ab_and, xor_cin_and);
    
endmodule
