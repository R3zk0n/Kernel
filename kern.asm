;;kernel.asm

bits 32        ; nasm direct 32 != 64/21

section .text

global start
extern kmain     ;Main kernel function in C.

start:
  cli     ;Blocks interruptions,
  mov esp, stack_space ;Setting the stack pointer
  call kmain
  hlt      ; halt the cpu,


section .bss
resb 8192 ;8KB for Stack,
stack_space:
