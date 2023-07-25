`timescale 1ns / 1ps
// Create Date: 04.12.2022 10:35:05

// Erzeugt einen langsamen Clock für das Button-Debouncing.
module SlowClk4Hz(
    input clk_in, // input 100 Mhz of the FPGA Board Clock
    output clk_out // 4Hz Slow Clock
    );
    reg [25:0] count = 0;
    reg clk_out;
    
    always @ (posedge clk_in) // Macht etwas jedes mal, wenn der clock-edge positiv wird (rising-edge-triggered)
    begin // loop
    count <= count+1; // Zählt die Anzahl an "rising edges"
    if(count == 12_500_000) // Wenn die Anzahl an "rising edges = 12'500'000 ist; müssen wir unseren 4HZ-Clock ändern"
    begin
    count <= 0; // Danach müssen wir wieder von vorne mit Zählen beginnen, bis zum nächsten Wechsel unseres 4Hz Clocks
    clk_out =~ clk_out; // Der 4Hz Clock wird invertiert
    end
    end
endmodule
