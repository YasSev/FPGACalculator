`timescale 1ns / 1ps
// Create Date: 04.12.2022 11:40:23

// main-module; regelt die Steuerung mit den push-Buttons, etc...
module main_module(
    input [7:0] a, input [7:0] b, input pb, input pb2, input pb3, input pb4, input pb5, input clk_in,
    output [15:0] s, output wire [6:0] a_to_g, output wire [3:0] anodes, output wire dp
    );
    
    wire clk_out;
    wire [8:0] outAdd; // für Zwischenspeicherung des Resultats des 8BitAdders
    wire [8:0] outSub; // für Zwischenspeicherung des Resultats des 8BitSubtrahierers
    wire [3:0] temp; //Zwischenspeichern der Ausgabe des Digits, welches gerade an der Reihe ist.
    wire [1:0] refreshCount;
    
    reg [15:0] stemp; // Zwischenspeichern des Resultats für die LED's
    // Digits speichern die Ausgabe für die einzelnen Digits des 7SegDisplays
    reg [3:0] digit1;
    reg [3:0] digit2;
    reg [3:0] digit3;
    reg [3:0] digit4;
    
    // Für Speichern der Button-States:
    SlowClk4Hz u1(clk_in, clk_slow);
    DFlipFlop d1(clk_slow, pb, Q1);
    DFlipFlop d2(clk_slow, pb2, Q2);
    DFlipFlop d3(clk_slow, pb3, Q3);
    DFlipFlop d4(clk_slow, pb4, Q4);
    DFlipFlop d5(clk_slow, pb5, Q5);

    EightBitAdder add(a, b, outAdd);
    EightBitSubtractor sub(a,b,outSub);
    
    always @ (Q1 or Q2 or Q3 or Q4 or Q5) begin
        case ({Q1, Q2, Q3, Q4, Q5})
            5'b10000:
                // Addition; Beim Drücken des linken Buttons
                begin 
                    stemp[15:0] = 0; // Zur Sicherheit; damit keine Werte z.B. noch von der Multiplikation übrig bleiben; könnte man auch weglassen
                    stemp = outAdd;
                    digit1 = 4'b0000;
                    digit2 = stemp[8];
                    digit3 = stemp[7:4];
                    digit4 = stemp[3:0];
                end
            5'b01000:
                // Subtraktion; beim Drücken vom rechten Button
                begin 
                    stemp[15:0] = 0;
                    stemp = outSub;
                    digit1 = 4'b0000;
                    digit2 = stemp[8];
                    digit3 = stemp[7:4];
                    digit4 = stemp[3:0];
                end
            5'b00100:
                // Multiplikation; Beim Drücken des oberen Buttons
                begin
                    stemp = a*b;
                    digit1 = stemp[15:12];
                    digit2 = stemp[11:8];
                    digit3 = stemp[7:4];
                    digit4 = stemp[3:0];
                end
            5'b00010:
                // XOR; Beim Drücken des mittleren Buttons
                begin
                    stemp = a^b; // Das Resultat ist  hier wieder 16 Bit gross (a und b werden als 16 Bit Zahl interpretiert)
                    // Aber da beim Lesen von a und b als 16 Bit Zahl die vorderen 16 Bit als 0 gelesen werden und
                    // 0 XOR 0 wieder 0 gibt, ist das Resultat trotzdem auch für 8 Bit korrekt
                    digit1 = stemp[15:12];
                    digit2 = stemp[11:8];
                    digit3 = stemp[7:4];
                    digit4 = stemp[3:0];
                end
            5'b00001:
                // NAND; Beim Drücken des unteren Buttons
                begin
                    stemp = ~(a&b);
                    stemp[15:8] = 0;
                    digit1 = stemp[15:12];
                    digit2 = stemp[11:8];
                    digit3 = stemp[7:4];
                    digit4 = stemp[3:0];
                end                
            default: 
                // "Default case"; Falls kein Button gedrückt wird
                begin
                    stemp[15:0] = 0;
                    digit1 = a[7:4];
                    digit2 = a[3:0];
                    digit3 = b[7:4];
                    digit4 = b[3:0];
                end
        endcase
    end

    assign s = stemp;
    
    // Für 7-segment Display:
    assign dp = 1; // decimal point off
    SevenSegClock FastClk(clk_in, refresh_clock); // Generiert einen Clock; schnell genug um das menschliche Auge zu täuschen
    // aber langsam genug; dass die Ausgabe nicht fehlerhaft ist
    refreshcounter refc(refresh_clock, refreshCount); // Generiert RefreshCounter für BCD & Anode Control
    anode_control AC(refreshCount, anodes);
    BCD_control BC(digit1, digit2, digit3, digit4, refreshCount, temp);
    hex7seg seg7(temp, a_to_g); // Decoded die Ausgabe fürs 7SegDisplay
    
endmodule
