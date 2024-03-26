module sr_flip_flop(
    input s,
    input r,
    output reg q
);
    always @(s or r) begin
        case ({s, r})
            2'b10: q <= 1'b1; // Set
            2'b01: q <= 1'b0; // Reset
            // Note: 2'b11 is typically considered an invalid state for basic SR flip-flops
            // and is often handled explicitly in more complex designs
        endcase
    end
endmodule
