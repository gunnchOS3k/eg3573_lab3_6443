module adder_subtractor(
    input [3:0] A, // 4-bit input A
    input [3:0] B, // 4-bit input B
    input adsu,    // Add/Subtract control: 1 for add, 0 for subtract
    output [3:0] Result, // 4-bit result
    output CarryOut // Carry out flag
);
    // Intermediate wires
    wire [3:0] B_inverted;
    wire carry_in;

    // Invert B if we are subtracting
    assign B_inverted = adsu ? B : ~B;
    // Carry in is 0 for addition, 1 for subtraction (to add the two's complement)
    assign carry_in = adsu ? 0 : 1;

    // 4-bit adder logic
    wire [4:0] sum = {1'b0, A} + {1'b0, B_inverted} + carry_in;

    // Assign outputs
    assign Result = sum[3:0];
    assign CarryOut = sum[4];

endmodule
