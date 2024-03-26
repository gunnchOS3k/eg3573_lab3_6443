module down_counter(
    input clk,         // Clock input
    input reset,       // Asynchronous reset input
    output reg [4:0] out // 5-bit output
);
    // On every rising edge of the clock...
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Asynchronously reset the counter to its maximum value
            out <= 5'b11111;
        end else begin
            // Decrement the counter
            out <= out - 1;
        end
    end
endmodule

