`timescale 1ns / 1ps
// Create Date: 26.12.2022 17:27:51

// Sagt; abhängig vom refreshcounter; welche Anode gerade an der Reihe ist; für das 4-Digit-Display
module anode_control(
    input[1:0] refreshcounter,
    output reg[3:0] anode = 0
    );
    
    always@(refreshcounter)
    begin
        case(refreshcounter)
        2'b00:
        begin
            anode = 4'b0111; // digit 1 on (1=OFF, 0=ON)
        end
        2'b01:
        begin
            anode = 4'b1011; // digit 2 on (1=OFF, 0=ON)
        end
        2'b10:
        begin
            anode = 4'b1101; // digit 3 on (1=OFF, 0=ON)
        end
        2'b11:
        begin
            anode = 4'b1110; // digit 4 on (1=OFF, 0=ON)
        end
        endcase
    end
endmodule
