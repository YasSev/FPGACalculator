`timescale 1ns / 1ps
// Create Date: 20.11.2022 12:53:20

// Zusammensetzen von 4 One-Bit-Full-Adders
module FourBitAdder(input cin, input [3:0] a, input [3:0] b, output [3:0] s, output cout);

FullAdder oneone(a[0],b[0],cin,s[0],c1);
FullAdder onetwo(a[1],b[1],c1,s[1],c2);
FullAdder onethree(a[2],b[2],c2,s[2],c3);
FullAdder onefour(a[3],b[3],c3,s[3],cout);

endmodule
