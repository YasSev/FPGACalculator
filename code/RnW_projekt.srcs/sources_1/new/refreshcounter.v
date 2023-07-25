`timescale 1ns / 1ps
// Create Date: 26.12.2022 17:21:36

// F�r die Steuerung des 7SegDisplays: Z�hlt bei jedem "FastClk" einmal hoch; 
// Sagt, welches Digit gerade angezeigt werden soll und wechselt die zugeh�rigen Anoden
module refreshcounter(
    input refresh_clock,
    output reg[1:0] refreshcounter
    );
    // Da das Register nur 2 Bit gross ist; wird von 0 bis 3 gez�hlt; und danach f�ngt es wieder von vorne an.
    always @(posedge refresh_clock) refreshcounter <= refreshcounter +1;
endmodule
