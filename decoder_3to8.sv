module decoder_3to8(
    input [2:0] addr, // Address input
    input en_b,       // Active low enable
    output [7:0] row_sel // Row select outputs
);

// Generate outputs only if enabled
assign row_sel = (en_b) ? 8'b00000000 : (1 << addr);

endmodule
