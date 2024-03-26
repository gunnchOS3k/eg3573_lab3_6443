module mux4to1(
    input [3:0] d,    // 4 data inputs
    input [1:0] s,    // 2 select inputs
    input oe,         // Output Enable
    output reg q      // Output
);
    always @(*) begin
        if (oe) begin
            case (s)
                2'b00: q = d[0];
                2'b01: q = d[1];
                2'b10: q = d[2];
                2'b11: q = d[3];
                default: q = 1'bz; // High impedance if unspecified
            endcase
        end else begin
            q = 1'bz; // High impedance if output is not enabled
        end
    end
endmodule
