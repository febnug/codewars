; https://www.codewars.com/kata/514b92a657cdc65150000006/train/nasm

; note : just all tests passed

global mul3or5

section .text

; <----- unsigned mul3or5(int num) ----->
mul3or5:
        lea     eax, [rdi-1]  ; arg
        xor     r8d, r8d  ; n
        or      edi, 2  ; using "or" instruction for comparing value, cool right ?
        jle     ._done
.xxx_69:                    ; bzzbzzbbzbzbzbzzzbbzzz stuff (x_x")
        imul    edx, eax, 0xAAAAAAAB 
        add     edx, 0x2AAAAAAA
        cmp     edx, 0x55555554
        jbe     ._add_with_r8
        imul    edx, eax, 0xCCCCCCCD
        add     edx, 0x19999999
        cmp     edx, 0x33333332
        ja      ._substract_then_compare
._add_with_r8:
        add     r8d, eax
._substract_then_compare:
        dec     eax
        test    eax, eax
        jne     .xxx_69
._done:
        xchg    r8d, eax  ; using xchg instruction instead mov instruction
        ret

; ---------> end of mul3or5 <---------
