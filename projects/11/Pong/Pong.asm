@256
D=A
@SP
M=D
@0
D=A
@R13
M=D
@Sys.init
D=A
@R14
M=D
@bootstrap$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(bootstrap$ret.0)
@END
0;JMP
// function Sys.init 0
(Sys.init)
// call Memory.init 0
@0
D=A
@R13
M=D
@Memory.init
D=A
@R14
M=D
@Sys.init$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.init$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call Math.init 0
@0
D=A
@R13
M=D
@Math.init
D=A
@R14
M=D
@Sys.init$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.init$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call Screen.init 0
@0
D=A
@R13
M=D
@Screen.init
D=A
@R14
M=D
@Sys.init$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.init$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call Output.init 0
@0
D=A
@R13
M=D
@Output.init
D=A
@R14
M=D
@Sys.init$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.init$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call Keyboard.init 0
@0
D=A
@R13
M=D
@Keyboard.init
D=A
@R14
M=D
@Sys.init$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.init$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call Main.main 0
@0
D=A
@R13
M=D
@Main.main
D=A
@R14
M=D
@Sys.init$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.init$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call Sys.halt 0
@0
D=A
@R13
M=D
@Sys.halt
D=A
@R14
M=D
@Sys.init$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.init$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Sys.halt 0
(Sys.halt)
// label L0
(Sys.halt$L0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L1
@SP
AM=M-1
D=M
@Sys.halt$L1
D;JNE
// goto L0
@Sys.halt$L0
0;JMP
// label L1
(Sys.halt$L1)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Sys.wait 2
(Sys.wait)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_0
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_0)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L2
@SP
AM=M-1
D=M
@Sys.wait$L2
D;JNE
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@Sys.wait$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.wait$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L3
@Sys.wait$L3
0;JMP
// label L2
(Sys.wait$L2)
// label L3
(Sys.wait$L3)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L4
(Sys.wait$L4)
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
// lt
@CMP_RET_1
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_1)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L5
@SP
AM=M-1
D=M
@Sys.wait$L5
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L6
(Sys.wait$L6)
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
// push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_2
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_2)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L7
@SP
AM=M-1
D=M
@Sys.wait$L7
D;JNE
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L6
@Sys.wait$L6
0;JMP
// label L7
(Sys.wait$L7)
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L4
@Sys.wait$L4
0;JMP
// label L5
(Sys.wait$L5)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Sys.error 1
(Sys.error)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@Sys.error$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.error$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@Sys.error$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.error$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@Sys.error$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.error$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@Sys.error$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.error$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@Sys.error$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.error$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@Sys.error$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.error$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// call String.dispose 1
@1
D=A
@R13
M=D
@String.dispose
D=A
@R14
M=D
@Sys.error$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Sys.error$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.new 0
(Ball.new)
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@Ball.new$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.new$ret.0)
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
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
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 10
@10
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 11
@11
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 12
@12
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 13
@13
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.show 1
@1
D=A
@R13
M=D
@Ball.show
D=A
@R14
M=D
@Ball.new$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.new$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.dispose 0
(Ball.dispose)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@Ball.dispose$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.dispose$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.show 0
(Ball.show)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Ball.show$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.show$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.draw 1
@1
D=A
@R13
M=D
@Ball.draw
D=A
@R14
M=D
@Ball.show$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.show$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.hide 0
(Ball.hide)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Ball.hide$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.hide$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.draw 1
@1
D=A
@R13
M=D
@Ball.draw
D=A
@R14
M=D
@Ball.hide$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.hide$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.draw 0
(Ball.draw)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@Ball.draw$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.draw$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.getLeft 0
(Ball.getLeft)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.getRight 0
(Ball.getRight)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// function Ball.setDestination 3
(Ball.setDestination)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
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
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@Ball.setDestination$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.setDestination$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@Ball.setDestination$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.setDestination$ret.1)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// lt
@CMP_RET_3
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_3)
// pop this 7
@7
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L0
@SP
AM=M-1
D=M
@Ball.setDestination$L0
D;JNE
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
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_4
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_4)
// pop this 8
@8
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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
// lt
@CMP_RET_5
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_5)
// pop this 9
@9
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L1
@Ball.setDestination$L1
0;JMP
// label L0
(Ball.setDestination$L0)
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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
// lt
@CMP_RET_6
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_6)
// pop this 8
@8
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_7
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_7)
// pop this 9
@9
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L1
(Ball.setDestination$L1)
// push constant 2
@2
D=A
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
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.setDestination$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.setDestination$ret.2)
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
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 2
@2
D=A
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
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.setDestination$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.setDestination$ret.3)
// pop this 5
@5
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 2
@2
D=A
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
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.setDestination$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.setDestination$ret.4)
// pop this 6
@6
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.move 0
(Ball.move)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.hide 1
@1
D=A
@R13
M=D
@Ball.hide
D=A
@R14
M=D
@Ball.move$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.move$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_8
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_8)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L2
@SP
AM=M-1
D=M
@Ball.move$L2
D;JNE
// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 5
@5
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L3
@Ball.move$L3
0;JMP
// label L2
(Ball.move$L2)
// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 9
@9
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@Ball.move$L4
D;JNE
// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L6
@SP
AM=M-1
D=M
@Ball.move$L6
D;JNE
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L7
@Ball.move$L7
0;JMP
// label L6
(Ball.move$L6)
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L7
(Ball.move$L7)
// goto L5
@Ball.move$L5
0;JMP
// label L4
(Ball.move$L4)
// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L8
@SP
AM=M-1
D=M
@Ball.move$L8
D;JNE
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L9
@Ball.move$L9
0;JMP
// label L8
(Ball.move$L8)
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L9
(Ball.move$L9)
// label L5
(Ball.move$L5)
// label L3
(Ball.move$L3)
// push this 8
@8
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L10
@SP
AM=M-1
D=M
@Ball.move$L10
D;JNE
// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L12
@SP
AM=M-1
D=M
@Ball.move$L12
D;JNE
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L13
@Ball.move$L13
0;JMP
// label L12
(Ball.move$L12)
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L13
(Ball.move$L13)
// goto L11
@Ball.move$L11
0;JMP
// label L10
(Ball.move$L10)
// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L14
@SP
AM=M-1
D=M
@Ball.move$L14
D;JNE
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L15
@Ball.move$L15
0;JMP
// label L14
(Ball.move$L14)
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L15
(Ball.move$L15)
// label L11
(Ball.move$L11)
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 10
@10
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_9
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_9)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L16
@SP
AM=M-1
D=M
@Ball.move$L16
D;JNE
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 10
@10
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L17
@Ball.move$L17
0;JMP
// label L16
(Ball.move$L16)
// label L17
(Ball.move$L17)
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 11
@11
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_10
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_10)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L18
@SP
AM=M-1
D=M
@Ball.move$L18
D;JNE
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 11
@11
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L19
@Ball.move$L19
0;JMP
// label L18
(Ball.move$L18)
// label L19
(Ball.move$L19)
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 12
@12
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_11
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_11)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L20
@SP
AM=M-1
D=M
@Ball.move$L20
D;JNE
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 12
@12
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L21
@Ball.move$L21
0;JMP
// label L20
(Ball.move$L20)
// label L21
(Ball.move$L21)
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 13
@13
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_12
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_12)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L22
@SP
AM=M-1
D=M
@Ball.move$L22
D;JNE
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 13
@13
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L23
@Ball.move$L23
0;JMP
// label L22
(Ball.move$L22)
// label L23
(Ball.move$L23)
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.show 1
@1
D=A
@R13
M=D
@Ball.show
D=A
@R14
M=D
@Ball.move$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.move$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 14
@14
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Ball.bounce 5
(Ball.bounce)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Ball.bounce$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.0)
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Ball.bounce$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.1)
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_13
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_13)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L24
@SP
AM=M-1
D=M
@Ball.bounce$L24
D;JNE
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L25
@Ball.bounce$L25
0;JMP
// label L24
(Ball.bounce$L24)
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_14
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_14)
// not
@SP
A=M
A=A-1
M=!M
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_15
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_15)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_16
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_16)
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// eq
@CMP_RET_17
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_17)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L26
@SP
AM=M-1
D=M
@Ball.bounce$L26
D;JNE
// push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L27
@Ball.bounce$L27
0;JMP
// label L26
(Ball.bounce$L26)
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L27
(Ball.bounce$L27)
// label L25
(Ball.bounce$L25)
// push this 14
@14
D=A
@THIS
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
// eq
@CMP_RET_18
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_18)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L28
@SP
AM=M-1
D=M
@Ball.bounce$L28
D;JNE
// push constant 506
@506
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.2)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Ball.bounce$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.3)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 1
@1
D=A
@THIS
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
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.4)
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L29
@Ball.bounce$L29
0;JMP
// label L28
(Ball.bounce$L28)
// push this 14
@14
D=A
@THIS
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
// eq
@CMP_RET_19
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_19)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L30
@SP
AM=M-1
D=M
@Ball.bounce$L30
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.5)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Ball.bounce$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.6)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 1
@1
D=A
@THIS
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
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.7)
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L31
@Ball.bounce$L31
0;JMP
// label L30
(Ball.bounce$L30)
// push this 14
@14
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_20
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_20)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L32
@SP
AM=M-1
D=M
@Ball.bounce$L32
D;JNE
// push constant 250
@250
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.8
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.8)
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Ball.bounce$ret.9
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.9)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.10
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.10)
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L33
@Ball.bounce$L33
0;JMP
// label L32
(Ball.bounce$L32)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.11
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.11)
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Ball.bounce$ret.12
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.12)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Ball.bounce$ret.13
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.13)
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L33
(Ball.bounce$L33)
// label L31
(Ball.bounce$L31)
// label L29
(Ball.bounce$L29)
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
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
// call Ball.setDestination 3
@3
D=A
@R13
M=D
@Ball.setDestination
D=A
@R14
M=D
@Ball.bounce$ret.14
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Ball.bounce$ret.14)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Keyboard.init 0
(Keyboard.init)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Keyboard.keyPressed 1
(Keyboard.keyPressed)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Keyboard.keyPressed$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.keyPressed$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_21
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_21)
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
// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_22
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_22)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_23
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_23)
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
// push constant 153
@153
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_24
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_24)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L0
@SP
AM=M-1
D=M
@Keyboard.keyPressed$L0
D;JNE
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
// return
@__VM_RETURN__
0;JMP
// goto L1
@Keyboard.keyPressed$L1
0;JMP
// label L0
(Keyboard.keyPressed$L0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// label L1
(Keyboard.keyPressed$L1)
// function Keyboard.readChar 2
(Keyboard.readChar)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L2
(Keyboard.readChar$L2)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_25
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_25)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L3
@SP
AM=M-1
D=M
@Keyboard.readChar$L3
D;JNE
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@Keyboard.readChar$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readChar$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L2
@Keyboard.readChar$L2
0;JMP
// label L3
(Keyboard.readChar$L3)
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
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L4
(Keyboard.readChar$L4)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_26
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_26)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L5
@SP
AM=M-1
D=M
@Keyboard.readChar$L5
D;JNE
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@Keyboard.readChar$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readChar$ret.1)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L4
@Keyboard.readChar$L4
0;JMP
// label L5
(Keyboard.readChar$L5)
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
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_27
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_27)
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
// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_28
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_28)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_29
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_29)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L6
@SP
AM=M-1
D=M
@Keyboard.readChar$L6
D;JNE
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
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@Keyboard.readChar$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readChar$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L7
@Keyboard.readChar$L7
0;JMP
// label L6
(Keyboard.readChar$L6)
// label L7
(Keyboard.readChar$L7)
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
// return
@__VM_RETURN__
0;JMP
// function Keyboard.readLine 3
(Keyboard.readLine)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@Keyboard.readLine$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readLine$ret.0)
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@Keyboard.readLine$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readLine$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L8
(Keyboard.readLine$L8)
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
// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_30
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_30)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L9
@SP
AM=M-1
D=M
@Keyboard.readLine$L9
D;JNE
// call Keyboard.readChar 0
@0
D=A
@R13
M=D
@Keyboard.readChar
D=A
@R14
M=D
@Keyboard.readLine$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readLine$ret.2)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_31
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_31)
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
// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_32
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_32)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
// push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_33
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_33)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L10
@SP
AM=M-1
D=M
@Keyboard.readLine$L10
D;JNE
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
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
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@Keyboard.readLine$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readLine$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L11
@Keyboard.readLine$L11
0;JMP
// label L10
(Keyboard.readLine$L10)
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
// push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_34
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_34)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_35
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_35)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L12
@SP
AM=M-1
D=M
@Keyboard.readLine$L12
D;JNE
// call Output.backSpace 0
@0
D=A
@R13
M=D
@Output.backSpace
D=A
@R14
M=D
@Keyboard.readLine$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readLine$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call String.eraseLastChar 1
@1
D=A
@R13
M=D
@String.eraseLastChar
D=A
@R14
M=D
@Keyboard.readLine$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readLine$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
AM=M-1
D=M
A=A-1
M=M-D
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L13
@Keyboard.readLine$L13
0;JMP
// label L12
(Keyboard.readLine$L12)
// label L13
(Keyboard.readLine$L13)
// label L11
(Keyboard.readLine$L11)
// goto L8
@Keyboard.readLine$L8
0;JMP
// label L9
(Keyboard.readLine$L9)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Keyboard.readInt 3
(Keyboard.readInt)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@Keyboard.readInt$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.0)
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@Keyboard.readInt$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L14
(Keyboard.readInt$L14)
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
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_36
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_36)
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
// push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_37
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_37)
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
// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_38
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_38)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L15
@SP
AM=M-1
D=M
@Keyboard.readInt$L15
D;JNE
// call Keyboard.readChar 0
@0
D=A
@R13
M=D
@Keyboard.readChar
D=A
@R14
M=D
@Keyboard.readInt$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.2)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_39
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_39)
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
// push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_40
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_40)
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
// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_41
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_41)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_42
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_42)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L16
@SP
AM=M-1
D=M
@Keyboard.readInt$L16
D;JNE
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
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
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@Keyboard.readInt$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L17
@Keyboard.readInt$L17
0;JMP
// label L16
(Keyboard.readInt$L16)
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
// push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_43
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_43)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_44
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_44)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L18
@SP
AM=M-1
D=M
@Keyboard.readInt$L18
D;JNE
// call Output.backSpace 0
@0
D=A
@R13
M=D
@Output.backSpace
D=A
@R14
M=D
@Keyboard.readInt$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call String.eraseLastChar 1
@1
D=A
@R13
M=D
@String.eraseLastChar
D=A
@R14
M=D
@Keyboard.readInt$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
AM=M-1
D=M
A=A-1
M=M-D
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L19
@Keyboard.readInt$L19
0;JMP
// label L18
(Keyboard.readInt$L18)
// label L19
(Keyboard.readInt$L19)
// label L17
(Keyboard.readInt$L17)
// goto L14
@Keyboard.readInt$L14
0;JMP
// label L15
(Keyboard.readInt$L15)
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
// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_45
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_45)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L20
@SP
AM=M-1
D=M
@Keyboard.readInt$L20
D;JNE
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@Keyboard.readInt$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L21
@Keyboard.readInt$L21
0;JMP
// label L20
(Keyboard.readInt$L20)
// label L21
(Keyboard.readInt$L21)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call String.intValue 1
@1
D=A
@R13
M=D
@String.intValue
D=A
@R14
M=D
@Keyboard.readInt$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Keyboard.readInt$ret.7)
// return
@__VM_RETURN__
0;JMP
// function Memory.init 0
(Memory.init)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 0
@SP
AM=M-1
D=M
@Memory.0
M=D
// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 1
@SP
AM=M-1
D=M
@Memory.1
M=D
// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 2
@SP
AM=M-1
D=M
@Memory.2
M=D
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 14336
@14336
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
@Memory.1
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Memory.peek 0
(Memory.peek)
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
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Memory.poke 0
(Memory.poke)
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
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
AM=M-1
D=M
A=A-1
M=D+M
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
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Memory.alloc 3
(Memory.alloc)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_46
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_46)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L0
@SP
AM=M-1
D=M
@Memory.alloc$L0
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L1
@Memory.alloc$L1
0;JMP
// label L0
(Memory.alloc$L0)
// label L1
(Memory.alloc$L1)
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L2
(Memory.alloc$L2)
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// lt
@CMP_RET_47
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_47)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_48
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_48)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L3
@SP
AM=M-1
D=M
@Memory.alloc$L3
D;JNE
// push local 2
@2
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L2
@Memory.alloc$L2
0;JMP
// label L3
(Memory.alloc$L3)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_49
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_49)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@Memory.alloc$L4
D;JNE
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 2
@2
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
AM=M-1
D=M
A=A-1
M=D+M
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
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
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
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
AM=M-1
D=M
A=A-1
M=D+M
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
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// return
@__VM_RETURN__
0;JMP
// goto L5
@Memory.alloc$L5
0;JMP
// label L4
(Memory.alloc$L4)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@Memory.alloc$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Memory.alloc$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// return
@__VM_RETURN__
0;JMP
// label L5
(Memory.alloc$L5)
// function Memory.deAlloc 9
(Memory.deAlloc)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
AM=M-1
D=M
A=A-1
M=M-D
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 1
@Memory.1
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L6
(Memory.deAlloc$L6)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_50
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_50)
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_51
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_51)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L7
@SP
AM=M-1
D=M
@Memory.deAlloc$L7
D;JNE
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_52
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_52)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L8
@SP
AM=M-1
D=M
@Memory.deAlloc$L8
D;JNE
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
// push local 5
@5
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 7
@7
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 0
@Memory.0
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
AM=M-1
D=M
A=A-1
M=D+M
// push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L9
@Memory.deAlloc$L9
0;JMP
// label L8
(Memory.deAlloc$L8)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_53
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_53)
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_54
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_54)
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_55
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_55)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L10
@SP
AM=M-1
D=M
@Memory.deAlloc$L10
D;JNE
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 4
@4
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 0
@Memory.0
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 7
@7
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L11
@Memory.deAlloc$L11
0;JMP
// label L10
(Memory.deAlloc$L10)
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L11
(Memory.deAlloc$L11)
// label L9
(Memory.deAlloc$L9)
// goto L6
@Memory.deAlloc$L6
0;JMP
// label L7
(Memory.deAlloc$L7)
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_56
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_56)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L12
@SP
AM=M-1
D=M
@Memory.deAlloc$L12
D;JNE
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.error 1
@1
D=A
@R13
M=D
@Sys.error
D=A
@R14
M=D
@Memory.deAlloc$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Memory.deAlloc$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call Sys.halt 0
@0
D=A
@R13
M=D
@Sys.halt
D=A
@R14
M=D
@Memory.deAlloc$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Memory.deAlloc$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L13
@Memory.deAlloc$L13
0;JMP
// label L12
(Memory.deAlloc$L12)
// push local 6
@6
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 8
@8
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 7
@7
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
AM=M-1
D=M
A=A-1
M=D+M
// push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_57
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_57)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L14
@SP
AM=M-1
D=M
@Memory.deAlloc$L14
D;JNE
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 6
@6
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
AM=M-1
D=M
A=A-1
M=D+M
// push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 6
@6
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push local 8
@8
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L15
@Memory.deAlloc$L15
0;JMP
// label L14
(Memory.deAlloc$L14)
// label L15
(Memory.deAlloc$L15)
// label L13
(Memory.deAlloc$L13)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Array.new 0
(Array.new)
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
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@Array.new$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Array.new$ret.0)
// return
@__VM_RETURN__
0;JMP
// function Array.dispose 0
(Array.dispose)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@Array.dispose$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Array.dispose$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function PongGame.new 0
(PongGame.new)
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@PongGame.new$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.0)
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// call Screen.clearScreen 0
@0
D=A
@R13
M=D
@Screen.clearScreen
D=A
@R14
M=D
@PongGame.new$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 6
@6
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 230
@230
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1
// push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Bat.new 4
@4
D=A
@R13
M=D
@Bat.new
D=A
@R14
M=D
@PongGame.new$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.2)
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 253
@253
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 222
@222
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Ball.new 6
@6
D=A
@R13
M=D
@Ball.new
D=A
@R14
M=D
@PongGame.new$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.3)
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 400
@400
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Ball.setDestination 3
@3
D=A
@R13
M=D
@Ball.setDestination
D=A
@R14
M=D
@PongGame.new$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 238
@238
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 240
@240
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@PongGame.new$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@PongGame.new$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@PongGame.new$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.7)
// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.8
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.8)
// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.9
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.9)
// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.10
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.10)
// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.11
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.11)
// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.12
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.12)
// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.13
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.13)
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.14
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.14)
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.new$ret.15
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.15)
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@PongGame.new$ret.16
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.new$ret.16)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 5
@5
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function PongGame.dispose 0
(PongGame.dispose)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.dispose 1
@1
D=A
@R13
M=D
@Bat.dispose
D=A
@R14
M=D
@PongGame.dispose$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.dispose$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.dispose 1
@1
D=A
@R13
M=D
@Ball.dispose
D=A
@R14
M=D
@PongGame.dispose$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.dispose$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@PongGame.dispose$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.dispose$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function PongGame.newInstance 0
(PongGame.newInstance)
// call PongGame.new 0
@0
D=A
@R13
M=D
@PongGame.new
D=A
@R14
M=D
@PongGame.newInstance$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.newInstance$ret.0)
// pop static 0
@SP
AM=M-1
D=M
@PongGame.0
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function PongGame.getInstance 0
(PongGame.getInstance)
// push static 0
@PongGame.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function PongGame.run 1
(PongGame.run)
D=0
@SP
A=M
M=D
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// label L0
(PongGame.run$L0)
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L1
@SP
AM=M-1
D=M
@PongGame.run$L1
D;JNE
// label L2
(PongGame.run$L2)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_58
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_58)
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L3
@SP
AM=M-1
D=M
@PongGame.run$L3
D;JNE
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@PongGame.run$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.move 1
@1
D=A
@R13
M=D
@Bat.move
D=A
@R14
M=D
@PongGame.run$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call PongGame.moveBall 1
@1
D=A
@R13
M=D
@PongGame.moveBall
D=A
@R14
M=D
@PongGame.run$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.wait 1
@1
D=A
@R13
M=D
@Sys.wait
D=A
@R14
M=D
@PongGame.run$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L2
@PongGame.run$L2
0;JMP
// label L3
(PongGame.run$L3)
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
// push constant 130
@130
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_59
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_59)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@PongGame.run$L4
D;JNE
// push this 0
@0
D=A
@THIS
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
// call Bat.setDirection 2
@2
D=A
@R13
M=D
@Bat.setDirection
D=A
@R14
M=D
@PongGame.run$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L5
@PongGame.run$L5
0;JMP
// label L4
(PongGame.run$L4)
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
// push constant 132
@132
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_60
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_60)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L6
@SP
AM=M-1
D=M
@PongGame.run$L6
D;JNE
// push this 0
@0
D=A
@THIS
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
// call Bat.setDirection 2
@2
D=A
@R13
M=D
@Bat.setDirection
D=A
@R14
M=D
@PongGame.run$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L7
@PongGame.run$L7
0;JMP
// label L6
(PongGame.run$L6)
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
// push constant 140
@140
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_61
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_61)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L8
@SP
AM=M-1
D=M
@PongGame.run$L8
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L9
@PongGame.run$L9
0;JMP
// label L8
(PongGame.run$L8)
// label L9
(PongGame.run$L9)
// label L7
(PongGame.run$L7)
// label L5
(PongGame.run$L5)
// label L10
(PongGame.run$L10)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_62
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_62)
// not
@SP
A=M
A=A-1
M=!M
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L11
@SP
AM=M-1
D=M
@PongGame.run$L11
D;JNE
// call Keyboard.keyPressed 0
@0
D=A
@R13
M=D
@Keyboard.keyPressed
D=A
@R14
M=D
@PongGame.run$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.6)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.move 1
@1
D=A
@R13
M=D
@Bat.move
D=A
@R14
M=D
@PongGame.run$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.7)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call PongGame.moveBall 1
@1
D=A
@R13
M=D
@PongGame.moveBall
D=A
@R14
M=D
@PongGame.run$ret.8
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.8)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.wait 1
@1
D=A
@R13
M=D
@Sys.wait
D=A
@R14
M=D
@PongGame.run$ret.9
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.9)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L10
@PongGame.run$L10
0;JMP
// label L11
(PongGame.run$L11)
// goto L0
@PongGame.run$L0
0;JMP
// label L1
(PongGame.run$L1)
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L12
@SP
AM=M-1
D=M
@PongGame.run$L12
D;JNE
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@PongGame.run$ret.10
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.10)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@PongGame.run$ret.11
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.11)
// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.12
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.12)
// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.13
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.13)
// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.14
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.14)
// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.15
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.15)
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.16
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.16)
// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.17
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.17)
// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.18
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.18)
// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.19
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.19)
// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@PongGame.run$ret.20
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.20)
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@PongGame.run$ret.21
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.run$ret.21)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L13
@PongGame.run$L13
0;JMP
// label L12
(PongGame.run$L12)
// label L13
(PongGame.run$L13)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function PongGame.moveBall 5
(PongGame.moveBall)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.move 1
@1
D=A
@R13
M=D
@Ball.move
D=A
@R14
M=D
@PongGame.moveBall$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.0)
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_63
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_63)
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 5
@5
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_64
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_64)
// not
@SP
A=M
A=A-1
M=!M
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L14
@SP
AM=M-1
D=M
@PongGame.moveBall$L14
D;JNE
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 5
@5
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.getLeft 1
@1
D=A
@R13
M=D
@Bat.getLeft
D=A
@R14
M=D
@PongGame.moveBall$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.1)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.getRight 1
@1
D=A
@R13
M=D
@Bat.getRight
D=A
@R14
M=D
@PongGame.moveBall$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.2)
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.getLeft 1
@1
D=A
@R13
M=D
@Ball.getLeft
D=A
@R14
M=D
@PongGame.moveBall$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.3)
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Ball.getRight 1
@1
D=A
@R13
M=D
@Ball.getRight
D=A
@R14
M=D
@PongGame.moveBall$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.4)
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_65
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_65)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L16
@SP
AM=M-1
D=M
@PongGame.moveBall$L16
D;JNE
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
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_66
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_66)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_67
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_67)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L18
@SP
AM=M-1
D=M
@PongGame.moveBall$L18
D;JNE
// push local 4
@4
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
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// lt
@CMP_RET_68
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_68)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L20
@SP
AM=M-1
D=M
@PongGame.moveBall$L20
D;JNE
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L21
@PongGame.moveBall$L21
0;JMP
// label L20
(PongGame.moveBall$L20)
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// gt
@CMP_RET_69
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_69)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L22
@SP
AM=M-1
D=M
@PongGame.moveBall$L22
D;JNE
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L23
@PongGame.moveBall$L23
0;JMP
// label L22
(PongGame.moveBall$L22)
// label L23
(PongGame.moveBall$L23)
// label L21
(PongGame.moveBall$L21)
// push this 6
@6
D=A
@THIS
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
AM=M-1
D=M
A=A-1
M=M-D
// pop this 6
@6
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.setWidth 2
@2
D=A
@R13
M=D
@Bat.setWidth
D=A
@R14
M=D
@PongGame.moveBall$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 4
@4
D=A
@THIS
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@PongGame.moveBall$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Output.printInt 1
@1
D=A
@R13
M=D
@Output.printInt
D=A
@R14
M=D
@PongGame.moveBall$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.7)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L19
@PongGame.moveBall$L19
0;JMP
// label L18
(PongGame.moveBall$L18)
// label L19
(PongGame.moveBall$L19)
// goto L17
@PongGame.moveBall$L17
0;JMP
// label L16
(PongGame.moveBall$L16)
// label L17
(PongGame.moveBall$L17)
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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
// call Ball.bounce 2
@2
D=A
@R13
M=D
@Ball.bounce
D=A
@R14
M=D
@PongGame.moveBall$ret.8
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(PongGame.moveBall$ret.8)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L15
@PongGame.moveBall$L15
0;JMP
// label L14
(PongGame.moveBall$L14)
// label L15
(PongGame.moveBall$L15)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.new 0
(Bat.new)
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@Bat.new$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.new$ret.0)
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
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
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.show 1
@1
D=A
@R13
M=D
@Bat.show
D=A
@R14
M=D
@Bat.new$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.new$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.dispose 0
(Bat.dispose)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.deAlloc 1
@1
D=A
@R13
M=D
@Memory.deAlloc
D=A
@R14
M=D
@Bat.dispose$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.dispose$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.show 0
(Bat.show)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Bat.show$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.show$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.draw 1
@1
D=A
@R13
M=D
@Bat.draw
D=A
@R14
M=D
@Bat.show$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.show$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.hide 0
(Bat.hide)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Bat.hide$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.hide$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.draw 1
@1
D=A
@R13
M=D
@Bat.draw
D=A
@R14
M=D
@Bat.hide$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.hide$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.draw 0
(Bat.draw)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@Bat.draw$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.draw$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.setDirection 0
(Bat.setDirection)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
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
// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.getLeft 0
(Bat.getLeft)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.getRight 0
(Bat.getRight)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// function Bat.setWidth 0
(Bat.setWidth)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.hide 1
@1
D=A
@R13
M=D
@Bat.hide
D=A
@R14
M=D
@Bat.setWidth$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.setWidth$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Bat.show 1
@1
D=A
@R13
M=D
@Bat.show
D=A
@R14
M=D
@Bat.setWidth$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.setWidth$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Bat.move 0
(Bat.move)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 4
@4
D=A
@THIS
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
// eq
@CMP_RET_70
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_70)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L0
@SP
AM=M-1
D=M
@Bat.move$L0
D;JNE
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_71
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_71)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L2
@SP
AM=M-1
D=M
@Bat.move$L2
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L3
@Bat.move$L3
0;JMP
// label L2
(Bat.move$L2)
// label L3
(Bat.move$L3)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Bat.move$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@Bat.move$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Bat.move$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@Bat.move$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L1
@Bat.move$L1
0;JMP
// label L0
(Bat.move$L0)
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_72
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_72)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@Bat.move$L4
D;JNE
// push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L5
@Bat.move$L5
0;JMP
// label L4
(Bat.move$L4)
// label L5
(Bat.move$L5)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Bat.move$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
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
AM=M-1
D=M
A=A-1
M=M-D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@Bat.move$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Bat.move$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawRectangle 4
@4
D=A
@R13
M=D
@Screen.drawRectangle
D=A
@R14
M=D
@Bat.move$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Bat.move$ret.7)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L1
(Bat.move$L1)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.init 0
(Output.init)
// call Output.initMap 0
@0
D=A
@R13
M=D
@Output.initMap
D=A
@R14
M=D
@Output.init$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.init$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 3
@SP
AM=M-1
D=M
@Output.3
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 4
@SP
AM=M-1
D=M
@Output.4
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.initMap 1
(Output.initMap)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@Output.initMap$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.0)
// pop static 0
@SP
AM=M-1
D=M
@Output.0
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.7)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.8
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.8)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.9
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.9)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.10
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.10)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.11
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.11)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.12
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.12)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.13
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.13)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.14
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.14)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.15
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.15)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.16
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.16)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.17
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.17)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.18
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.18)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.19
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.19)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.20
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.20)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.21
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.21)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.22
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.22)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.23
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.23)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.24
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.24)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.25
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.25)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.26
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.26)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.27
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.27)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.28
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.28)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.29
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.29)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.30
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.30)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.31
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.31)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.32
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.32)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.33
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.33)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.34
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.34)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.35
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.35)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.36
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.36)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.37
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.37)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.38
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.38)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.39
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.39)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.40
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.40)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.41
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.41)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.create 12
@12
D=A
@R13
M=D
@Output.create
D=A
@R14
M=D
@Output.initMap$ret.42
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.initMap$ret.42)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.create 1
(Output.create)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@Output.create$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.create$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 0
@Output.0
D=M
@SP
A=M
M=D
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
AM=M-1
D=M
A=A-1
M=D+M
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
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 6
@6
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 7
@7
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 8
@8
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 9
@9
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 10
@10
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 11
@11
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.getMap 0
(Output.getMap)
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
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_73
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_73)
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
// push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_74
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_74)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L0
@SP
AM=M-1
D=M
@Output.getMap$L0
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L1
@Output.getMap$L1
0;JMP
// label L0
(Output.getMap$L0)
// label L1
(Output.getMap$L1)
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
// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.moveCursor 0
(Output.moveCursor)
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
// pop static 3
@SP
AM=M-1
D=M
@Output.3
M=D
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
// pop static 4
@SP
AM=M-1
D=M
@Output.4
M=D
// push constant 8
@8
D=A
@SP
A=M
M=D
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
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Output.moveCursor$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.moveCursor$ret.0)
// pop static 1
@SP
AM=M-1
D=M
@Output.1
M=D
// push constant 11
@11
D=A
@SP
A=M
M=D
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
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Output.moveCursor$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.moveCursor$ret.1)
// pop static 2
@SP
AM=M-1
D=M
@Output.2
M=D
// call Output.eraseChar 0
@0
D=A
@R13
M=D
@Output.eraseChar
D=A
@R14
M=D
@Output.moveCursor$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.moveCursor$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.eraseChar 1
(Output.eraseChar)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Output.eraseChar$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.eraseChar$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L2
(Output.eraseChar$L2)
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
// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_75
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_75)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L3
@SP
AM=M-1
D=M
@Output.eraseChar$L3
D;JNE
// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 2
@Output.2
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push static 2
@Output.2
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawLine 4
@4
D=A
@R13
M=D
@Screen.drawLine
D=A
@R14
M=D
@Output.eraseChar$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.eraseChar$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L2
@Output.eraseChar$L2
0;JMP
// label L3
(Output.eraseChar$L3)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.printChar 6
(Output.printChar)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// call Screen.setColor 1
@1
D=A
@R13
M=D
@Screen.setColor
D=A
@R14
M=D
@Output.printChar$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_76
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_76)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@Output.printChar$L4
D;JNE
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@Output.printChar$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L5
@Output.printChar$L5
0;JMP
// label L4
(Output.printChar$L4)
// label L5
(Output.printChar$L5)
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
// push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_77
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_77)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L6
@SP
AM=M-1
D=M
@Output.printChar$L6
D;JNE
// call Output.backSpace 0
@0
D=A
@R13
M=D
@Output.backSpace
D=A
@R14
M=D
@Output.printChar$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L7
@Output.printChar$L7
0;JMP
// label L6
(Output.printChar$L6)
// label L7
(Output.printChar$L7)
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
// call Output.getMap 1
@1
D=A
@R13
M=D
@Output.getMap
D=A
@R14
M=D
@Output.printChar$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.3)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L8
(Output.printChar$L8)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_78
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_78)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L9
@SP
AM=M-1
D=M
@Output.printChar$L9
D;JNE
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L10
(Output.printChar$L10)
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
// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_79
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_79)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L11
@SP
AM=M-1
D=M
@Output.printChar$L11
D;JNE
// push local 3
@3
D=A
@LCL
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
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Output.printChar$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.4)
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 4
@4
D=A
@LCL
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
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Output.printChar$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.5)
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 5
@5
D=A
@LCL
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
// eq
@CMP_RET_80
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_80)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L12
@SP
AM=M-1
D=M
@Output.printChar$L12
D;JNE
// push static 1
@Output.1
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
AM=M-1
D=M
A=A-1
M=D+M
// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 2
@2
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
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawPixel 2
@2
D=A
@R13
M=D
@Screen.drawPixel
D=A
@R14
M=D
@Output.printChar$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L13
@Output.printChar$L13
0;JMP
// label L12
(Output.printChar$L12)
// label L13
(Output.printChar$L13)
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L10
@Output.printChar$L10
0;JMP
// label L11
(Output.printChar$L11)
// push local 2
@2
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L8
@Output.printChar$L8
0;JMP
// label L9
(Output.printChar$L9)
// push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_81
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_81)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L14
@SP
AM=M-1
D=M
@Output.printChar$L14
D;JNE
// push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 4
@Output.4
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@Output.printChar$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.7)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L15
@Output.printChar$L15
0;JMP
// label L14
(Output.printChar$L14)
// call Output.println 0
@0
D=A
@R13
M=D
@Output.println
D=A
@R14
M=D
@Output.printChar$ret.8
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printChar$ret.8)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L15
(Output.printChar$L15)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.printString 1
(Output.printString)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L16
(Output.printString$L16)
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
// call String.length 1
@1
D=A
@R13
M=D
@String.length
D=A
@R14
M=D
@Output.printString$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printString$ret.0)
// lt
@CMP_RET_82
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_82)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L17
@SP
AM=M-1
D=M
@Output.printString$L17
D;JNE
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
// call String.charAt 2
@2
D=A
@R13
M=D
@String.charAt
D=A
@R14
M=D
@Output.printString$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printString$ret.1)
// call Output.printChar 1
@1
D=A
@R13
M=D
@Output.printChar
D=A
@R14
M=D
@Output.printString$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printString$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L16
@Output.printString$L16
0;JMP
// label L17
(Output.printString$L17)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.getLength 2
(Output.getLength)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// eq
@CMP_RET_83
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_83)
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
AM=M-1
D=M
A=A-1
M=M-D
// not
@SP
A=M
A=A-1
M=!M
// if-goto L18
@SP
AM=M-1
D=M
@Output.getLength$L18
D;JNE
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L19
@Output.getLength$L19
0;JMP
// label L18
(Output.getLength$L18)
// label L19
(Output.getLength$L19)
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
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@Output.getLength$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.getLength$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_84
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_84)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L20
@SP
AM=M-1
D=M
@Output.getLength$L20
D;JNE
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L21
@Output.getLength$L21
0;JMP
// label L20
(Output.getLength$L20)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L21
(Output.getLength$L21)
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
// push constant 10000
@10000
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_85
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_85)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L22
@SP
AM=M-1
D=M
@Output.getLength$L22
D;JNE
// push constant 5
@5
D=A
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
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// goto L23
@Output.getLength$L23
0;JMP
// label L22
(Output.getLength$L22)
// label L23
(Output.getLength$L23)
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
// push constant 1000
@1000
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_86
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_86)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L24
@SP
AM=M-1
D=M
@Output.getLength$L24
D;JNE
// push constant 4
@4
D=A
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
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// goto L25
@Output.getLength$L25
0;JMP
// label L24
(Output.getLength$L24)
// label L25
(Output.getLength$L25)
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
// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_87
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_87)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L26
@SP
AM=M-1
D=M
@Output.getLength$L26
D;JNE
// push constant 3
@3
D=A
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
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// goto L27
@Output.getLength$L27
0;JMP
// label L26
(Output.getLength$L26)
// label L27
(Output.getLength$L27)
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
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_88
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_88)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L28
@SP
AM=M-1
D=M
@Output.getLength$L28
D;JNE
// push constant 2
@2
D=A
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
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// goto L29
@Output.getLength$L29
0;JMP
// label L28
(Output.getLength$L28)
// label L29
(Output.getLength$L29)
// push constant 1
@1
D=A
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
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// function Output.printInt 2
(Output.printInt)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// call Output.getLength 1
@1
D=A
@R13
M=D
@Output.getLength
D=A
@R14
M=D
@Output.printInt$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printInt$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call String.new 1
@1
D=A
@R13
M=D
@String.new
D=A
@R14
M=D
@Output.printInt$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printInt$ret.1)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call String.setInt 2
@2
D=A
@R13
M=D
@String.setInt
D=A
@R14
M=D
@Output.printInt$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printInt$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// call Output.printString 1
@1
D=A
@R13
M=D
@Output.printString
D=A
@R14
M=D
@Output.printInt$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printInt$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// call String.dispose 1
@1
D=A
@R13
M=D
@String.dispose
D=A
@R14
M=D
@Output.printInt$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.printInt$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.println 1
(Output.println)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push static 3
@Output.3
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_89
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_89)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L30
@SP
AM=M-1
D=M
@Output.println$L30
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L31
@Output.println$L31
0;JMP
// label L30
(Output.println$L30)
// label L31
(Output.println$L31)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@Output.println$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.println$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Output.backSpace 1
(Output.backSpace)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push static 4
@Output.4
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
AM=M-1
D=M
A=A-1
M=M-D
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_90
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_90)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L32
@SP
AM=M-1
D=M
@Output.backSpace$L32
D;JNE
// push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_91
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_91)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L34
@SP
AM=M-1
D=M
@Output.backSpace$L34
D;JNE
// push static 3
@Output.3
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
AM=M-1
D=M
A=A-1
M=M-D
// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@Output.backSpace$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.backSpace$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L35
@Output.backSpace$L35
0;JMP
// label L34
(Output.backSpace$L34)
// label L35
(Output.backSpace$L35)
// goto L33
@Output.backSpace$L33
0;JMP
// label L32
(Output.backSpace$L32)
// push static 3
@Output.3
D=M
@SP
A=M
M=D
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
// call Output.moveCursor 2
@2
D=A
@R13
M=D
@Output.moveCursor
D=A
@R14
M=D
@Output.backSpace$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Output.backSpace$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L33
(Output.backSpace$L33)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Math.init 0
(Math.init)
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 1
@SP
AM=M-1
D=M
@Math.1
M=D
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@Math.init$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Math.init$ret.0)
// pop static 2
@SP
AM=M-1
D=M
@Math.2
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 512
@512
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 1024
@1024
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 4096
@4096
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 8192
@8192
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Math.multiply 3
(Math.multiply)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L0
(Math.multiply$L0)
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
// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_92
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_92)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L1
@SP
AM=M-1
D=M
@Math.multiply$L1
D;JNE
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
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
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
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_93
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_93)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L2
@SP
AM=M-1
D=M
@Math.multiply$L2
D;JNE
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
// push local 2
@2
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L3
@Math.multiply$L3
0;JMP
// label L2
(Math.multiply$L2)
// label L3
(Math.multiply$L3)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 2
@2
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L0
@Math.multiply$L0
0;JMP
// label L1
(Math.multiply$L1)
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
// return
@__VM_RETURN__
0;JMP
// function Math.divide 2
(Math.divide)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_94
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_94)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@Math.divide$L4
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L5
@Math.divide$L5
0;JMP
// label L4
(Math.divide$L4)
// label L5
(Math.divide$L5)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_95
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_95)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_96
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_96)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_97
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_97)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_98
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_98)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@Math.divide$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Math.divide$ret.0)
// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@Math.divide$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Math.divide$ret.1)
// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call Math.divideAbs 2
@2
D=A
@R13
M=D
@Math.divideAbs
D=A
@R14
M=D
@Math.divide$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Math.divide$ret.2)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// not
@SP
A=M
A=A-1
M=!M
// if-goto L6
@SP
AM=M-1
D=M
@Math.divide$L6
D;JNE
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
// neg
@SP
A=M
A=A-1
M=-M
// return
@__VM_RETURN__
0;JMP
// goto L7
@Math.divide$L7
0;JMP
// label L6
(Math.divide$L6)
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
// return
@__VM_RETURN__
0;JMP
// label L7
(Math.divide$L7)
// function Math.divideAbs 1
(Math.divideAbs)
D=0
@SP
A=M
M=D
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
// gt
@CMP_RET_99
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_99)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L8
@SP
AM=M-1
D=M
@Math.divideAbs$L8
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L9
@Math.divideAbs$L9
0;JMP
// label L8
(Math.divideAbs$L8)
// label L9
(Math.divideAbs$L9)
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Math.divideAbs 2
@2
D=A
@R13
M=D
@Math.divideAbs
D=A
@R14
M=D
@Math.divideAbs$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Math.divideAbs$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
// lt
@CMP_RET_100
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_100)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L10
@SP
AM=M-1
D=M
@Math.divideAbs$L10
D;JNE
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// goto L11
@Math.divideAbs$L11
0;JMP
// label L10
(Math.divideAbs$L10)
// push static 0
@Math.0
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop static 0
@SP
AM=M-1
D=M
@Math.0
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// return
@__VM_RETURN__
0;JMP
// label L11
(Math.divideAbs$L11)
// function Math.sqrt 4
(Math.sqrt)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L12
(Math.sqrt$L12)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_101
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_101)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L13
@SP
AM=M-1
D=M
@Math.sqrt$L13
D;JNE
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
// push static 2
@Math.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Math.sqrt$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Math.sqrt$ret.0)
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_102
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_102)
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
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
// gt
@CMP_RET_103
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_103)
// not
@SP
A=M
A=A-1
M=!M
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L14
@SP
AM=M-1
D=M
@Math.sqrt$L14
D;JNE
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L15
@Math.sqrt$L15
0;JMP
// label L14
(Math.sqrt$L14)
// label L15
(Math.sqrt$L15)
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
AM=M-1
D=M
A=A-1
M=M-D
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L12
@Math.sqrt$L12
0;JMP
// label L13
(Math.sqrt$L13)
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
// return
@__VM_RETURN__
0;JMP
// function Math.max 0
(Math.max)
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
// gt
@CMP_RET_104
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_104)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L16
@SP
AM=M-1
D=M
@Math.max$L16
D;JNE
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
@__VM_RETURN__
0;JMP
// goto L17
@Math.max$L17
0;JMP
// label L16
(Math.max$L16)
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
// return
@__VM_RETURN__
0;JMP
// label L17
(Math.max$L17)
// function Math.min 0
(Math.min)
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
// lt
@CMP_RET_105
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_105)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L18
@SP
AM=M-1
D=M
@Math.min$L18
D;JNE
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
@__VM_RETURN__
0;JMP
// goto L19
@Math.min$L19
0;JMP
// label L18
(Math.min$L18)
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
// return
@__VM_RETURN__
0;JMP
// label L19
(Math.min$L19)
// function Math.abs 0
(Math.abs)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_106
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_106)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L20
@SP
AM=M-1
D=M
@Math.abs$L20
D;JNE
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
// neg
@SP
A=M
A=A-1
M=-M
// return
@__VM_RETURN__
0;JMP
// goto L21
@Math.abs$L21
0;JMP
// label L20
(Math.abs$L20)
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
@__VM_RETURN__
0;JMP
// label L21
(Math.abs$L21)
// function Main.main 1
(Main.main)
D=0
@SP
A=M
M=D
@SP
M=M+1
// call PongGame.newInstance 0
@0
D=A
@R13
M=D
@PongGame.newInstance
D=A
@R14
M=D
@Main.main$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Main.main$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// call PongGame.getInstance 0
@0
D=A
@R13
M=D
@PongGame.getInstance
D=A
@R14
M=D
@Main.main$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Main.main$ret.1)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call PongGame.run 1
@1
D=A
@R13
M=D
@PongGame.run
D=A
@R14
M=D
@Main.main$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Main.main$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// call PongGame.dispose 1
@1
D=A
@R13
M=D
@PongGame.dispose
D=A
@R14
M=D
@Main.main$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Main.main$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.new 0
(String.new)
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.alloc 1
@1
D=A
@R13
M=D
@Memory.alloc
D=A
@R14
M=D
@String.new$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.new$ret.0)
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
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
// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_107
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_107)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L0
@SP
AM=M-1
D=M
@String.new$L0
D;JNE
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L1
@String.new$L1
0;JMP
// label L0
(String.new$L0)
// label L1
(String.new$L1)
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
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@String.new$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.new$ret.1)
// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.dispose 0
(String.dispose)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_108
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_108)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L2
@SP
AM=M-1
D=M
@String.dispose$L2
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L3
@String.dispose$L3
0;JMP
// label L2
(String.dispose$L2)
// label L3
(String.dispose$L3)
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Array.dispose 1
@1
D=A
@R13
M=D
@Array.dispose
D=A
@R14
M=D
@String.dispose$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.dispose$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.length 0
(String.length)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.charAt 0
(String.charAt)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// gt
@CMP_RET_109
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_109)
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
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_110
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_110)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@String.charAt$L4
D;JNE
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
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L5
@String.charAt$L5
0;JMP
// label L4
(String.charAt$L4)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// label L5
(String.charAt$L5)
// function String.setCharAt 0
(String.setCharAt)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// gt
@CMP_RET_111
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_111)
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
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_112
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_112)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L6
@SP
AM=M-1
D=M
@String.setCharAt$L6
D;JNE
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L7
@String.setCharAt$L7
0;JMP
// label L6
(String.setCharAt$L6)
// label L7
(String.setCharAt$L7)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.appendChar 0
(String.appendChar)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_113
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_113)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L8
@SP
AM=M-1
D=M
@String.appendChar$L8
D;JNE
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 2
@2
D=A
@THIS
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L9
@String.appendChar$L9
0;JMP
// label L8
(String.appendChar$L8)
// label L9
(String.appendChar$L9)
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.eraseLastChar 0
(String.eraseLastChar)
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_114
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_114)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L10
@SP
AM=M-1
D=M
@String.eraseLastChar$L10
D;JNE
// push this 2
@2
D=A
@THIS
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
AM=M-1
D=M
A=A-1
M=M-D
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L11
@String.eraseLastChar$L11
0;JMP
// label L10
(String.eraseLastChar$L10)
// label L11
(String.eraseLastChar$L11)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.intValue 3
(String.intValue)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_115
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_115)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_116
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_116)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L12
@SP
AM=M-1
D=M
@String.intValue$L12
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L13
@String.intValue$L13
0;JMP
// label L12
(String.intValue$L12)
// label L13
(String.intValue$L13)
// label L14
(String.intValue$L14)
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
// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_117
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_117)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L15
@SP
AM=M-1
D=M
@String.intValue$L15
D;JNE
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
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_118
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_118)
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
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_119
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_119)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L16
@SP
AM=M-1
D=M
@String.intValue$L16
D;JNE
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
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@String.intValue$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.intValue$ret.0)
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
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L17
@String.intValue$L17
0;JMP
// label L16
(String.intValue$L16)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L18
@SP
AM=M-1
D=M
@String.intValue$L18
D;JNE
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
// neg
@SP
A=M
A=A-1
M=-M
// return
@__VM_RETURN__
0;JMP
// goto L19
@String.intValue$L19
0;JMP
// label L18
(String.intValue$L18)
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
// return
@__VM_RETURN__
0;JMP
// label L19
(String.intValue$L19)
// label L17
(String.intValue$L17)
// goto L14
@String.intValue$L14
0;JMP
// label L15
(String.intValue$L15)
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L20
@SP
AM=M-1
D=M
@String.intValue$L20
D;JNE
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
// neg
@SP
A=M
A=A-1
M=-M
// return
@__VM_RETURN__
0;JMP
// goto L21
@String.intValue$L21
0;JMP
// label L20
(String.intValue$L20)
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
// return
@__VM_RETURN__
0;JMP
// label L21
(String.intValue$L21)
// function String.setInt 2
(String.setInt)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_120
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_120)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L22
@SP
AM=M-1
D=M
@String.setInt$L22
D;JNE
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@String.setInt$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// neg
@SP
A=M
A=A-1
M=-M
// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L23
@String.setInt$L23
0;JMP
// label L22
(String.setInt$L22)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_121
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_121)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L24
@SP
AM=M-1
D=M
@String.setInt$L24
D;JNE
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@String.setInt$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.1)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L25
@String.setInt$L25
0;JMP
// label L24
(String.setInt$L24)
// label L25
(String.setInt$L25)
// label L23
(String.setInt$L23)
// label L26
(String.setInt$L26)
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_122
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_122)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L27
@SP
AM=M-1
D=M
@String.setInt$L27
D;JNE
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
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@String.setInt$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.2)
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@String.setInt$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.3)
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
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
// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call String.appendChar 2
@2
D=A
@R13
M=D
@String.appendChar
D=A
@R14
M=D
@String.setInt$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@String.setInt$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.5)
// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L26
@String.setInt$L26
0;JMP
// label L27
(String.setInt$L27)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_123
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_123)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L28
@SP
AM=M-1
D=M
@String.setInt$L28
D;JNE
// push pointer 0
@THIS
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
// push this 2
@2
D=A
@THIS
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
AM=M-1
D=M
A=A-1
M=M-D
// call String.reverse 3
@3
D=A
@R13
M=D
@String.reverse
D=A
@R14
M=D
@String.setInt$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L29
@String.setInt$L29
0;JMP
// label L28
(String.setInt$L28)
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push this 2
@2
D=A
@THIS
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
AM=M-1
D=M
A=A-1
M=M-D
// call String.reverse 3
@3
D=A
@R13
M=D
@String.reverse
D=A
@R14
M=D
@String.setInt$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(String.setInt$ret.7)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L29
(String.setInt$L29)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.reverse 1
(String.reverse)
D=0
@SP
A=M
M=D
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
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_124
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_124)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L30
@SP
AM=M-1
D=M
@String.reverse$L30
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L31
@String.reverse$L31
0;JMP
// label L30
(String.reverse$L30)
// label L31
(String.reverse$L31)
// label L32
(String.reverse$L32)
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
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_125
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_125)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L33
@SP
AM=M-1
D=M
@String.reverse$L33
D;JNE
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
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 2
@2
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
AM=M-1
D=M
A=A-1
M=D+M
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
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 2
@2
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
AM=M-1
D=M
A=A-1
M=M-D
// pop argument 2
@2
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L32
@String.reverse$L32
0;JMP
// label L33
(String.reverse$L33)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.newLine 0
(String.newLine)
// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.backSpace 0
(String.backSpace)
// push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function String.doubleQuote 0
(String.doubleQuote)
// push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.init 2
(Screen.init)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// pop static 0
@SP
AM=M-1
D=M
@Screen.0
M=D
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Array.new 1
@1
D=A
@R13
M=D
@Array.new
D=A
@R14
M=D
@Screen.init$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.init$ret.0)
// pop static 1
@SP
AM=M-1
D=M
@Screen.1
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L0
(Screen.init$L0)
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
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_126
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_126)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L1
@SP
AM=M-1
D=M
@Screen.init$L1
D;JNE
// push static 1
@Screen.1
D=M
@SP
A=M
M=D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L0
@Screen.init$L0
0;JMP
// label L1
(Screen.init$L1)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.clearScreen 1
(Screen.clearScreen)
D=0
@SP
A=M
M=D
@SP
M=M+1
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L2
(Screen.clearScreen$L2)
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
// push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_127
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_127)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L3
@SP
AM=M-1
D=M
@Screen.clearScreen$L3
D;JNE
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
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.clearScreen$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.clearScreen$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L2
@Screen.clearScreen$L2
0;JMP
// label L3
(Screen.clearScreen$L3)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.setColor 0
(Screen.setColor)
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
// pop static 0
@SP
AM=M-1
D=M
@Screen.0
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.drawPixel 4
(Screen.drawPixel)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Screen.drawPixel$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.0)
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 16384
@16384
D=A
@SP
A=M
M=D
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
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawPixel$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.1)
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push local 3
@3
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawPixel$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.2)
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Screen.drawPixel$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.3)
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L4
@SP
AM=M-1
D=M
@Screen.drawPixel$L4
D;JNE
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
// push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
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
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Screen.drawPixel$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.4)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawPixel$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.5)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L5
@Screen.drawPixel$L5
0;JMP
// label L4
(Screen.drawPixel$L4)
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
// push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
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
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Screen.drawPixel$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.6)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawPixel$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawPixel$ret.7)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L5
(Screen.drawPixel$L5)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.drawLine 6
(Screen.drawLine)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_128
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_128)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L6
@SP
AM=M-1
D=M
@Screen.drawLine$L6
D;JNE
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
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
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
// call Screen.drawHorizontalLine 3
@3
D=A
@R13
M=D
@Screen.drawHorizontalLine
D=A
@R14
M=D
@Screen.drawLine$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawLine$ret.0)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// goto L7
@Screen.drawLine$L7
0;JMP
// label L6
(Screen.drawLine$L6)
// label L7
(Screen.drawLine$L7)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
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
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@Screen.drawLine$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawLine$ret.1)
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
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
AM=M-1
D=M
A=A-1
M=M-D
// call Math.abs 1
@1
D=A
@R13
M=D
@Math.abs
D=A
@R14
M=D
@Screen.drawLine$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawLine$ret.2)
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_129
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_129)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L8
@SP
AM=M-1
D=M
@Screen.drawLine$L8
D;JNE
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
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop argument 2
@2
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop argument 3
@3
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L9
@Screen.drawLine$L9
0;JMP
// label L8
(Screen.drawLine$L8)
// label L9
(Screen.drawLine$L9)
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
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
// gt
@CMP_RET_130
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_130)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L10
@SP
AM=M-1
D=M
@Screen.drawLine$L10
D;JNE
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L11
@Screen.drawLine$L11
0;JMP
// label L10
(Screen.drawLine$L10)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L11
(Screen.drawLine$L11)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L12
(Screen.drawLine$L12)
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
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_131
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_131)
// not
@SP
A=M
A=A-1
M=!M
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
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_132
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_132)
// not
@SP
A=M
A=A-1
M=!M
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L13
@SP
AM=M-1
D=M
@Screen.drawLine$L13
D;JNE
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L14
@SP
AM=M-1
D=M
@Screen.drawLine$L14
D;JNE
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawPixel 2
@2
D=A
@R13
M=D
@Screen.drawPixel
D=A
@R14
M=D
@Screen.drawLine$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawLine$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L15
@Screen.drawLine$L15
0;JMP
// label L14
(Screen.drawLine$L14)
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// call Screen.drawPixel 2
@2
D=A
@R13
M=D
@Screen.drawPixel
D=A
@R14
M=D
@Screen.drawLine$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawLine$ret.4)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L15
(Screen.drawLine$L15)
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_133
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_133)
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_134
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_134)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L16
@SP
AM=M-1
D=M
@Screen.drawLine$L16
D;JNE
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 3
@3
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L17
@Screen.drawLine$L17
0;JMP
// label L16
(Screen.drawLine$L16)
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L17
(Screen.drawLine$L17)
// goto L12
@Screen.drawLine$L12
0;JMP
// label L13
(Screen.drawLine$L13)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.drawHorizontalLine 7
(Screen.drawHorizontalLine)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// gt
@CMP_RET_135
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_135)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L18
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L18
D;JNE
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
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L19
@Screen.drawHorizontalLine$L19
0;JMP
// label L18
(Screen.drawHorizontalLine$L18)
// label L19
(Screen.drawHorizontalLine$L19)
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
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.0)
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.1)
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push local 4
@4
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.2)
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop local 2
@2
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.divide 2
@2
D=A
@R13
M=D
@Math.divide
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.3)
// pop local 4
@4
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.4
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.4)
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// push local 4
@4
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
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.5
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.5)
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop local 3
@3
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L20
(Screen.drawHorizontalLine$L20)
// push local 5
@5
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
// gt
@CMP_RET_136
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_136)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L21
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L21
D;JNE
// push local 5
@5
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
// eq
@CMP_RET_137
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_137)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L22
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L22
D;JNE
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_138
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_138)
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_139
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_139)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L24
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L24
D;JNE
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.6
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.6)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push local 5
@5
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L25
@Screen.drawHorizontalLine$L25
0;JMP
// label L24
(Screen.drawHorizontalLine$L24)
// push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L26
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L26
D;JNE
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.7
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.7)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.8
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.8)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L27
@Screen.drawHorizontalLine$L27
0;JMP
// label L26
(Screen.drawHorizontalLine$L26)
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.9
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.9)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.10
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.10)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L27
(Screen.drawHorizontalLine$L27)
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_140
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_140)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L28
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L28
D;JNE
// push local 6
@6
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L29
@Screen.drawHorizontalLine$L29
0;JMP
// label L28
(Screen.drawHorizontalLine$L28)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 5
@5
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L29
(Screen.drawHorizontalLine$L29)
// label L25
(Screen.drawHorizontalLine$L25)
// goto L23
@Screen.drawHorizontalLine$L23
0;JMP
// label L22
(Screen.drawHorizontalLine$L22)
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@CMP_RET_141
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_eq__
0;JMP
(CMP_RET_141)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L30
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L30
D;JNE
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.11
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.11)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// push local 5
@5
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L31
@Screen.drawHorizontalLine$L31
0;JMP
// label L30
(Screen.drawHorizontalLine$L30)
// push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// if-goto L32
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L32
D;JNE
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.12
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.12)
// or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.13
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.13)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// goto L33
@Screen.drawHorizontalLine$L33
0;JMP
// label L32
(Screen.drawHorizontalLine$L32)
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// not
@SP
A=M
A=A-1
M=!M
// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Memory.peek 1
@1
D=A
@R13
M=D
@Memory.peek
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.14
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.14)
// and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// call Memory.poke 2
@2
D=A
@R13
M=D
@Memory.poke
D=A
@R14
M=D
@Screen.drawHorizontalLine$ret.15
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawHorizontalLine$ret.15)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
// label L33
(Screen.drawHorizontalLine$L33)
// push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@CMP_RET_142
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_lt__
0;JMP
(CMP_RET_142)
// not
@SP
A=M
A=A-1
M=!M
// if-goto L34
@SP
AM=M-1
D=M
@Screen.drawHorizontalLine$L34
D;JNE
// push local 6
@6
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L35
@Screen.drawHorizontalLine$L35
0;JMP
// label L34
(Screen.drawHorizontalLine$L34)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 6
@6
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 5
@5
D=A
@LCL
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 5
@5
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L35
(Screen.drawHorizontalLine$L35)
// label L31
(Screen.drawHorizontalLine$L31)
// label L23
(Screen.drawHorizontalLine$L23)
// goto L20
@Screen.drawHorizontalLine$L20
0;JMP
// label L21
(Screen.drawHorizontalLine$L21)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.drawRectangle 2
(Screen.drawRectangle)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
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
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.min 2
@2
D=A
@R13
M=D
@Math.min
D=A
@R14
M=D
@Screen.drawRectangle$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawRectangle$ret.0)
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.max 2
@2
D=A
@R13
M=D
@Math.max
D=A
@R14
M=D
@Screen.drawRectangle$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawRectangle$ret.1)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L36
(Screen.drawRectangle$L36)
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
// gt
@CMP_RET_143
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_143)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L37
@SP
AM=M-1
D=M
@Screen.drawRectangle$L37
D;JNE
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
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
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
// call Screen.drawLine 4
@4
D=A
@R13
M=D
@Screen.drawLine
D=A
@R14
M=D
@Screen.drawRectangle$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawRectangle$ret.2)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L36
@Screen.drawRectangle$L36
0;JMP
// label L37
(Screen.drawRectangle$L37)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
// function Screen.drawCircle 2
(Screen.drawCircle)
D=0
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// neg
@SP
A=M
A=A-1
M=-M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label L38
(Screen.drawCircle$L38)
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
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// gt
@CMP_RET_144
D=A
@R15
M=D
@SP
AM=M-1
D=M
A=A-1
D=M-D
@__VM_gt__
0;JMP
(CMP_RET_144)
// not
@SP
A=M
A=A-1
M=!M
// not
@SP
A=M
A=A-1
M=!M
// if-goto L39
@SP
AM=M-1
D=M
@Screen.drawCircle$L39
D;JNE
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawCircle$ret.0
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawCircle$ret.0)
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
// call Math.multiply 2
@2
D=A
@R13
M=D
@Math.multiply
D=A
@R14
M=D
@Screen.drawCircle$ret.1
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawCircle$ret.1)
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// call Math.sqrt 1
@1
D=A
@R13
M=D
@Math.sqrt
D=A
@R14
M=D
@Screen.drawCircle$ret.2
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawCircle$ret.2)
// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
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
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
AM=M-1
D=M
A=A-1
M=D+M
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
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// call Screen.drawLine 4
@4
D=A
@R13
M=D
@Screen.drawLine
D=A
@R14
M=D
@Screen.drawCircle$ret.3
D=A
@R15
M=D
@__VM_CALL__
0;JMP
(Screen.drawCircle$ret.3)
// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D
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
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto L38
@Screen.drawCircle$L38
0;JMP
// label L39
(Screen.drawCircle$L39)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@__VM_RETURN__
0;JMP
(END)
@END
0;JMP
(__VM_RETURN__)
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M
D=D+1
@SP
M=D
@R13
AM=M-1
D=M
@THAT
M=D
@R13
AM=M-1
D=M
@THIS
M=D
@R13
AM=M-1
D=M
@ARG
M=D
@R13
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
(__VM_CALL__)
@R15
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@R13
D=D-M
@ARG
M=D
@SP
D=M
@LCL
M=D
@R14
A=M
0;JMP
(__VM_eq__)
@__VM_eq_TRUE__
D;JEQ
@SP
A=M
A=A-1
M=0
@__VM_eq_END__
0;JMP
(__VM_eq_TRUE__)
@SP
A=M
A=A-1
M=-1
(__VM_eq_END__)
@R15
A=M
0;JMP
(__VM_gt__)
@__VM_gt_TRUE__
D;JGT
@SP
A=M
A=A-1
M=0
@__VM_gt_END__
0;JMP
(__VM_gt_TRUE__)
@SP
A=M
A=A-1
M=-1
(__VM_gt_END__)
@R15
A=M
0;JMP
(__VM_lt__)
@__VM_lt_TRUE__
D;JLT
@SP
A=M
A=A-1
M=0
@__VM_lt_END__
0;JMP
(__VM_lt_TRUE__)
@SP
A=M
A=A-1
M=-1
(__VM_lt_END__)
@R15
A=M
0;JMP
