module minterm_function(
    input A, B, C, D,
    output reg F
);

always @(A, B, C, D) begin
    case ({A, B, C, D})
        4'b0000, // m0
        4'b0010, // m2
        4'b0100, // m4
        4'b0101, // m5
        4'b0110, // m6
        4'b0111, // m7
        4'b1001, // m9
        4'b1010, // m10
        4'b1011: // m11
            F = 1;
        default: F = 0;
    endcase
end

endmodule
