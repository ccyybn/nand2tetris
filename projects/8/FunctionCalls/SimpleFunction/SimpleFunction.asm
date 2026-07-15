// function SimpleFunction.test 2
(SimpleFunction.test)
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1
// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1
// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1
// return
// Retrieve retAddr and put it into R13 before setting the return value; otherwise, the return value will overwrite it when nargs==0
@5
D=A
@LCL
A=M-D
D=M
@R13
M=D
// Get the return value at the top of the stack and put it at *ARG
@SP
A=M-1
D=M
@ARG
A=M
M=D
// Restore SP, SP = ARG + 1
@ARG
D=M
@SP
M=D+1
// Restore THAT
@LCL
A=M-1
D=M
@THAT
M=D
// Restore THIS
@2
D=A
@LCL
A=M-D
D=M
@THIS
M=D
// Restore ARG
@3
D=A
@LCL
A=M-D
D=M
@ARG
M=D
// Restore LCL
@4
D=A
@LCL
A=M-D
D=M
@LCL
M=D
// goto retAddr
@R13
A=M
0;JMP
(END)
@END
0;JMP
