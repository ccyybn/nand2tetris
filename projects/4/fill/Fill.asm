// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

@color
M=0

(LOOP)
@24576
D=M
@PRINT
D;JEQ

@color
M=-1

(PRINT)

@8192
D=A
@n
M=D

@16383
D=A
@offset
M=D

(PRINT_LOOP)
@offset
D=M
@n
D=D+M
@addr
M=D

@color
D=M

@addr
A=M
M=D

@n
M=M-1
D=M

@PRINT_LOOP
D;JGT

@color
M=0
@LOOP
0;JMP
