`timescale 1ns / 1ps

 module my_mux(
 input wire X,
 input wire Y,
 output wire Z,
 input wire S
 );

 /*wire A, B, C;
 assign #5 C = (~S);
 assign #5 A = X & S;
 assign #5 B = Y & C;
 assign #5 Z = A | B;*/


 wire A,B,C,D,E;
 assign #5 C=(~S);
 assign #5 A=X&S;
 assign #5 B=Y&C;
 assign #5 D=X&Y;
 assign #5 Z = A|D|B;
 endmodule