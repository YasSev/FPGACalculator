`timescale 1ns / 1ps
// Create Date: 26.12.2022 15:22:09

// Decoder; welcher die Digits umwandelt zum 7SegmentDisplay
// Sagt, welche Segments bleuchtet sein müssen; um die entsprechende Zahl darzustellen 
module hex7seg (
    input wire [3:0]x,
    output reg [6:0]a_to_g
    );
    
    always@(*)
    begin
        case(x)
        // Note: 0 equals illuminated part of the 7-seg-display; 1 equals LED OFF!!
        0:  a_to_g = 7'b0000001;
        1:  a_to_g = 7'b1001111;
        2:  a_to_g = 7'b0010010;
        3:  a_to_g = 7'b0000110;
        4:  a_to_g = 7'b1001100;
        5:  a_to_g = 7'b0100100;
        6:  a_to_g = 7'b0100000;
        7:  a_to_g = 7'b0001111;
        8:  a_to_g = 7'b0000000;
        9:  a_to_g = 7'b0000100;
        'hA: a_to_g= 7'b0001000;
        'hB: a_to_g= 7'b1100000;
        'hC: a_to_g= 7'b1110010;
        'hD: a_to_g= 7'b1000010;
        'hE: a_to_g= 7'b0110000;
        'hF: a_to_g= 7'b0111000;
        default: a_to_g = 7'b0000001; // default case: display "0"
        endcase
    end
endmodule
