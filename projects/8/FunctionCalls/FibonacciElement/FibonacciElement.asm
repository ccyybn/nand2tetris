@256
D=A
@SP
M=D
// push returnAddress
@bootstrap$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - nargs
@5
D=A
@SP
D=M-D
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(bootstrap$ret.0)
@END
0;JMP
// function Sys.init 0
(Sys.init)
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Main.fibonacci 1
// push returnAddress
@Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - nargs
@6
D=A
@SP
D=M-D
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Sys.init$ret.0)
// label END
(Sys.init$END)
// goto END
@Sys.init$END
0;JMP
// function Main.fibonacci 0
(Main.fibonacci)
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
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@COMPARE_TRUE_0
D;JLT
@SP
A=M
M=0
@COMPARE_FALSE_0
0;JMP
(COMPARE_TRUE_0)
@SP
A=M
M=-1
(COMPARE_FALSE_0)
@SP
M=M+1
// if-goto N_LT_2
@SP
M=M-1
A=M
D=M
@Main.fibonacci$N_LT_2
D;JNE
// goto N_GE_2
@Main.fibonacci$N_GE_2
0;JMP
// label N_LT_2
(Main.fibonacci$N_LT_2)
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
// label N_GE_2
(Main.fibonacci$N_GE_2)
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
// push constant 2
@2
D=A
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
// call Main.fibonacci 1
// push returnAddress
@Main.fibonacci$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - nargs
@6
D=A
@SP
D=M-D
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci$ret.0)
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
// push constant 1
@1
D=A
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
// call Main.fibonacci 1
// push returnAddress
@Main.fibonacci$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP - 5 - nargs
@6
D=A
@SP
D=M-D
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci$ret.1)
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
