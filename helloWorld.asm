section .data
    num1   dd 5         ;define num1 as 5
    num2   dd 3         ;define num2 as 3
    result dd 0         ;define rersult as 0

section .text
    global _start

_start:
    mov eax, [num1]     ; load num1 (5) into eax
    add eax, [num2]     ; add num2 (3) to eax
    mov [result], eax   ; store result (8) into memory

    mov ebx, [result]   ; load result into ebx
    sub ebx, 2          ; subtract 2 from result (6)
    mov [result], ebx   ; store updated result

    ; exit syscall
    mov eax, 1
    xor ebx, ebx
    int 0x80

