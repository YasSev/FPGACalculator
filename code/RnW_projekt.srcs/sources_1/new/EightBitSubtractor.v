`timescale 1ns / 1ps
// Create Date: 24.12.2022 16:21:25


module EightBitSubtractor(
input [7:0] a, input [7:0] b, output [8:0] s
    );
    OneBitSub sub1(a[0],b[0],0,s[0],borrow1);
    OneBitSub sub2(a[1],b[1],borrow1,s[1],borrow2);
    OneBitSub sub3(a[2],b[2],borrow2,s[2],borrow3);
    OneBitSub sub4(a[3],b[3],borrow3,s[3],borrow4);
    OneBitSub sub5(a[4],b[4],borrow4,s[4],borrow5);
    OneBitSub sub6(a[5],b[5],borrow5,s[5],borrow6);
    OneBitSub sub7(a[6],b[6],borrow6,s[6],borrow7);
    OneBitSub sub8(a[7],b[7],borrow7,s[7],s[8]);
endmodule
