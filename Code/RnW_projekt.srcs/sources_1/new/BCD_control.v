`timescale 1ns / 1ps
// Create Date: 26.12.2022 17:41:53

// Sagt abhängig vom Refreshcounter; welches Digit gerade displayed wird; das heisst welche Daten an die Kontrollleitungen
// des 7SegDisplays geschickt werden sollen.
// WICHTIG: Dies muss in Sync mit dem anode_control geschehen; diese zwei Module müssen aufeinander abgestimmt sein. 
module BCD_control(
input [3:0] digit1,
input [3:0] digit2,
input [3:0] digit3,
input [3:0] digit4,
input [1:0] refreshcounter,
output reg [3:0] displayed_digit = 0
    );
    
    always@(refreshcounter)
        begin 
            case(refreshcounter)
                2'b00:
                    displayed_digit = digit1; //digit1 value (right digit)
                2'b01:
                    displayed_digit = digit2; //digit2 value
                2'b10:
                    displayed_digit = digit3; //digit3 value
                2'b11:
                    displayed_digit = digit4; //digit4 value (left digit)
            endcase
        end
endmodule
