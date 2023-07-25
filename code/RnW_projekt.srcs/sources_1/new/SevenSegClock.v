`timescale 1ns / 1ps
// Create Date: 26.12.2022 17:14:35

// Analog implementiert, wie der Slow-Clock; einfach schneller
module SevenSegClock(
    input clk_in, // input 100 Mhz of the FPGA Board Clock
    output clk_out
    );
    // Da wir nur bis 5'000 z�hlen, brauchen wir nur 14 Register, um die Zahl zu speichern. 
    reg [13:0] count = 0; // vorher 13 bei 5'000
    reg clk_out;
    
    always @ (posedge clk_in) // Macht etwas jedes mal, wenn der clock-edge positiv wird (rising-edge-triggered)
    begin // loop
    count <= count+1; // Z�hlt die Anzahl an "rising edges"
    if(count == 5_000) // Wenn die Anzahl an "rising edges = 5'000 ist; m�ssen wir unseren 4HZ-Clock �ndern"
    begin
    count <= 0; // Danach m�ssen wir wieder von vorne mit Z�hlen beginnen, bis zum n�chsten Wechsel unseres 4Hz Clocks
    clk_out =~ clk_out; // Der Clock wird invertiert
    end
    end
endmodule
