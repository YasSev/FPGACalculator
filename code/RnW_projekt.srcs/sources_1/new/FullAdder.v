`timescale 1ns / 1ps
// Create Date: 20.11.2022 12:52:44

// Klassischer Full-Adder
module FullAdder(input a, input b, input ci, output s, output co);

// implementiert, wie in der Übungsstunde (Übung 1)

xor(s1,a,b);
xor(s,s1,ci);
and(c1,a,b);
and(c2,s1,ci);
or(co,c1,c2);

endmodule
