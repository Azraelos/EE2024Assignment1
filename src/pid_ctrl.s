 	.syntax unified
 	.cpu cortex-m3
 	.thumb
 	.align 2
 	.global	pid_ctrl
 	.thumb_func
@  EE2024 Assignment 1: pid_ctrl(int en, int st) assembly language function
@  CK Tham, ECE, NUS, 2017
pid_ctrl:
@ PUSH the registers you modify, e.g. R2, R3, R4 and R5*, to the stack
@ * this is just an example; the actual registers you use may be different
@ (this will be explained in lectures)
	PUSH {R2-R10}

@  Write PID controller function in assembly language here
@  Currently, nothing is done and this function returns straightaway
    @ R0 = en
    @ R1 = st
    LDR R2, Kp;
    LDR R3, Ki;
    LDR R4, Kd;
    LDR R5, UpperBound;
    LDR R6, LowerBound;
    LDR R7, =sn;
    LDR R8, =enOld;
    @ R9 = un

@ 	If start, initialise sn to 0
    CMP R1, #1;
    IT EQ;
    SUBEQ R7, R7, R7;

@ 	If start, initialise enOld to 0
    IT EQ;
    SUBEQ R8, R8, R8;

@ 	sn = sn + en
    ADD R7, R7, R0;
    STR R7, [R7];

@	If sn exceeds upper boundary, set to upper boundary
    CMP R7, R5
    ITT GT;
    SUBGT R7, R7, R7;
    ADDGT R7, R7, R5;
    @BGT snUB;
@snUB:
   @ LDRGT R7, R5;

@	If sn exceeds lower boundary, set to lower boundary
    CMP R7, R6;
    ITT LT;
    SUBLT R7, R7, R7;
    ADDLT R7, R7, R6;
@snLB:
    @STR R7, R6;

@	un = Kp*en + Ki*sn + Kd*(en-enOld)
    MUL R9, R2, R0;
    MLA R9, R3, R7, R9;
    SUB R10, R0, R8;
    MLA R9, R4, R10, R9;

@	enOld = en
    STR R0, [R8];

    MOV R0, R9;

@ POP the registers you modify, e.g. R2, R3, R4 and R5*, from the stack
@ * this is just an example; the actual registers you use may be different
@ (this will be explained in lectures)
	POP	{R2-R10}
 	BX	LR

Kp:
    .word 25
Ki:
    .word 10
Kd:
    .word 80
UpperBound:
    .word 950
LowerBound:
    .word -950

    .lcomm sn 4
    .lcomm enOld 4
