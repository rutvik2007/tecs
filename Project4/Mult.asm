// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm
// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// Put your code here.

@R2
	M=0             //Initialize R2 to 0
(LOOP)
	@R1
		M=M-1   //Decrement R1
		D=M     //D=R1
	@EXIT
		D;JLT   //Branch to EXIT if D<0
	@R0
		D=M     //
	@R2
		M=D+M   //R2=R1+R2 (for repeated addition)
	@LOOP
		0;JMP   //Unconditional jump to LOOP
(EXIT)
	@EXIT
		0;JMP   //Infinite loop to terminate program
