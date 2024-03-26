module shifter_2b(
    input s,        // Shift signal
    input [1:0] in, // 2-bit input
    output [1:0] out // 2-bit output
);

assign out[0] = ~s & in[0];
assign out[1] = (~s & in[1]) | (s & in[0]);

endmodule
