// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
    @KBD
    D=M // 키보드 입력값을 받는다.

    @BLACK
    D;JGT // 입력값을 받아온 D가 D > 0 일경우 (BLACK)으로 점프

    @WHITE
    D;JEQ // 입력값을 받아온 D가 입력받지 못한경우 (D == 0) (WHITE)로 점프

    @LOOP
    0;JMP

(BLACK) //스크린을 검은색으로 처리
    @SCREEN
    M=-1 // 0xFFFF

    @LOOP
    0;JMP

(WHITE) // 스크린을 흰색으로 처리
    @SCREEN
    M=0

    @LOOP
    0;JMP