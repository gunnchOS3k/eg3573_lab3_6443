module mux8to1(
    input [7:0] d,    // 8 data inputs
    input [2:0] s,    // 3 select inputs (2 for MUX selection, 1 for choosing between the two 4-to-1 MUXs)
    input oe,         // Output Enable
    output q          // Output
);
    wire [1:0] q_intermediate; // Intermediate outputs from the two 4-to-1 MUXs
    
    // First 4-to-1 MUX instance
    mux4to1 first_mux(
        .d(d[3:0]),
        .s(s[1:0]),
        .oe(oe),
        .q(q_intermediate[0])
    );
    
    // Second 4-to-1 MUX instance
    mux4to1 second_mux(
        .d(d[7:4]),
        .s(s[1:0]),
        .oe(oe),
        .q(q_intermediate[1])
    );
    
    // Final selection using the third select bit
    assign q = s[2] ? q_intermediate[1] : q_intermediate[0];
endmodule
