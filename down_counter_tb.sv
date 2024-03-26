`timescale 1ns / 1ps

module down_counter_tb;
    reg clk, reset;
    wire [4:0] out;
    
    // Instantiate the down_counter
    down_counter uut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    
    // Clock generation (10ns period for 100MHz frequency)
    always #5 clk = ~clk; // Toggle every 5ns
    
    initial begin
        // Initialize
        clk = 0;
        reset = 1; // Apply reset initially
        #10 reset = 0; // Release reset after 10ns
        
        // Let the counter run for some time
        #100;
        
        // Reset the counter again to see if it initializes correctly
        reset = 1;
        #10 reset = 0;
        
        // Let the counter run for some more time
        #50;
        
        // End simulation
        $finish;
    end
endmodule
