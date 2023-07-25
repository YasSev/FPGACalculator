`timescale 1ns / 1ps
// Create Date: 04.12.2022 11:17:14

// Zum Speichern des Button-States
module DFlipFlop( // klassischer D-Flip-Flop
    input clk, // input clock; in unserem Fall slow Clock 4Hz
    input D, // input D; in unserem Fall der Push Button
    output reg Q,
    output reg Qbar // Damit wir nicht 2 verschiedene FlipFlops machen müssen; Qbar ist das Gegenteil von Q
    );
    
    always @ (posedge clk) // Anpassung wird nur jedes Mal beim Rising Edge gemacht
    begin
    Q <= D; // D wird auf Q zugewiesen
    Qbar <= !Q;
    end
endmodule
