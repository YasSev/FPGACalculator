`timescale 1ns / 1ps
// Create Date: 29.12.2022 15:16:33


module OneBitSub(
    input a, input b, input bin,
    output d, output bout
    );
    // Implementation Siehe Truth Table und Skizze im Report
    assign d = a ^ b ^ bin;
    assign t1 = b & bin;
    assign t2 = ~a & b;
    assign t3 = ~a & bin;
    assign bout = t1 | t2 | t3;
endmodule
