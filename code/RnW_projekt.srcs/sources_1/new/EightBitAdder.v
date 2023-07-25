`timescale 1ns / 1ps
// Create Date: 22.11.2022 17:11:56

// Zusammensetzen von 2 4-bit-Addern
module EightBitAdder (input [7:0] a, input [7:0] b, output [8:0] s);

// temp ist ein Wire, welches den Carry temporär "speichert"
wire temp;
FourBitAdder fourone(0, a[3:0], b[3:0], s[3:0], temp);
FourBitAdder fourtwo(temp, a[7:4], b[7:4], s[7:4], s[8]);

endmodule
