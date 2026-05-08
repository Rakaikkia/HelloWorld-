section .data
            msg db "Hello, world!", 10, 13, 0
            msg_len equ $ - msg - 1
section .bss
section .text
            global main

prints:
            push rbp
            mov rbp, rsp
            mov rax, 1
            mov rdi, 1
            syscall
            mov rsp, rbp
            pop rbp
            ret
main:
            mov rsi, msg
            mov rdx, msg_len
            call prints
            mov rax, 60
            xor rdi, rdi
            syscall
section .note.GNU-stack noalloc noexec nowrite progbits
