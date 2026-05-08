extern printf
section .data
            fmt db "Hello, world!", 10, 13, 0
section .bss
section .text
            global main
main:
            xor rax, rax
            mov rdi, fmt
            call printf

            mov rax, 60
            xor rdi, rdi
            syscall
section .note.GNU-stack noalloc noexec nowrite progbits
