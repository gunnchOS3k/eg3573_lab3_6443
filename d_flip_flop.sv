module d_flip_flop(
    input clk,
    input rst, // Asynchronous reset
    input d,
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule
