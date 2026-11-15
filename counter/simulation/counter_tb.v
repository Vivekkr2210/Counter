`timescale 1ns/1ps

module counter_tb;

    reg clk;
    reg rst;
    wire [3:0] count;

    counter uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Generate clock: 10 ns period
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        // Apply reset
        #10;
        rst = 0;

        // Observe counter for 18 clock cycles
        repeat (18) begin
            @(posedge clk);
            #1;
            $display("Time=%0t ns | Reset=%b | Count=%d",
                     $time, rst, count);
        end

        $finish;
    end

endmodule