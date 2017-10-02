/* Cited from http://research.kek.jp/people/uchida/educations/verilogHDL/index.html*/

// A | B | S | O
//---|---|---|---
// L | * | L | L
// H | * | L | H
// * | L | H | L
// * | H | H | H

assign O = (S ? B: A);
