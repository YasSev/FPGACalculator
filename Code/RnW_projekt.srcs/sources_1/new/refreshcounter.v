`timescale 1ns / 1ps
// Create Date: 26.12.2022 17:21:36

// Für die Steuerung des 7SegDisplays: Zählt bei jedem "FastClk" einmal hoch; 
// Sagt, welches Digit gerade angezeigt werden soll und wechselt die zugehörigen Anoden
module refreshcounter(
    input refresh_clock,
    output reg[1:0] refreshcounter
    );
    // Da das Register nur 2 Bit gross ist; wird von 0 bis 3 gezählt; und danach fängt es wieder von vorne an.
    always @(posedge refresh_clock) refreshcounter <= refreshcounter +1;
endmodule
